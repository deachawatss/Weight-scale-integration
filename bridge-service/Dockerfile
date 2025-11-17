# ============================================================================
# Dockerfile - PK Bridge Service (.NET 8 WebSocket Weight Scale Service)
# ============================================================================
# Multi-stage build for optimized production deployment
# Usage:
#   docker build -t partialpicking-bridge:latest .
#   docker run -d --name bridge-service -p 5000:5000 partialpicking-bridge:latest
# ============================================================================

# Build Stage
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

# Copy csproj and restore dependencies
COPY ["Weight-scale/bridge-service/bridge-service.csproj", "Weight-scale/bridge-service/"]
RUN dotnet restore "Weight-scale/bridge-service/bridge-service.csproj"

# Copy the rest of the source files
COPY ["Weight-scale/bridge-service/", "Weight-scale/bridge-service/"]

# Build and publish the application
WORKDIR "/src/Weight-scale/bridge-service"
RUN dotnet publish "bridge-service.csproj" \
    -c Release \
    -o /app/publish \
    --no-restore \
    --runtime linux-x64 \
    --self-contained false \
    /p:PublishTrimmed=false

# Runtime Stage
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app

# Create non-root user for security
RUN adduser --disabled-password --gecos '' bridgeuser && chown -R bridgeuser /app
USER bridgeuser

# Copy published files
COPY --from=build /app/publish .

# Environment variables
ENV ASPNETCORE_URLS=http://+:5000
ENV ASPNETCORE_ENVIRONMENT=Production
ENV DOTNET_PRINT_TELEMETRY_MESSAGE=false

# Expose port
EXPOSE 5000

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=10s --retries=3 \
    CMD wget --no-verbose --tries=1 --spider http://localhost:5000/health || exit 1

# Run the application
ENTRYPOINT ["dotnet", "pk-bridge-service.dll"]
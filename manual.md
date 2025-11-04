MT-SICS Interface Command
for Weigh Modules
Reference Manual
11781363L  12/21/2018 11:55 AM  - Schema ST4 PDF engine -  Layout by Victor Mahler
MT-SICS Interface Command
Table of Contents
1 Configuration tool
2 Introduction
2.1 Command formats.......................................................................................................
2.1.1 Language conventions...................................................................................
2.1.2 Response formats.........................................................................................
2.1.2.1 Format of responses with weight value......................................................
2.1.2.2 Format of responses without weight value..................................................
2.1.3 Error messages.............................................................................................
2.1.3.1 Command-specific error messages...........................................................
2.1.3.2 General error messages...........................................................................
2.1.4 Specific error messages on weight response....................................................
2.2 Tips for programmers...................................................................................................
3 Commands and Responses
- @ – Cancel.................................................................................................................
- A01 – Percent weighing: Reference in %........................................................................
- A02 – Sample identification for samples in weighing application.......................................
- A03 – Sample name for samples in weighing application.................................................
- A10 – Nominal, +Tolerance, -Tolerance.........................................................................
- A30 – Internal loads.....................................................................................................
- C – Cancel all commands.............................................................................................
- C0 – Adjustment setting................................................................................................
- C1 – Start adjustment according to current settings..........................................................
- C2 – Start adjustment with external weight......................................................................
- C3 – Start adjustment with internal weight......................................................................
- C4 – Standard / initial adjustment..................................................................................
- C5 – Enabling/disabling step control..............................................................................
- C6 – Customer linearization and sensitivity adjustment....................................................
- C7 – Customer standard calibration...............................................................................
- C8 – Sensitivity adjustment...........................................................................................
- C9 – Scale placement sensitivity adjustment...................................................................
- COM – Parameters of the serial interfaces.......................................................................
- D – Write text to display................................................................................................
- DAT – Date..................................................................................................................
- DIN – Configuration for digital inputs..............................................................................
- DIS – Digital input status..............................................................................................
- DOS – Digital output status...........................................................................................
- DOT – Configuration for digital outputs...........................................................................
- DOTC – Configurable digital outputs – Weight monitor.....................................................
- DW – Show weight......................................................................................................
- E01 – Current system error state....................................................................................
- E02 – Weighing device errors and warnings...................................................................
- E03 – Current system errors and warnings.....................................................................
- F01 – Automatic prefilling configuration..........................................................................
- F02 – Material filling duration configuration....................................................................
- F03 – Automatic refilling configuration...........................................................................
- F04 – Target weight configuration..................................................................................
- F05 – Optimization function configuration.......................................................................
- F06 – Weight monitor function configuration...................................................................
- F07 – Time monitor function configuration......................................................................
- F08 – Filling statistics..................................................................................................
- F09 – Filling application status......................................................................................
- F10 – Control filling.....................................................................................................
- F11 – Report filling state...............................................................................................
MT-SICS Interface Command Table of Contents
F12 – Filling stability criteria configuration......................................................................
F13 – Filling phase configuration...................................................................................
F14 – Automatic tare configuration................................................................................
F15 – Digital output function configuration......................................................................
F16 – Emptying function configuration...........................................................................
FCUT – Filter characteristics (cut-off frequency)...............................................................
FSET – Reset all settings to factory defaults.....................................................................
I0 – Currently available MT-SICS commands...................................................................
I1 – MT-SICS level and level versions.............................................................................
I2 – Device data (Type and capacity).............................................................................
I3 – Software version number and type definition number.................................................
I4 – Serial number.......................................................................................................
I5 – Software material number.......................................................................................
I10 – Device identification.............................................................................................
I11 – Model designation...............................................................................................
I14 – Device information..............................................................................................
I15 – Uptime...............................................................................................................
I16 – Date of next service.............................................................................................
I21 – Revision of assortment type tolerances..................................................................
I26 – Operating mode after restart..................................................................................
I27 – Change history from parameter settings.................................................................
I29 – Filter configuration...............................................................................................
I32 – Voltage monitoring..............................................................................................
I43 – Selectable units for host unit.................................................................................
I44 – Selectable units for display unit.............................................................................
I45 – Selectable environment filter settings......................................................................
I46 – Selectable weighing modes..................................................................................
I48 – Initial zero range.................................................................................................
I50 – Remaining weighing ranges.................................................................................
I51 – Power-on time....................................................................................................
I52 – Auto zero activation settings.................................................................................
I53 – Ipv4 runtime network configuration information.......................................................
I54 – Adjustment loads................................................................................................
I55 – Menu version......................................................................................................
I56 – Scaled weight ramp value....................................................................................
I59 – Get initial zero information....................................................................................
I62 – Timeout..............................................................................................................
I65 – Total operating time.............................................................................................
I66 – Total load weighed..............................................................................................
I67 – Total number of weighings...................................................................................
I69 – Service provider address ASCII..............................................................................
I71 – One time adjustment status..................................................................................
I73 – Sign Off..............................................................................................................
I74 – GEO code at point of calibration - HighRes.............................................................
I75 – GEO code at point of use - HighRes.......................................................................
I76 – Total number of voltage exceeds...........................................................................
I77 – Total number of load cycles..................................................................................
I78 – Zero deviation.....................................................................................................
I79 – Total number of zero deviation exceeds.................................................................
I80 – Total number of temperature exceeds.....................................................................
I81 – Temperature gradient...........................................................................................
I82 – Total number of temperature gradient exceeds........................................................
I83 – Software identification..........................................................................................
K – Keys control..........................................................................................................
LST – Current user settings............................................................................................
M01 – Weighing mode.................................................................................................
M02 – Environment condition.......................................................................................
M03 – Auto zero function..............................................................................................
M17 – ProFACT: Single time criteria...............................................................................
M18 – ProFACT/FACT: Temperature criterion....................................................................
M19 – Adjustment weight.............................................................................................
M20 – Test weight.......................................................................................................
M21 – Unit.................................................................................................................
M22 – Custom unit definitions.......................................................................................
M23 – Readability, 1d/xd.............................................................................................
M27 – Adjustment history.............................................................................................
M28 – Temperature value.............................................................................................
M29 – Weighing value release......................................................................................
M31 – Operating mode after restart................................................................................
M32 – ProFACT: Time criteria........................................................................................
M33 – ProFACT: Day of the week...................................................................................
M34 – MinWeigh: Method............................................................................................
M35 – Zeroing mode at startup.....................................................................................
M38 – Selective parameter reset....................................................................................
M39 – SmartTrac: Graphic............................................................................................
M43 – Custom unit......................................................................................................
M44 – Command executed after startup response...........................................................
M45 – Electrical termination of RS422/ RS485 data lines.................................................
M47 – Frequently changed test weight settings................................................................
M48 – Infrequently changed test weight settings..............................................................
M49 – Permanent tare mode.........................................................................................
M66 – GWP: Certified test weight settings.......................................................................
M67 – Timeout............................................................................................................
M68 – Behavior of serial interfaces................................................................................
M69 – Ipv4 network configuration mode........................................................................
M70 – Ipv4 host address and netmask for static configuration..........................................
M71 – Ipv4 default gateway address.............................................................................
M72 – Ipv4 DNS server address....................................................................................
M89 – Interface command set.......................................................................................
M103 – RS422/485 driver mode..................................................................................
M109 – IPv4 device managed network configuration setting.............................................
M110 – Change display resolution................................................................................
MOD – Various user modes..........................................................................................
MONH – Monitor on interface........................................................................................
NID – Node Identification (for network protocols).............................................................
NID2 – Device node ID.................................................................................................
PROT – Protocol mode.................................................................................................
PW – Piece counting: Piece weight................................................................................
PWR – Switch on / Switch off........................................................................................
R01 – Restart device....................................................................................................
RDB – Readability........................................................................................................
S – Stable weight value................................................................................................
SC – Send stable weight value or dynamic value after timeout...........................................
SI – Weight value immediately......................................................................................
SIC1 – Weight value with CRC16 immediately.................................................................
SIC2 – HighRes weight value with CRC16 immediately....................................................
SIR – Weight value immediately and repeat....................................................................
SIRU – Weight value in display unit immediately and repeat.............................................
SIS – Send netweight value with actual unit and weighing status.......................................
SIU – Weight value in display unit immediately...............................................................
SIUM – Weight value in display unit and MinWeigh information immediately......................
SNR – Send stable weight value and repeat on stable weight change.................................
change....................................................................................................................... SNRU – Send stable weight value with currently displayed unit and repeat on stable weight
MT-SICS Interface Command Table of Contents
- SR – Send stable weight value and repeat on any weight change......................................
- change....................................................................................................................... SRU – Send stable weight value with currently displayed unit and repeat on any weight
- ST – Stable weight value on pressing (Transfer) key........................................................
- SU – Stable weight value in display unit.........................................................................
- SUM – Stable weight value in display unit and MinWeigh information................................
- T – Tare......................................................................................................................
- TA – Tare weight value.................................................................................................
- TAC – Clear tare weight value........................................................................................
- TC – Tare or tare immediately after timeout.....................................................................
- TI – Tare immediately...................................................................................................
- TIM – Time..................................................................................................................
- TST0 – Query/set test function settings............................................................................
- TST1 – Test according to current settings........................................................................
- TST2 – Test with external weight....................................................................................
- TST3 – Test with internal weight.....................................................................................
- TST5 – Module test with built-in weights (scale placement sensitivity test)..........................
- UPD – Update rate of SIR and SIRU output on the host interface.........................................
- USTB – User stability criteria..........................................................................................
- WMCF – Configuration of the weight monitoring functions.................................................
- Z – Zero......................................................................................................................
- ZC – Zero or zero immediately after timeout.....................................................................
- ZI – Zero immediately...................................................................................................
4 What if...?
5 Appendix
5.1 Framed protocol..........................................................................................................
Index
MT-SICS Interface Command Configuration tool​​ 5

1 Configuration tool
METTLER TOLEDO recommends APW-Link™ as a configuration tool
APW-Link™ is a Windows based software.
Features
Configuration Tree for easy commissioning and parameterization
Multiple, selectable languages
Terminal with free configurable buttons
Automatic baud rate search
Connection over RS232, USB to RS232 converter and Ethernet TCP/IP possible
Weight Display with Zeroing and Taring button
Graph Display with zoom function and x-y Data
Backup / Restore feature
Supports all APW weigh modules
Supported operating systems: Windows XP - Professional - SP3; Windows 7 - Professional / Enterprise /
Ultimate; Windows 8 / 8.1 – Professional / Enterprise; Windows Server 2003 / 2010
Download
http://www.mt.com/apw-link APW-Link™ is free of charge but requires a registration before download.
6 Introduction​​ MT-SICS Interface Command

2 Introduction
Real weighing applications have very wide-ranging requirements which can at some cases necessitate
weighing up to several hundred tons and at some applications the demanded readability could be very fine,
sometimes as low as one micro-gram. METTLER TOLEDO offers an extensive range of weighing devices in
order to fulfill these versatile requirements. These weighing devices provide a simple interface for a quick
integration with control systems. This integration is further facilitated by standardized commands which enable
certain functions and operations. Throughout this document, the term "weigh module" is used to cover also the
term "(weighing) bridge" which is operated without any terminal. The term "balance" denotes a weighing device
in combination with a terminal.
Version number of the MT-SICS
Each level of the MT-SICS has its own version number which can be requested with the command "I1" from
level 0. You can use the command "I1" via the interface to request the MT-SICS level and MT-SICS versions
implemented on your weigh module.
Data interface at weigh module
Settings of the interface such as baud rate, number of data bits, parity, handshake protocols and connector pin
assignment are described in the Reference Manual of the optional interface and the peripheral instrument or
cable in question.
Data exchange with the weigh module
Each command received by the balance via the data interface is acknowledged by a response of the weigh
module or balance to the initial device.
Commands and balance responses are data strings with a fixed format, and will be described in detail in the
commands.
The existing commands that are available can be called up using the [I0 } Page  85 ] command.
Note
Some of the commands work only via the built-in RS232 interface.
2.1 Command formats.......................................................................................................
Commands sent to the weigh module/balance comprise one or more characters of the ASCII character set.
Here, the following must be noted:
Enter commands only in uppercase. Nevertheless, units have to be capitalized properly.
V The possible parameters of the command must be separated from one another and from the
command name by a space (ASCII 32 dec.).
"text" The possible input for "text" is a sequence of characters (8-bit ASCII character set from 32 dec.
to 255 dec.).
..CR LF Each command must be closed by CRLF (ASCII 13 dec., 10 dec.).
The characters CRLF, which can be inputted using the Enter or Return key of most entry keypads,
are not listed in this description every time, but it is essential they be included for communi-
cation with the weigh module/balance.
2.1.1 Language conventions...................................................................................
Throughout this manual, the following conventions are used for command and response syntax:
< > Triangle brackets indicate that you must specify a value for the enclosed parameter. The
brackets are not sent with the command string.
[ ] Square brackets indicate that the enclosed expression is optional and can be omitted. The
brackets are not sent with the command string.
a..b Intervals or ranges are represented using the "dot-dot" notation indicating the set of numbers
from a to b including a and b.
Ü Commands sent to the weigh module/balance.
MT-SICS Interface Command Introduction​​ 7

Û Response of the weigh module/balance.
Example
Command to balance which writes Hello into the balance display:
Ü DV"Hello" The quotation marks " " must be inserted in the entry
Û DVA Command executed successfully
The command terminator CRLF is not shown.
8 Introduction​​ MT-SICS Interface Command

2.1.2 Response formats.........................................................................................
All responses sent by the weigh module/balance to the transmitter to acknowledge the received command have
one of the following formats:
Response with weight value
Response without weight value
Error message
2.1.2.1 Format of responses with weight value......................................................
Syntax
A general description of the response with weight value is the following.
<ID> V <Status> V <WeightValue> V <Unit> CR LF
1-
characters
1
character
10
characters
1-5 characters
Parameters
Name Type Values Meaning
<ID> String Response identification, refers to the invoking
command
V Blank Space (ASCII 32 dec.)
<Status> Character S S table weight value
M Stable weight value, but below minimal weight
([SIUM } Page  213 ] and [SUM } Page  224 ] only)
D Unstable ("D" for D ynamic) weight value
N Unstable weight value, below minimal weight
([SIUM } Page  213 ] and [SUM } Page  224 ] only)
<WeightValue> Float Weighing result; shown as a number with 10
characters (after a blank/space!), including
decimal point, and minus sign (–) directly in front
of the first digit if the value is negative. The weight
value appears right aligned. Preceding zeros are
not shown except for the zero to the left of the
decimal point.
With METTLER TOLEDO DeltaRange balances,
outside the fine range the last decimal place is
shown as a space.
<Unit> String Weight unit as actually set under host unit
CR Byte Carriage return (ASCII 13 dec.)
LF Byte Line feed (ASCII 10 dec.)
Examples
Response with stable weight value of 14.256 g:
Ü S Request a stable weight value.
Û SVSVVVVV14.256Vg
MT-SICS Interface Command Introduction​​ 9

2.1.2.2 Format of responses without weight value..................................................
Syntax
A general description of the response without weight value is the following:
<ID> V <Status> V Parameters... CR LF
1-
characters
1
character
Parameters
Name Type Values Meaning
<ID> String Response identification, refers to the invoking
command
V Blank Space (ASCII 32 dec.)
<Status> Character A Command executed successfully
B Command not yet terminated, additional responses
following
Parameters... Command-dependent response code
CR Byte Carriage return (ASCII 13 dec.)
LF Byte Line feed (ASCII 10 dec.)
Examples
Set the update rate to 20 weight values per second:
Ü UPDV^20
Û UPDVA Command executed successfully.
Query the actual update rate:
Ü UPD
Û UPDVAV18.3 Update rate is set to 18.3 values per second.
10 Introduction​​ MT-SICS Interface Command

2.1.3 Error messages.............................................................................................
2.1.3.1 Command-specific error messages...........................................................
Syntax
A general description of the response without weight value is the following:
<ID> V <Status> CR LF
1-
characters
1
character
Parameters
Name Type Values Meaning
<ID> String Response identification, refers to the invoking
command
V Blank Space (ASCII 32 dec.)
<Status> Character + Weigh module or balance is in overload range
(weighing range exceeded)
Weigh module or balance is in underload range
(e.g. weighing pan is not in place)
L Logical error (e.g. parameter not allowed)
I Internal error (e.g. balance not ready yet)
CR Byte Carriage return (ASCII 13 dec.)
LF Byte Line feed (ASCII 10 dec.)
Examples
Trial to set the update rate to 20 weight values per second:
Ü UPDV^290 Update rate accidentally set to 290.
Û UPDVL Command not executed successfully; parameters is
outside valid range.
Response while weigh module or balance is in overload range:
Ü SI Request a weight value immediately.
Û SV+ Overload; no weight value available.
2.1.3.2 General error messages...........................................................................
Syntax
There are three different error messages:
<ID> CR LF
2 characters
MT-SICS Interface Command Introduction​​ 11

Parameters
Name Type Values Meaning
<ID> String ES Syntax error:
The weigh module/balance has not recognized the
received command or the command is not allowed
ET Transmission error:
The weigh module/balance has received a "faulty"
command, e.g. owing to a parity error or interface
break
EL Logical error:
The weigh module/balance can not execute the
received command
CR Byte Carriage return (ASCII 13 dec.)
LF Byte Line feed (ASCII 10 dec.)
Example
Trial to set the update rate to 20 weight values per second:
Ü UPDV^290 Update accidentally set to 290.
Û UPDVL Command not executed succesfully, parameters are
outside valid range.
Response while weigh module is in overload:
Ü SI Send current weight value.
Û SV+ Overload; no weigh value available
12 Introduction​​ MT-SICS Interface Command

2.1.4 Specific error messages on weight response....................................................
Description
If any error is detected in the system, it is no longer possible to get a weight value. In this case the weight value
is overwritten with an error number and trigger code.
We recommend contacting your METTLER TOLEDO representative if any error occurs.
Syntax
The error message has the same format as the weight value (10 characters) and starts always with SVSV.
SVS V V..V Error V <ErrorNumber> <ErrorTrigger> CR LF
1-2 spaces 1-2 characters 1 character
Total 10 characters (same as weight value) - Filled with spaces on the beginning
Parameters
Name Type Values Meaning
<ErrorNumber> Integer 1 Boot error
2 Brand error
3 Checksum error
9 Option fail
10 EEPROM error
11 Device mismatch
12 Hot plug out
14 Weight module / electronic mismatch
15 Adjustment needed
<ErrorTrigger> String b Error from electronics (weigh module)
t Error from terminal
CR Byte Carriage return (ASCII 13 dec.)
LF Byte Line feed (ASCII 10 dec.)
Examples
Ü SI Send current weight value.
Û SVSVVErrorV10b EERPOM error on the electronic unit occurred! Check if
every thing is connected correctly. If any error occurs
after power restart, contact your METTLER TOLEDO
representative.
Ü SIR Send current weight value at intervals.
Û SVSVVVErrorV1t Boot error on the terminal occurred! If any error occurs
after power restart, contact your METTLER TOLEDO
representative.
MT-SICS Interface Command Introduction​​ 13

2.2 Tips for programmers...................................................................................................
Overview of command of specific models
This reference manual covers the MT-SICS commands for weigh modules/balances. As the weigh modules/
balances can differ based on model and software version, not all the MT-SICS level 2 and 3 commands are
usable on every model. We therefore recommend using the [I0 } Page  85 ] command to get an overview of
all commands that are supported by a particular balance.
Planning the use of MT-SICS commands
Investigations of various applications have shown that the vast majority of all system solutions can be handled
with the commands of MT-SICS level 0 and 1. This means for you: if you restrict yourself to the commands of
MT-SICS level 0 and 1, you can expand your system with additional weigh modules, balances from METTLER
TOLEDO without having to change your application programs.
Setup with / without terminal
Use the same setup during configuration and later use: If you intend to use the weigh module without the
terminal, the configuration has to be done without terminal as well. Due to the system’s architecture, the
storage behavioral of configurations is different whether the terminal is attached to the bridge or not: With a
terminal attached, configuration is stored in the terminal’s memory; without a terminal attached, the bridge’s
memory is used. Removing a terminal after configuration means to remove the configuration and activation the
bridge’s (default) configuration. Adding a terminal after configuration means overriding the configuration with
the one stored within the terminal.
Command and response
You can improve the dependability of your application software by having your program evaluate the response
of the weigh module/balance to a command. The response is the acknowledgement that the weigh module/
balance has received the command.
Cancel
To be able to start from a determined state, when establishing the communication between weigh module/
balance and system, you should send a cancel command see [@ } Page  15 ] to the weigh module/balance.
When the balance or system is switched on or off, faulty characters can be received or sent.
Parameter values after switching the weigh module/balance on/off
The commands of the standard command are saved on the permanent memory of the weigh module/balance.
This means that all values changed via the interface are saved when the weigh module/balance is switched off.
Several commands in succession
If several commands are sent in succession without waiting for the corresponding responses, it is possible that
the weigh module/balance confuses the sequence of command processing or ignores entire commands.
METTLER TOLEDO DeltaRange balances and weigh modules
If the fine range of DeltaRange balances has been exceeded at the time of transmission, the weigh module/
balance sends a weight value as balance response in which the tenth character is a space.
Update rate and timeout
The update rate for repeated commands and the duration of the timeout (time-limit function) depend on the
weigh module/balance type; see technical data of the weigh module/balance in question.
Carriage Return, Line Feed
Depending on the platform, CRLF is not just a "new line" (Java: "newLine()" or C/C++ "\n"):
Platform ‘New Line’
DOS/Windows CRLF
Macintosh CR
Unix LF
Nevertheless, all commands have to be closed by a CRLF (dec: 13, 10; hex: 0D, 0A) which corresponds to
"ENTER" in most human machine interfaces.
14 Introduction​​ MT-SICS Interface Command

Quotation marks " "
Quotation marks included in the command must always be entered. If a quotation mark is located within the
string, it may be attained by a backslash (\):
Ü DV"place 4\"filter!"
Û DVA Balance display: place 4" filter!
Weight unit of weight value – host unit
It is always essential to consider the weight unit that is to be used to display weighing results. Depending on
where the results are output, the weigh modules/balances offer the possibility of selecting a particular unit
see [M21 } Page  152 ]. This enables the displayed unit and info unit to be shown on the terminal. Host unit
is used to output the weighing results via an interface (host) on the basis of MT-SICS commands. The weight
values and the displayed unit can only be output by means of the SU commands.
Digit [d]
A digit refers to the smallest numerical increment a weigh module, balance can display – this is also referred to
as the weigh modules/balance’s readability. E.g. a WX205 has five decimal places; its digit is 0.01 mg. The
digit is sometimes used as a generic unit.
Binary coded multiple selections
Some parameters that allow multiple selections are binary coded: Each possible selection is represented by one
bit, the corresponding parameter equals to the decimal interpretation.
Selection
8
Selection
7
Selection
6
Selection
5
Selection
4
Selection
3
Selection
2
Selection
1
Parameter
0/1 0/1 0/1 0/1 0/1 0/1 0/1 0/1 0..
27 = 128 26 = 64 25 = 32 24 = 16 23 = 8 22 = 4 21 = 2 20 = 1
Responses may easily be interpreted by converting the decimal number to binary again.
MT-SICS Interface Command Commands and Responses​​ 15

3 Commands and Responses
@ – Cancel.................................................................................................................
Description
@ can be used to achieve the same effect as disconnecting and reconnecting the power supply, which empties
the volatile memories. The purpose of this command is to initiate a command sequence.
Syntax
Command
@ Resets the weigh module/balance to the condition
found after switching on, but without a zero setting
being performed.
Response
I4VAV"<SNR>" Serial number is emitted; the weigh module/balance is
ready for operation.
Comments
All commands awaiting responses are cancelled.
Key control is set to the default setting KV 1.
The tare memory is not reset to zero.
If the balance is on standby, it is switched on.
The cancel command is always executed.
The emitted serial number corresponds to the serial number of the terminal (if one is present), see
[I4 } Page 89 ].
Example
Ü @ Cancel
Û I4VAV"B021002593" Weigh module or balance is "reset", its serial number
is B021002593.
See also
2 I4 – Serial number } Page  89
16 Commands and Responses​​ MT-SICS Interface Command

A01 – Percent weighing: Reference in %........................................................................
Description
Use this command to set or query the reference value for percent weighing.
For querying to take place, a reference value must have been saved beforehand (A01 or function key or ).
Syntax
Commands
A01 Query of the reference for the percent weighing appli-
cation.
A01V<Reference> Set the reference for the percent weighing application.
Responses
A01VAV<Reference> Reference for the percent weighing application is set.
A01VB
A01VA
Start to set the reference (waiting for stable weight)
Command understood and executed successfully.
A01VI Command understood but currently not executable.
A01VL Command understood but not executable (e.g. percent
weighing application is not active or parameter is
incorrect) or no reference value present.
A01VE Setting reference aborted (not stable, over- or
underload, abort key,...).
Parameter
Name Type Values Meaning
<Reference> Float (0) ... 100 Reference for the percent weighing application in %;
must be greater than zero.
Comments
This command can only be used when the application "Percent weighing" is started. For details on
available applications and how the activate them, see M25 and M26.
Use the SU commands for percent weighing. Otherwise, the results will be displayed in the set unit unless
the host unit is changed to % using [M21 } Page 152 ].
Example
Ü A01V100.00 Set the reference for percent weighing to 100.00%.
Û A01VB Reference is set, waiting for stable weight.
Û A01VA The reference for percent weighing is set to 100.00%.
MT-SICS Interface Command Commands and Responses​​ 17

A02 – Sample identification for samples in weighing application.......................................
Description
Use A02 to set or query an identification of a sample in weighing application.
Note
Syntax
Commands
A02 Query the identifications of a sample of the weighing
application.
A02V<Index> Query the sample number of the weighing application.
A02V<Index>V<"Identification"> Set the sample number and identification of the
weighing application.
Responses
A02VBV<Index>V<"Identification">
A02VB...
A02VAV<Index>V<"Identification">
Query the identifications of a sample of the weighing
application.
A02VA Command understood and executed successfully.
A02VI Command understood but currently not executable.
A02VL Command understood but not executable (e.g.
weighing application is not active or parameter is
incorrect).
Parameters
Name Type Values Meaning
<Index> Integer 1 ... n Sample number (n is product dependent)
<"Identification"> String Max 60
chars
Identification of the sample
Comment
This command only applies to the "Weighing" application. For details on available applications and how
the activate them, see M25 and M26.
Examples
Ü A02 Query the identifications of a sample of the weighing
application.
Û A02VBV^1 V"12345" The identification of sample 1 is "12345".
Û A02VBV^2 V"67890" The identification of sample 2 is "67890".
Û A02VAV^3 V"" No identification for sample 3 (empty string).
Ü A02V^1 V"98765" Set the identification 1 to "98765".
Û A02VA The identification 1 is set to "98765".
18 Commands and Responses​​ MT-SICS Interface Command

A03 – Sample name for samples in weighing application.................................................
Description
Use A03 to assign an individual name to sample IDs, or query the current name.
Syntax
Commands
A03 Query the IDs name of the weighing application.
A03V<No> Query of specific ID.
A03V<No>V<"ID"> Set the ID name of the weighing application.
Responses
A03VBV<No>V<"ID">
A03VBV<No>V<"ID">
A03VAV<No>V<"ID">
All existing ID names of the weighing application.
A03VA Command understood and executed successfully.
A03VI Command understood but currently not executable.
A03VL Command understood but not executable (e.g.
weighing application is not active or parameter is
incorrect).
Parameters
Name Type Values Meaning
<No> Integer 1 ... n Number of weighing ID name
<"ID"> String Max 24
chars
String of weighing ID name
Comment
This command applies to the "Weighing" application. For details on available applications and how the
activate them, see M25 and M26.
Examples
Ü A03 Query the IDs name of the weighing application.
Û A03VBV^1 V"Batch" Name of ID1 is "Batch".
Û A03VBV^2 V"Lot" Name of ID2 is "Lot".
Û A03VAV^3 V"" Name of ID3 name is empty.
Ü A03V^2 Query the second ID name of the weighing appli-
cation.
Û A03VAV^2 V"Lot" Name of second ID is "Lot".
Ü A03V^1 V"Batch" Set the ID1 name to "Batch".
Û A03VA Name of ID1 is set.
MT-SICS Interface Command Commands and Responses​​ 19

A10 – Nominal, +Tolerance, -Tolerance.........................................................................
Description
Use A10 to enter the nominal values, inc. +/- tolerances, or query the current values. As soon as you have
specified the values, the SmartTrac changes and displays the graphic weighing-in aid.
Syntax
Commands
A10 Query of the nominal value, + tolerance, - tolerance.
A10V<No>V<Value>V<Unit> Set the nominal value, + tolerance, - tolerance.
Responses
A10VBV 0 V<Value>V<Unit>
A10VBV 1 V<Value>V<Unit>
A10VAV 2 V<Value>V<Unit>
Query of the nominal value, + tolerance, - tolerance.
A10VA Command understood and executed successfully.
A10VI Command understood but currently not executable.
A10VL Command understood but not executable.
Parameters
Name Type Values Meaning
Integer (^0) Nominal value
(^1) + tolerance
(^2) - tolerance
Float Nominal value
String Max 5
chars
Weight unit, % with +/- tolerances possible
Comments

The values will be output differently depending on the application. For details on available applications and
how the activate them, see M25 and M26.
Specified nominal and tolerance values must be reset manually:
A10V 0 V 0 Vg
A10V 1 V2.5V%
A10V 2 V2.5V%
As soon as you have specified the values, the SmartTrac switches to the graphic weighing-in aid.
Weight and percentage values are rounded, as is the case with values entered manually.
Examples
Ü A10 Query of the nominal value, + tolerance, - tolerance.
Û A10VBV^0 V100.12Vg Current setting is nominal value 100.12 g, + tolerance
Û A10VBV^1 V5.25Vg is 5.25 g and - tolerance is 7.6%.
Û A10VAV^2 V7.6V%
Ü A10V^0 V100.12Vg Set the nominal value to 100.12 g.
Û A10VA The nominal value is set 100.12 g.
20 Commands and Responses​​ MT-SICS Interface Command

A30 – Internal loads.....................................................................................................
Description
Use A30 to request status of internal loads. This command is used to inquire how many internal weights are
available in the balance and its status.
Syntax
Commands
A30 Query of quantity and status of the internal loads.
A30V<Qty> Place internal load.
Responses
A30VAVQtyVStat Quantity and status of the internal loads.
A30VI Command understood but currently not executable.
A30VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Qty> Integer Number of internal loads
(^0) No load placed
(^1) Total load placed
(^2) First partial load placed
(^3) Second partial load placed
Integer Status of internal weights
(^0) No load placed
(^1) Total load placed
(^2) First partial load placed
(^3) Second partial load placed
(^8) Error
(^9) Not determined (not in defined end position)
Comment

The number of internal loads depends on the balance model.
Examples
Ü A30 Query of quantity and status of the internal loads.
Û A30VAV^1 V^0 There is only one internal load which is currently not
placed.
Control of internal loads
Ü A30V^1 Place total internal load.
Û A30VA The load is placed.
MT-SICS Interface Command Commands and Responses​​ 21

C – Cancel all commands.............................................................................................
Description
Cancel all running commands.
Syntax
Command
C Cancel running commands.
Responses
CVB The cancel running command has been started.
CVA Command understood and executed successfully.
Comments
This command has a similar functionality as the command [@ } Page 15 ] but responds with a well
defined answer and does not fully reset the device.
This command is executed always immediately.
This command cancels all active and pending interface commands correctly and in a safe way on the
interface where cancel was requested. This command does not cancel any commands or procedures that
are not triggered by a SICS command.
The command C responses with CVA after all active and pending interface commands have been
terminated.
This command is typically used for repeating commands such as [SIR } Page 207 ] and for adjustment
commands triggering a procedure.
New procedures/command requests can be initiated right after a CVA.
Example
Ü C Cancel running commands.
Û CVB Cancel running started.
Û CVA Command understood and executed successfully.
Command-specific error responses
Response
CVEV<Error> Current error code.
Parameter of command-specific error
Name Type Values Meaning
Integer (^0) Error while canceling

22 Commands and Responses​​ MT-SICS Interface Command

C0 – Adjustment setting................................................................................................
Description
This command queries and sets the type of adjustment. Additional commands are required to actually trigger
and to define the weight for external adjustment.
Syntax
Commands
C0 Query of the current adjustment setting.
C0V<Mode>V<WeightType> Set the adjustment setting.
Responses
C0VAV<Mode>V<WeightType>V<"WeightValueV
Unit">
Weight value and unit specify the value of the weight
for an external adjustment requested from the user via
the display, see [C1 } Page  24 ]. The unit corre-
sponds to the factory setting of host unit, e.g. gram
(g) with standard balances or carat (ct) with carat
balances respectively. With internal adjustment,
neither weight value nor unit appears.
C0VI Command understood but currently not executable
(balance is currently executing another command,
e.g. taring).
C0VA Adjustment setting set successfully.
C0VL Command understood but not executable (incorrect
parameter; certified version of the balance).
Parameters
Name Type Values Meaning
Integer (^0) Mode = Manual
The adjustment can only be triggered manually
A change in the ambient conditions has no influence
on the initiation of the calibration procedure
(^1) Mode = Auto, status display "AutoCal" or "Cal" not
activated
When a considerable change in the ambient
conditions is determined, the status display "AutoCal"
or "Cal" will be activated; this means the balance will
ask for adjustment
(^2) Mode = Auto, status display "AutoCal" or "Cal" flashes
The sensors built into the balance have determined a
considerable change in the ambient conditions. The
balance requests an adjustment or at least a test, see
[TST } Page 232 ] x commands
Integer (^0) Internal weight (factory setting)
(^1) External weight
<2WeightValue"> String Weight values specify the value of the weight for an
external calibration requested from the user via the
display or interface, see [C1 } Page 24 ]
<"Unit"> String The unit corresponds to the factory setting of host unit,
e.g. gram (g)

MT-SICS Interface Command Commands and Responses​​ 23

Comments
Setting = 1 and = 0 corresponds to the menu setting "ProFACT" / "FACT" under "Adjust/
Test".
[C2 } Page 26 ] is independent of C0.
The value of the external weight can be changed in the menu of the balance under "Adjust/Test ", see
Reference Manual or with [M19 } Page 150 ].
Use [C1 } Page 24 ] to start an adjustment defined with C0.
C0 must be reset manually; [@ } Page 15 ] has no effect.
Check remaining ranges with [I50 } Page 108 ] command.
The parameters are not stored permanently.
Examples
Ü C0 Query of the current status and setting of the
adjustment.
Û C0VAV^2 V^1 V"VVV100.000Vg" Current setting of mode is "Auto". The ambient
conditions of the balance have changed so much that
the balance requests an adjustment (<Mode> = 2 )
with the external weight (<Weight> = 1 ). The
adjustment is initiated with the command
[C1 } Page  24 ] and requires a weight of
100.000 g.
Û C2 Start external adjustment, see responses of
[C2 } Page  26 ].
Û C0 Query of the current status and setting of the
adjustment.
Û C0VAV^3 V^1 V"VVV100.000Vg" Adjustment started.
Û C0 Query of the current status and setting of the
adjustment.
Û C0VAV^4 V^1 V"VVV100.000Vg" Adjustment successfully executed.
Ü C0V^0 V^1 Set adjustment setting to manual and external.
Û C0VA Adjustment setting set.
See also
2 M19 – Adjustment weight } Page  150
2 C2 – Start adjustment with external weight } Page  26
2 TST0 – Query/set test function settings } Page  232
2 TST1 – Test according to current settings } Page  233
24 Commands and Responses​​ MT-SICS Interface Command

C1 – Start adjustment according to current settings..........................................................
Description
C1 is used to trigger an adjustment as defined using the C0 command.
Syntax
Command
C1 Start the adjustment according to the current setting,
see [C0 } Page  22 ].
First Responses
C1VB The adjustment procedure has been started. Wait for
second response see Comments.
C1VI Command understood but currently not executable
(balance is currently executing another command).
No further response follows.
C1VL Command understood but not executable (e.g.
approved version of the balance). No further response
follows.
Further Responses
C1V<"WeightValueVUnit"> Weight request with external adjustment.
C1VA Command understood and executed successfully.
C1VI The adjustment was aborted as, e.g. stability not
attained or the procedure was aborted with the C key.
Parameters
Name Type Values Meaning
<"WeightValue"> String Weight values specify the value of the weight for a
sensitivity adjustment requested from the user via the
display or interface
<"Unit"> String The unit corresponds to the definition unit, e.g. gram
(g)
Comments
Commands sent to the balance during the adjustment operation are not processed and responded to in the
appropriate manner until the adjustment is at an end.
Use [@ } Page 15 ] to abort a running adjustment.
The value of the external adjustment weight needed for adjustment must be set accordingly by an
[M19 } Page 150 ] command.
Check remaining ranges with [I50 } Page 108 ] command.
Example
Ü C1 Start the adjustment according to the current setting.
Û C1VB Adjustment operation started.
Û C1V"VVVVVVV0.00Vg" Prompt to unload the balance.
Û C1V"VVVV2000.00Vg" Prompt to load the adjustment weight of 2000.00 g.
Û C1V"VVVVVVV0.00Vg" Prompt to unload the balance.
Û C1VA Adjustment completed successfully.
MT-SICS Interface Command Commands and Responses​​ 25

See also
2 C0 – Adjustment setting } Page  22
2 M19 – Adjustment weight } Page  150
2 TST1 – Test according to current settings } Page  233
2 M19 – Adjustment weight } Page  150
26 Commands and Responses​​ MT-SICS Interface Command

C2 – Start adjustment with external weight......................................................................
Description
Regardless of the [C0 } Page  22 ] setting, C2 carries out external adjustment with the reference weight defined
in [M19 } Page  150 ].
Syntax
Command
C2 Start the external adjustment. Query of the current
weight used by means of the [M19 } Page  150 ]
command.
First Responses
C2VB The adjustment procedure has been started.
C2VI Command understood but currently not executable
(balance is currently executing another command).
No second response follows.
C2VL Command understood but not executable (e.g.
adjustment with an external weight is not admissible,
certified version of the balance). No second response
follows.
Further Responses
C2V<"WeightValue>V<Unit"> Prompt to unload or load the balance.
C2VA Command understood and executed successfully.
C2VI The adjustment was aborted as, e.g. stability not
attained or the procedure was aborted with the C key.
Parameters
Name Type Values Meaning
<"WeightValue"> Float Weight values specify the value of the weight for a
sensitivity adjustment requested from the user via the
display or interface
<"Unit"> String The unit corresponds to the definition unit, e.g. gram
(g)
Comments
Commands sent to the balance during the adjustment operation are not processed and responded to in the
appropriate manner until the adjustment is at an end.
Use [@ } Page 15 ] to abort a running adjustment.
The value of the external adjustment weight needed for adjustment must be set accordingly by an
[M19 } Page 150 ] command.
Check remaining ranges with [I50 } Page 108 ] command.
Example
Ü C2 Start the external adjustment.
Û C2VB Adjustment operation started.
Û C2V"VVVVVVV0.00Vg" Prompt to unload the balance.
Û C2V"VVVV2000.00Vg" Prompt to load adjustment weight 2000.00 g.
Û C2V"VVVVVVV0.00Vg" Prompt to unload the balance.
Û C2VA Adjustment completed successfully.
MT-SICS Interface Command Commands and Responses​​ 27

See also
2 M19 – Adjustment weight } Page  150
2 TST2 – Test with external weight } Page  235
2 M19 – Adjustment weight } Page  150
2 M19 – Adjustment weight } Page  150
28 Commands and Responses​​ MT-SICS Interface Command

C3 – Start adjustment with internal weight......................................................................
Description
You can use C3 to start an internal adjustment procedure.
Syntax
Command
C3 Start the internal adjustment.
First Responses
C3VB The adjustment procedure has been started. Wait for
second response.
C3VI Adjustment can not be performed at present as another
operation is taking place. No second response
follows.
C3VL Adjustment operation not possible (e.g. no internal
weight). No second response follows.
Further Responses
C3VA Adjustment has been completed successfully.
C3VI The adjustment was aborted as, e.g. stability not
attained or the procedure was aborted with the C key.
Comments
Commands sent to the balance during the adjustment operation are not processed and responded to in the
appropriate manner until the adjustment is at an end.
Use [@ } Page 15 ] to abort a running adjustment.
Check remaining ranges with [I50 } Page 108 ] command.
Example
Ü C3 Start the internal adjustment.
Û C3VB Adjustment operation started.
Û C3VA Adjustment completed successfully.
See also
2 TST3 – Test with internal weight } Page  236
MT-SICS Interface Command Commands and Responses​​ 29

C4 – Standard / initial adjustment..................................................................................
Description
An initial adjustment is a procedure that determines a new adjustment factor between the built-in weight used
for internal adjustment and the external weight defined by the [M19 } Page  150 ] command. All internal
adjustments following this procedure will show the same weighing results as if the adjustment were done with
the external weight. The initial adjustment thus allows tuning of the internal adjustment of several weigh
modules to one external weight standard.
Syntax
Command
C4 Start initial adjustment.
First Responses
C4VB Initial adjustment procedure has been started. Wait for
second response.
C4VI Initial adjustment cannot be performed at present
because another operation is taking place (e.g. zero
setting or taring), or the current weight value is outside
the permissible range.
C4VL Command understood but not executable (parameter
not allowed). No second response follows.
Further Responses
C4V<"WeightValue">V<"Unit"> Prompt to unload or load the weighing module.
C4VA The adjustment has been completed successfully.
C4VI The adjustment procedure was aborted because, e.g.
the stability needed for this operation was not
achieved within the timeout limit, or a wrong weight
was loaded.
Parameters
Name Type Values Meaning
<"WeightValue"> Float Weight values specify the value of the weight for a
sensitivity adjustment requested from the user via the
display or interface
<"Unit"> String The unit corresponds to the definition unit, e.g. gram
(g)
Comments
In order to perform an initial adjustment, the actual load seen by the weight module must be within plus/
minus (2 g + 1% of weighing capacity) relative to the load when the weight module was switched on.
The criterion that must be fulfilled to reach stability for initial adjustment depends on the type of the weigh
module and cannot be changed.
The timeout may be set using the [M67 } Page 177 ] command.
The value of the external adjustment weight needed for initial adjustment must be set accordingly by an
[M19 } Page 150 ] command if preload exists.
The new factor determined by the initial adjustment procedure will be reset to the adjustment factor
evaluated in the factory when the FSETV 0 or FSETV 1 command is performed. With FSETV 2 , the initial
calibration by the user is retained.
Check remaining ranges with [I50 } Page 108 ] command.
Example
Ü C4 Start the internal adjustment.
30 Commands and Responses​​ MT-SICS Interface Command

Û C4VB Adjustment operation started.
Û C4V"VVV100.0000Vg" Prompt to load weight of 100.0000 g used for initial
adjustment.
Û C4V"VVVVV0.0000Vg" Prompt to unload the module.
Û C4VA Adjustment completed successfully.
MT-SICS Interface Command Commands and Responses​​ 31

C5 – Enabling/disabling step control..............................................................................
Description
Use C5 to enable and disable step control (user interaction) during the adjustment procedures triggered by the
adjustment commands C6 – C8.
Syntax
Commands
C5 Query the status of the step control.
C5V<Status> Enable / disable the step control.
Responses
C5VAV<Status> Current status of the step control.
C5VA Command understood and executed successfully.
C5VI Command understood but currently not executable.
C5VL Command understood but not executable (incorrect
parameter).
Parameter
Name Type Values Meaning
<Status> Integer 0 Step control is turned off (all adjustment procedures
run without user interaction)
1 Step control is turned on (all adjustment procedures
which support step control need a user confirmation
when the weight is placed on the pan)
Comments
Adjustment methods using internal weights and adjustment commands without parameter ‘Method’ will
ignore the state of C5 and only work without step control.
Use the command I62 to read out the timeout for user interaction.
Example
Ü C5 Query the status of the step control.
Û C5VAV^1 Step control is enabled.
See also
2 C6 – Customer linearization and sensitivity adjustment } Page  32
2 C7 – Customer standard calibration } Page  35
2 C8 – Sensitivity adjustment } Page  38
2 I62 – Timeout } Page  119
32 Commands and Responses​​ MT-SICS Interface Command

C6 – Customer linearization and sensitivity adjustment....................................................
Description
Use C6 to start the adjustment of the customer linearization. With these measurement values also an
adjustment of the customer sensitivity scaling is done.
Syntax
Commands
C6 Request the whole list of available methods.
C6V<Method> Execute the command with or without the step control
C5.
C6V<Method>V<Load> Execute the command with or without the step control
C5 and with the parameter <Load>.
Responses
C6VBV<Method>
...
C6VAV<Method>
Current list of available methods.
C6VB
C6VBV<Index>V<State>V<WgtState>V
<"LoadInstruction">V<"ValueHostUnit">
C6VBV<Index>V<State>V<WgtState>V
<"LoadInstruction">V<"ValueHostUnit">
...
C6VBV<Index>V<State>V<WgtState>V
<"LoadInstruction">V<"DevPerMille">
C6VA
Content of a specific method without step control
C5V 0.
C6VB
C6VCV<Index>V<State>V<WgtState>V
<"LoadInstruction">V<"ValueHostUnit">
C6VC
C6VBV<Index>V<State>V<WgtState>V
<"LoadInstruction">V<"ValueHostUnit">
C6VCV<Index>V<State>V<WgtState>V
<"LoadInstruction">V<"ValueHostUnit">
...
C6VBV<Index>V<State>V<WgtState>V
<"LoadInstruction">V<"DevPerMille">
C6VA
Content of a specific method with step control C5V 1.
C6VEV<Error> Error occurred during the adjustment.
C6VA Command understood and executed successfully.
C6VI Command understood but currently not executable.
C6VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Method> Integer 0, 2 0: use default method of the adjustment (=2)
2: Adjustment with external weights
<Load> Float Calibration load in the host unit (default using the M19
value).
Load used in step control ('Execute C6VC Load')
modifies the required weight value of the actual
adjustment state
MT-SICS Interface Command Commands and Responses​​ 33

Name Type Values Meaning
<Index> Integer Step number of the procedure
<State> Char R, D or C Actual state of the adjustment process
R = requesting external weight
D = waiting for stability
C = calibration deviation (procedure is finished,
corrected calibration deviation is given in parameter
"DevPerMille")
<WgtState> Char +, -, o Actual weight state
+ load is above tolerances
load is below tolerances
o (small omega) load is within tolerances
<"LoadInstruction"> String Instruction, which load to place on the pan
String with the load combination to place on the pan
separated by "+". The string contains as many
numbers as different loads are used in the procedure
"0" = do not place the load "1" = place load 1 "1+2"
= place load 1 and load 2 "0+2" = only place load 2
<"ValueHostUnit"> String Load information of the actual adjustment state
(weight and host unit)
<"DevPerMille"> String Deviation of the measured calibration load (before
adjustment) relative to the exact calibration load in per
mille (‰). Value is rounded to the resolution of the
finest range
Integer 0, 1 or 2 Parameter showing the source of the error
0: Timeout
1: Cancel
2: Internal weight not supported
Comments
The parameter and also the load value corrected with step control are tested against range
definitions. A logic error (L) is returned for values violating the range definitions.
The procedure can be canceled by command C.
Examples
Ü C6 Request the whole list of available methods
Û C6VBV^0
C6VAV 2
Methods 0 and 2 are available. Other methods are not
implemented
34 Commands and Responses​​ MT-SICS Interface Command

Ü C6V^2 Start the linearization adjustment method 2 (without
step control C5V 0.
Û C6VB
C6VBV 0 VRV–V"0+0"V"VVVVV0.00Vg"
C6VBV 0 VDVoV"0+0"V"VVVVVVVV"
C6VBV 1 VRV–V"1+0"V"VVVV200.00Vg"
C6VBV 1 VDVoV"1+0"V"VVVVVVVV"
C6VBV 2 VRV–V"1+2"V"VVVV400.00Vg"
C6VBV 2 VDVoV"1+2"V"VVVVVVVV"
C6VBV 2 VCVoV"1+2"V"0.23"
C6VA
Linearization adjustment is started
Request weight for first step.
Capture weight of first step.
Request weight of second step (ext. load L1).
Capture weight of third step.
Request weight of third step (ext. load L1+L2).
Capture weight of third step.
Corrected calibration deviation in per mille (‰).
Linearization adjustment finished.
Ü C6V^2 V^400 Start linearization adjustment method 2 with step
control C5V 1.
Û C6VB
C6VCV 0 VRV–V"0+0"V"VVVVVV0.00Vg"
Linearization adjustment is started.
Request weight for first step (ext. & int. unload).
Û C6VC User confirms placed weight.
Û C6VBV^0 VDVoV"0+0"V"VVVVVVVV"
C6VCV 1 VRV-V"1+0"V"VVV200.00Vg"
Capture weight of first step.
Request weight for second step (ext. load L1).
Û C6VCV220.00 User changes requested weight value.
Û C6VCV^1 VRV-V"1+0"V"VVV220.00Vg" Request weight for second step (ext. load L1).
Û C6VC User confirms placed weight.
Û C6VBV^1 VDVoV"1+0"V"VVVVVVVV"
C6VCV 2 VRV-V"1+2"V"VVV400.00Vg"
Capture weight of second step.
Request weight for third step (ext. load L1+L2).
Û C6VC User confirms placed weight.
Û C6VBV^2 VDVoV"1+2"V"VVVVVVVV"
C6VBV 2 VCVoV"1+2"V"0.23"
C6VA
Capture weight of third step.
Corrected calibration deviation in per mille (‰).
Linearization adjustment finished.
Ü C6V2˽400 Start linearization adjustment (method 2).
Û C6VB
C6VCV 0 VRV–V"0+0"V"VVVVVV0.00Vg"
Linearization adjustment is started.
Request weight for first step (ext. & int. unload).
Û C6VEV^0 Timeout error response.
See also
2 C – Cancel all commands } Page  21
2 C5 – Enabling/disabling step control } Page  31
MT-SICS Interface Command Commands and Responses​​ 35

C7 – Customer standard calibration...............................................................................
Description
Use C7 to start the standard calibration which defines the exact weight value of the internal calibration loads.
Syntax
Commands
C7 Request the whole list of available methods.
C7V<Method> Execute the command with or without the step control
C5.
C7V<Method>V<Load> Execute the command with or without the step control
C5 and with the optional parameter <Load>.
Responses
C7VBV<Method>
...
C7VAV<Method>
Current list of available methods.
C7VB
C7VBV<Index>V<State>V<WgtState>V
<"LoadInstruction">V<"ValueHostUnit">
C7VBV<Index>V<State>V<WgtState>V
<"LoadInstruction">V<"ValueHostUnit">
...
C7VA
Execute the command without step control C5V 0 and
with optional parameter <Load>.
C7VB
C7VCV<Index>V<State>V<WgtState>V
<"LoadInstruction">V<"ValueHostUnit">
C7VC
C7VBV<Index>V<State>V<WgtState>V
<"LoadInstruction">V<"ValueHostUnit">
C7VCV<Index>V<State>V<WgtState>V
<"LoadInstruction">V<"ValueHostUnit">
C7VCV<Load>
C7VCV<Index>V<State>V<WgtState>V
<"LoadInstruction">V<"ValueHostUnit">
C7VC
...
C7VA
Execute the command with step control C5V 1 and with
modifying a required weight value of one state during
the adjustment. The state which is corrected is
displayed again and must be confirmed by the
operator.
C7VA Command understood and executed successfully.
C7VI Command understood but currently not executable
(balance is currently executing another command).
No second response follows.
C7VL Command understood but not executable (incorrect
parameter)
Parameters
Name Type Values Meaning
<Method> Integer 0 ... 2 List of available methods (model dependent)
(^0) Use default method of the adjustment
1 or 2 Method 1: For direct force translation (without lever
arms)
Method 2: For hybrid force translation (with lever
arms)

36 Commands and Responses​​ MT-SICS Interface Command

Name Type Values Meaning
<Load> Float Calibration load in the definition unit (default using the
M19 value)
Load used in step control (Execute C5VCVLoad)
modifies the required weight value of the actual
adjustment state
<Index> Integer Step number of the procedure
<State> Char R or D Actual state of the adjustment process
R = requesting external weight
D = waiting for stability
<WgtState> Char +, -, o Actual weight state:
+ load is above tolerances
load is below tolerances
o (small omega) load is within tolerances
<"LoadInstruction"> String (^0) Instruction, which load to place on the pan
String with the load combination to place on the pan
separated by "+". The string contains as many
numbers as different loads are used in the procedure.
If the actual step uses internal weights, the string will
be empty.

"0" = do not place the load
"1" = place load 1
"1+2" = place load 1 and load 2
"0+2" = only place load 2
<"ValueHostUnit"> String Load information of the actual adjustment state
(weight and host unit)
Comments
The standard adjustment determines the exact weight of the internal load. Therefore the external adjustment
load must be known exactly.
If step control is enabled, the states which require external loads must be confirmed, the others are running
automatically.
The parameter and also the load value corrected with step control are tested against range
definitions. A logic error (L) is returned for values violating the range definitions.
The procedure can be canceled by command C.
This command is equivalent to C4.
Examples
Ü C7 Request the whole list of available methods.
Û C7VBV^0
C7VAV 1
Methods 0 and 1 are available. Other methods are not
implemented or disabled.
Ü C7V^1 V^400 Start the standard calibration procedure (method 1),
without step control (automatic recognition of placed
weights).
MT-SICS Interface Command Commands and Responses​​ 37

Û C7VB
C7VBV 0 VRV–V"0"V"VVVVVV0.00Vg"
C7VBV 0 VDVoV"0"V"VVVVVVVV"
C7VBV 1 VDVoV"V"V"VVVVVVVV"
C7VBV 2 VDVoV"V"V"VVVVVVVV"
C7VBV 3 VRV-V"1"V"VVV400.00Vg"
C7VBV 3 VDVoV"1"V"VVVVVVVV"
C7VBV 4 VRV+V"0"V"VV0.00VVg"
C7VBV 4 VDVoV"0"V"VVVVVVVV"
C7VBVV 5 VDVoV"V"V"VVVVVVVV"
C7VBV 6 VDVoV"V"V"VVVVVVVV"
C7VA
Standard calibration is started.
Request weight for first step (ext. & int. unload).
Capture weight of first step.
Capture weight of second step (int. push).
Capture weight of third step (int. unload).
Request weight for fourth step (ext. load L1).
Capture weight of fourth step.
Request weight for fifth step (ext. unload).
Capture weight of fifth step.
Capture weight of sixth step (int. load).
Capture weight of seventh step (int. unload).
Standard calibration finished.
Ü C7V^1 V^400 Start the standard calibration procedure (method 1),
with step control (user interaction).
Û C7VB
C7VCV 0 VRV–V"0"V"VVVVVV0.00Vg"
Standard calibration is started.
Request weight for first step (ext. & int. unload).
Û C7VC User confirms placed weight.
Û C7VBV^0 VDVoV"0"V"VVVVVVVV"
C7VBV 1 VDVoV"V"V"VVVVVVVV"
C7VBV 2 VDVoV"V"V"VVVVVVVV"
C7VCV 3 VRV–V"1"V"VVVV400.00Vg"
Capture weight of first step.
Capture weight of second step (int. push).
Capture weight of third step (int. unload).
Request weight for fourth step (ext. load L1).
Û C7VC User confirms placed weight.
Û C7VBV^3 VDVoV"1"V"VVVVVVVV"
C7VCV 4 VRV+V"0"V"VVV0.00Vg"
Capture weight of fourth step.
Request weight for fifth step (ext. unload).
Û C7VC User confirms placed weight.
Û C7VBV^4 VDVoV"0"V"VVVVVVVV"
C7VBV 5 VDVoV"V"V"VVVVVVVV"
C7VBV 6 VDVoV"V"V"VVVVVVVV"
C7VA
Capture weight of fifth step.
Capture weight of sixth step (int. load).
Capture weight of seventh step (int. unload).
Standard calibration finished.
See also
2 C – Cancel all commands } Page  21
2 C5 – Enabling/disabling step control } Page  31
38 Commands and Responses​​ MT-SICS Interface Command

C8 – Sensitivity adjustment...........................................................................................
Description
Use C8 to start the customer adjustment of the sensitivity scaling (internal and external).
Syntax
Commands
C8 Request the whole list of available methods.
C8V<Method> Execute the command with or without the step control
C5.
C8V<Method>V<Load> Execute the command with optional parameter
<Load>.
Responses
C8VBV<Method>
...
C8VAV<Method>
Current list of available methods.
C8VB
C8VBV<Index>V<State>V<WgtState>V
<"LoadInstruction">V<"ValueHostUnit">
C8VBV<Index>V<State>V<WgtState>V
<"LoadInstruction">V<"ValueHostUnit">
...
C8VBV<Index>V<State>V<WgtState>V
<"LoadInstruction">V<"DevPerMille">
C8VA
Content of a specific method.
C8VA Command understood and executed successfully.
C8VI Command understood but currently not executable
(balance is currently executing another command).
No second response follows.
C8VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Method> Integer 0, 1 or 2 0: use default method of the adjustment
1: internal adjustment
2: external adjustment
<Load> Float Calibration load in the host unit. The parameter ‘Load’
is optional; by default the parameter <Load> is preset
by the device using the M19 definition
Load used in step control (Execute C8VCVLoad)
modifies the required weight value of the actual
adjustment state
<Index> Integer Step number of the procedure
<State> Char R, D or C Actual state of the adjustment process
R = requesting external weight
D = waiting for stability
C = calibration deviation (procedure is finished,
corrected calibration deviation is given in parameter
"DevPerMille")
MT-SICS Interface Command Commands and Responses​​ 39

Name Type Values Meaning
<WgtState> Char +, -, o Actual weight state:
+ load is above tolerances
load is below tolerances
o (small omega) load is within tolerances
<"LoadInstruction"> String (^0) Instruction, which load to place on the pan
String with the load combination to place on the pan
separated by "+". The string contains as many
numbers as different loads are used in the procedure.
If the actual step uses internal weights, the string will
be empty

"0" = do not place the load
"1" = place load 1
"1+2" = place load 1 and load 2
"0+2" = only place load 2
<"ValueHostUnit"> String Load information of the actual adjustment state
(weight and host unit)
<"DevPerMille"> String Deviation of the measured calibration load (before
adjustment) relative to the exact calibration load in per
mille (‰). Value is rounded to the resolution of the
finest range
Comments
The parameter 'Load' and also the load value corrected with step control are tested against range
definitions. A logic error (L) is returned for values violating the range definitions.
This command accepts always two parameters also if the third parameter has no functionality in the
triggered method. In this case, the third parameter is ignored by the command and does not respond a
logic error (L).
The procedure can be canceled by command C.
External weight values must be exactly known.
This command is equivalent to [C2 } Page 26 ] and [C3 } Page 28 ] (depending on the parameter
method )
Examples
Ü C8 Request the whole list of available methods.
Û C8VBV^0
C8VAV 1
C8VAV 2
Methods 0, 1 and 2 are available. Other methods are
not implemented.
Ü C8V^1 Start the internal sensitivity adjustment procedure
(method 1)
Û C8VB
C8VBV 0 VRV–V""V"VVVVVV0.00Vg"
C8VBV 0 VDVoV"0"V"VVVVVVVV"
C8VBV 1 VDVoV"V"V"VVVVVVVV"
C8VBV 2 VDVoV"V"V"VVVVVVVV"
C8VBV 3 VDVoV"1"V"VVVVVVVV"
C8VBV 4 VDVoV"0"V"VVVVVVVV"
C8VBV 4 VCVoV"0"V"VV0.23"
C8VA
Sensitivity adjustment is started.
Request weight for first step (ext. & int. unload).
Capture weight of first step.
Capture weight of second step (int. push).
Capture weight of third step (int. unload).
Capture weight of fourth step (int. load L1).
Capture weight of fifth step (int. unload).
Corrected calibration deviation in per mille (‰).
Sensitivity adjustment finished.
40 Commands and Responses​​ MT-SICS Interface Command

Ü C8V^2 V^400 Start the external sensitivity adjustment procedure
(method 2), without step control (automatic recog-
nition of placed weights).
Û C8VB
C8VBV 0 VRV–V"0"V"VVVVVV0.00Vg"
C8VBV 0 VDVoV"0"V"VVVVVVVV"
C8VBV 1 VRV–V"1"V"VVVV400.00Vg"
C8VBV 1 VDVoV"1"V"VVVVVVVV"
C8VBV 1 VCVoV"1"V"VV0.23"
C8VA
Sensitivity adjustment is started.
Request weight for first step (ext. & int. unload).
Capture weight of first step.
Request weight for second step (ext. load L1).
Capture weight of second step.
Corrected calibration deviation in per mille (‰).
Sensitivity adjustment finished.
Ü C8VV^2 V^400 Start the external sensitivity adjustment procedure
(method 2), with step control (user interaction).
Û C8VB
C8VCV 0 VRV–V"0"V"VVVVVV0.00Vg"
Sensitivity adjustment is started.
Request weight for first step (ext. & int. unload).
Û C8VC User confirms placed weight.
Û C8VBV^0 VDVoV"0"V"VVVVVVVV"
C8VCV 1 VRV–V"1"V"VVVV400.00Vg"
Capture weight of first step.
Request weight for second step (ext. load L1).
Û C8VC User confirms placed weight.
Û C8VBV^1 VDVoV"1"V"VVVVVVVV"
C8VBV 1 VCVoV"1"V"0.23"
C8VA
Capture weight of second step.
Corrected calibration deviation in per mille (‰).
Sensitivity adjustment finished.
Ü C8V^2 V^400 Start the external sensitivity adjustment procedure
(method 2).
Û C8VB
C8VCV 0 VRV–V"0"V"VVVVVV0.00Vg"
Sensitivity adjustment is started.
Request weight for first step (ext. & int. unload).
Û C8VEV^0 Timeout error response.
See also
2 C – Cancel all commands } Page  21
2 C5 – Enabling/disabling step control } Page  31
2 M19 – Adjustment weight } Page  150
MT-SICS Interface Command Commands and Responses​​ 41

C9 – Scale placement sensitivity adjustment...................................................................
Description
Start the adjustment of the scale placement sensitivity scaling. If this adjustment is used, make sure to trigger it
before any subsequent adjustment in the signal processing chain since it does not reset subsequent signal
processing parameters!
This command is only available for weigh modules with external lever system that is not part of the factory
adjustment of the load cell. For this kind of weigh modules, this command replaces the factory standard
adjustment by service technician.
Syntax
Commands
C9 Request the whole list of available methods.
C9V<Method> Execute the command according to a predefined
method.
Responses
C9VBV<Method>
...
C9VAV<Method>
Current list of available methods.
C9VB
C9VBV<Index>V<State>V<WgtState>V
<"LoadInstruction">V<"ValueHostUnit">
C9VBV<Index>V<State>V<WgtState>V
<"LoadInstruction">V<"ValueHostUnit">
...
C9VBV<Index>V<State>V<WgtState>V
<"LoadInstruction">V<"DevPerMille">
C9VA
Content of a specific method.
C9VA Command understood and executed successfully.
C9VI Command understood but currently not executable.
C9VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Method> Integer 0, 1 or 2 Method = 0: use default method of the adjustment. If
default method is not defined, method 1 or method 2
is used, depending on the availability of internal
weights
<Index> Integer Step number of the procedure
<State> Char R, D or C Actual state of the adjustment process
R = requesting external weight
D = waiting for stability
C = sensitivity deviation (procedure is finished,
corrected sensitivity deviation is given in parameter
"DevPerMille")
<WgtState> Char +, -, o Actual weight state:
+ load is above tolerances
load is below tolerances
o (small omega) load is within tolerances
42 Commands and Responses​​ MT-SICS Interface Command

Name Type Values Meaning
<"LoadInstruction"> String Instruction, which load to place on the pan
String with the load combination to place on the pan
separated by "+". The string contains as many
numbers as different loads are used in the procedure.
If the actual step uses internal weights, the string will
be empty
Examples for two loads
"0+0" = do not place the load
"1+0" = place load 1
"1+2" = place load 1 and load 2
"0+2" = only place load 2
Examples for four loads:
"0+0+0+0" = do not place the load
"1+0+0+0" = place load 1
"1+2+0+0" = place load 1 and load 2
"0+2+0+0" = only place load 2
"1+2+3+4" = place load 1, load 2, load 3 and load
4
<"ValueHostUnit"> String Load information of the actual adjustment state
(weight and unit) in host units (M21) with the
maximum displayed decimal places
<"DevPerMille"> String Deviation of the measured calibration load (before
adjustment) relative to the exact calibration load in per
mille (‰). Value is rounded to the resolution of the
finest range
Comments
This command is used to perform a sensitivity adjustment. This operation performs a sensitivity adjustment
without modifying the adjustment parameters of subsequent signal processing blocks. This is needed; when the
linearity and the sensitivity of an external lever system are corrected with scaling blocks later in the signal
processing chain (e.g. scale production adjustment).
Method 1 of this command is an internal sensitivity adjustment. This adjustment does not reset block
parameters of following SP blocks! Therefore be sure to trigger this adjustment before any adjustment of
subsequent SP blocks. Otherwise do not use this adjustment!
This adjustment can be canceled by the command C.
Examples
Ü C9 Request the whole list of available methods.
Û C9VBV^0
C9VAV 1
Methods 0 and 1 are available. Other methods are not
implemented or have been disabled.
Ü C9V^1 Start the internal sensitivity adjustment procedure
(method 1).
Û C9VB
C9VBV 0 VRV–V""V"VVVVVV0.00Vg"
C9VBV 0 VDVoV"0"V"VVVVVVVV"
C9VBV 1 VDVoV"V"V"VVVVVVVV"
C9VBV 2 VDVoV"V"V"VVVVVVVV"
C9VBV 3 VDVoV"1"V"VVVVVVVV"
C9VBV 4 VDVoV"0"V"VVVVVVVV"
C9VBV 4 VCVoV"0"V"VV0.23"
C9VA
Sensitivity adjustment is started.
Request weight for first step (ext. & int. unload).
Capture weight of first step.
Capture weight of second step (int. push).
Capture weight of third step (int. unload).
Capture weight of fourth step (int. load L1).
Capture weight of fifth step (int. unload).
Corrected calibration deviation in per mille (‰).
Sensitivity adjustment finished.
MT-SICS Interface Command Commands and Responses​​ 43

Error codes
0: Timeout
1: Cancel
2: Internal weight not supported
44 Commands and Responses​​ MT-SICS Interface Command

COM – Parameters of the serial interfaces.......................................................................
Description
You can use this command to define the connection parameters of the serial interfaces (e.g. RS232, RS422).
Syntax
Commands
COM Query of the existing interface settings.
COMV<Port>V<Baud>V<Bit>V<HS> Set parameters of the specified interface to desired
values.
Responses
COMVBV<Port>V<Baud>V<Bit>V<HS>
...
COMVAV<Port>V<Baud>V<Bit>V<HS>
Current communication parameters.
COMVA Command executed successfully.
COMVI Command understood but not executable (e.g. update
rate is too high for the selected baud rate, see
comments).
COMVL Command understood but not executable (e.g.
parameter incorrect).
Parameters
Name Type Values Meaning
Integer (^0) Built-in RS232 interface
(^1) Built-in RS422 interface
Integer (^0) 150 baud
(^1) 300 baud
(^2) 600 baud
(^3) 1200 baud
(^4) 2400 baud
(^5) 4800 baud
(^6) 9600 baud (factory setting)
(^7) 19200 baud
(^8) 38400 baud
Integer Bits / Parity / Stop bits
(^0) 7 / Even / 1
(^1) 7 / Odd / 1
(^2) 7 / None / 1
(^3) 8 / None / 1 (factory setting)
(^4) 7 / Even / 2
(^5) 7 / Odd / 2
(^6) 7 / None / 2
(^7) 8 / None / 2
Integer (^0) No handshake (factory setting)
(^1) Software handshake (Xoff – Xon controlled protocol)
(^2) Hardware handshake (CTS – RTS controlled protocol)
Comments

Command only available without a connected terminal.
MT-SICS Interface Command Commands and Responses​​ 45

If an option is present in the system, the host is automatically assigned to that interface and the COM
command is not available anymore.
The answer is returned with the current settings, the settings are changed afterwards.
No values other than those specified must be used; otherwise, uncontrollable settings may result.
When adjusting the values, the connection parameters of the connected communication partner must also
be adjusted. Otherwise, it will not be possible to establish any further communication.
It is recommended to check the parity bit in the communication of the weighing device with the control
system (PLC) in order to see whether there is any error in the transmission.
Transmission errors might become more likely as the baud rate of the communication is increased.
Examples
Ü COM Send current settings for interface parameters for all
present interfaces.
Û COMVBV^0 V^6 V^3 V^0 RS232 is set to 9600 baud, 8 bits, no parity, 1 stop
bit, no handshake.
Ü COMV^0 V^8 V^3 V^0 Setting the parameters for the serial interface to 38400
baud, 8 data bits, no parity, 1 stop bit, no handshake.
Û COMVA Parameters successfully set to desired values.
46 Commands and Responses​​ MT-SICS Interface Command

D – Write text to display................................................................................................
Description
Use D to write text to the balance display.
Syntax
Command
DV<"Text"> Write text into the balance display.
Responses
DVA Command understood and executed successfully:
Text appears left-aligned in the balance display
marked by a symbol, e.g. *.
DVI Command understood but currently not executable.
DVL Command understood but not executable (incorrect
parameter or balance with no display).
Parameter
Name Type Values Meaning
<Text> String Text on the balance display
Comments
A symbol in the display, e.g. * indicates that the balance is not displaying a weight value.
The maximum number of characters of "text" visible in the display depends on the balance type. If the
maximum number of characters is exceeded, the text disappears on the right side.
Quotation marks can be displayed as indicated in chapter 1.1.3.
Examples
Ü DV"HELLO" Write HELLO into the balance display.
Û DVA The full text HELLO appears in the balance display.
Ü DV" " Clear the balance display.
Û DVA Balance display cleared, marked by a symbol, e. g. *.
See also
2 DW – Show weight } Page  54
MT-SICS Interface Command Commands and Responses​​ 47

DAT – Date..................................................................................................................
Description
Set or query the balance system date.
Syntax
Commands
DAT Query of the current date of the balance.
DATV<Day>V<Month>V<Year> Set the date of the balance.
Responses
DATVAV<Day>V<Month>V<Year> Current date of the balance.
DATVA Command understood and executed successfully.
DATVI Command understood but currently not executable
(balance is currently executing another command).
DATVL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Day> Integer 01 ... 31 Day
<Month> Integer 01 ... 12 Month
<Year> Integer 2000 ... 
2099
Year
Example
Ü DAT Query of the current date of the balance.
Û DATVAV^01 V^10 V^2017 The date of the balance is 1st October 2017.
See also
2 TIM – Time } Page  231
48 Commands and Responses​​ MT-SICS Interface Command

DIN – Configuration for digital inputs..............................................................................
Description
Set or query the configuration for the digital inputs.
Syntax
Commands
DIN Query of the configuration for the digital inputs.
DINV<Input>V<"Command">V<Transi-
tion>V<Interface>
Set the configuration for the digital input.
Responses
DINVBV<Input>V<"Command">V
<Transition>V<Interface>
DINVB...
DINVAV<Input>V<"Command">V
<Transition>V<Interface>
Current configuration for the digital input.
DINVA Command understood and executed successfully.
DINVI Command understood but currently not executable.
DINVL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Input> Integer 1 ... n Number of digital input
<"Command"> String max. 64
chars
MT-SICS command
<Transition> Integer 0: rising
edge
Transition of the input signal
1:
falling
edge
<Interface> integer 0 ... n Number of Interface, Interface number, see
[COM } Page  44 ]
Comments
Only one event can be programmed on each digital input.
Nonsense "Command" leads to an ES on the specified interface.
Example
Ü DIN Query the current configuration for the digital input.
Û DINVAV^2 V"SI"V^1 V^1 The command "SI" will be executed on the interface 1
by falling edge on digital input number 2.
MT-SICS Interface Command Commands and Responses​​ 49

DIS – Digital input status..............................................................................................
Description
Use DIS to ask the actual status of the digital input ports. The number of input ports is dependent on the
product model type.
Syntax
Commands
DIS Query the status of all available input ports.
DISV<Input> Query the status of a specific input port.
Responses
DISVBV<Input>V<Status>
DISVB...
DISVAV<Input>V<Status>
Current status for all available input ports.
DISVAV<Input>V<Status> Current status of a specific input port.
DISVI Command understood but currently not executable.
DISVL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Input> Integer 1 ... n Number of the input port
<Status> Boolean 0: off
1: on
Status of the input port
Comments
This command returns the Boolean status of the queried input port(s).
If the product has no physical input ports, this command returns the status of the logical input ports.
Examples
Ü DIS Query the status of all available input ports.
Û DISVBV^1 V^1
DISVBV 2 V 1
DISVAV 3 V 1
Current status for all available input ports.
Ü DISV^1 Query the status of the input port-1.
Û DISVAV^1 V^1 Current status of the input port-1 is "1".
See also
2 DIN – Configuration for digital inputs } Page  48
50 Commands and Responses​​ MT-SICS Interface Command

DOS – Digital output status...........................................................................................
Description
Use DOS to ask the actual status of the digital output ports. The number of output ports is dependent on the
product model type.
Syntax
Commands
DOS Query the status of all available output ports.
DOSV<Output> Query the status of a specific output port.
Responses
DOSVBV<Output>V<Status>
DOSVB...
DOSVAV<Output>V<Status>
Current status for all available output ports.
DOSVAV<Output>V<Status> Current status of a specific output port.
DOSVI Command understood but currently not executable.
DOSVL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Output> Integer 1 ... n Number of the output port
<Status> Boolean 0: off
1: on
Status of the output port
Comments
This command returns the boolean status of the queried output port(s).
If the product has no physical output ports, this command returns the status of the logical output ports.
Examples
Ü DOS Query the status of all available output ports.
Û DOSVBV^1 V^0
DOSVBV 2 V 0
DOSVBV 3 V 0
DOSVBV 4 V 0
DOSVAV 5 V 0
Current status for all available output ports.
Ü DOSV^1 Query the status of the output port-1.
Û DOSVAV^1 V^0 Current status of the output port-1 is "0".
See also
2 F01 – Automatic prefilling configuration } Page  59
2 F13 – Filling phase configuration } Page  77
2 F15 – Digital output function configuration } Page  80
MT-SICS Interface Command Commands and Responses​​ 51

DOT – Configuration for digital outputs...........................................................................
Description
Set or query the configuration for the digital outputs.
Syntax
Commands
DOT Query of the current configuration for the digital
outputs.
DOTV<Output>V<Duration>V<Delay> Set the configuration for the digital outputs.
Responses
DOTVBV<Output>V<Duration>V<Delay>
DOTVB...
DOTVAV<Output>V<Duration>V<Delay>
Current configuration for the digital output.
DOTVA Command understood and executed successfully.
DOTVI Command understood but currently not executable.
DOTVL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Output> Integer 1 ... n Number of digital output
<Duration> String 10 ... 
65535 ms
Duration time in ms
<Delay> Integer 0 ... 
65535 ms
Delay time in ms
Comments
Only one event can be programmed on each digital output.
The timing resolution: duration and delay are rounded up to the system resolution (usually 8 or 10 ms).
Example
Ü DOT Query the current configuration for the digital output.
Û DOTVAV^2 V^500 V^100 The digital output number 2 will increase the voltage
for a duration of 500 ms with a delay of 100 ms.
Digital outputs can be set with the commands:
[DOTC } Page  52 ], DOTP and [WMCF } Page  242 ].
See also
2 DOTC – Configurable digital outputs – Weight monitor } Page  52
2 WMCF – Configuration of the weight monitoring functions } Page  242
52 Commands and Responses​​ MT-SICS Interface Command

DOTC – Configurable digital outputs – Weight monitor.....................................................
Description
Use DOTC for weight monitoring functionality for dosing or check weighing application. Benefit is that this
function works without a PC or PLC.
Syntax
Commands
DOTC Query of the current configuration for the weight
monitor.
DOTCV<Output>V<Active> Set the configuration for the weight monitor.
DOTCV<Output>V<Active>V<Interface>V
<TargetValue>V<TargetUnit>V<Tol->V
<TolUnit>V<Tol+>V<TolUnit>V<State>
Set the configuration for the weight monitor.
Responses
DOTCVBV<Output>V<Active>
DOTCVB...
DOTCVAV<Output>V<Active>
Current configuration for the weight monitor.
DOTCVBV<Output>V<Active>V<Interface>V<-
TargetValue>V<TargetUnit>V<Tol->V
<TolUnit>V<Tol+>V<TolUnit>V<State>
DOTCVB...
DOTCVAV<Output>V<Active>V<Interface>V<-
TargetValue>V<TargetUnit>V<Tol->V
<TolUnit>V<Tol+>V<TolUnit>V<State>
Current configuration for the weight monitor.
DOTCVA Command understood and executed successfully.
DOTCVI Command understood but currently not executable.
DOTCVL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Output> Integer 1 ... n Number of digital output
<Active> Boolean 1 = on Command on DOT (n) active
0 = off
<Interface> Integer 0 ... n Observed interface, Interface number, see
[COM } Page  44 ]
<TargetValue> Float Target value
<TargetUnit> String Target unit, only available units permitted
<Tol-> <Tol+> Float Tolerance
<TolUnit> String Tolerance unit, available units and % permitted
<State> String S = only
stable
values
Trigger for the value state
D = only
dynamic
values
A = all
values,
S and D
Comments
Digital output must be available.
MT-SICS Interface Command Commands and Responses​​ 53

Only one command DOTC(n), DOTP(n) or [WMCF } Page 242 ] can be configured for the same digital
output.
Duration and delay from the digital output must be defined with the command [DOT } Page 51 ].
Target value will be rounded to the defined resolution from the load cell.
Target unit only allowed units are permitted.
The weight value monitoring function works only with a weight value command (e.g. SI, SIR).
The update rate depends on the defined UPD rate.
Tol- and Tol+ defined as % reference to the target value.
Only allowed units are permitted, see [M21 } Page 152 ].
Examples
Ü DOTCV^2 Query the current configuration for the weight monitor
on the second digital output (DOTV 2 ).
Û DOTCVAV^2 V^1 V^0 V^100 VgV^5 V%V^10 VgVS DOTV 2 will be set on every stable weight value on
Interface 0 between 100 g – 5 % +10 g.
Ü DOTCV^3 V^1 V^1 V^300 VgV^5 VmgV^1 VgVA Set the following configuration for the third digital
output (DOTV 3 ): DOTV 3 will be set on every value
(stable and unstable) on Interface 1 between 300 g
-5 mg +1 g.
Û DOTCVA Command understood and executed successfully.
Ü DOTCV^1 V^0 Deactivate DOTC on digital output 1 (DOTV 1 ). Other
settings like interface, TargetValue,... will be
unchanged.
Û DOTCVA Command understood and executed successfully.
Ü DOTCV^1 V^1 Activate DOTC on digital output 1 (DOTV 1 ). Old
settings will be used or default if newer defined.
Û DOTCVA Command understood and executed successfully.
See also
2 DOT – Configuration for digital outputs } Page  51
2 WMCF – Configuration of the weight monitoring functions } Page  242
54 Commands and Responses​​ MT-SICS Interface Command

DW – Show weight......................................................................................................
Description
Writes the current weight value to the balance display using the set unit. This command is used to reset the
display after using the D command.
Syntax
Command
DW Switch the main display to weight mode.
Responses
DWVA Command understood and executed successfully:
Main display shows the current weight value.
DWVI Command understood but currently not executable.
Comment
DW resets the balance display following a [D } Page 46 ] command.
Example
Ü DW Switch the main display to weight mode.
Û DWVA Main display shows the current weight value.
See also
2 D – Write text to display } Page  46
MT-SICS Interface Command Commands and Responses​​ 55

E01 – Current system error state....................................................................................
Description
This command queries severe and fatal system errors.
Syntax
Command
E01 Query of the current system error state.
Responses
E01V<ErrorCode>V<"ErrorMessage"> Current error code and message.
E01VI Command understood but currently not executable.
Parameters
Name Type Values Meaning
Integer (^0) No error
(^4) EEPROM error
(^5) Wrong cell data
(^6) No standard calibration
(^7) Program memory defect
(^9) Temperature sensor defect
(^16) Wrong load cell brand
(^17) Wrong type data set
(^100) Memory full
(^101) Battery backup lost
<"ErrorMessage"> String 128 chars Error text message in UTF-8
Comments

UTF-8 is ASCII compatible if only the code of the first 127 characters is used.
The ErrorMessage is language dependent and can be switched by M15.
The error code and message will change as soon as the device detects an other state i.e. after a restart or
reset.
If the device is able to detect multiple error s in parallel then only the most critical error (lowest error
number) is stated.
Example
Ü E01 Query of the current system error state.
Û E01V^101 V"БАТАРЕЯVСЕЛАV-
VПРОВЕРЬVДАТУVИVВРЕМЯ"
The last device error is "BATTERY BACKUP LOST -
CHECK DATE TIME SETTINGS". The selected language
is Russian.
56 Commands and Responses​​ MT-SICS Interface Command

E02 – Weighing device errors and warnings...................................................................
Description
Use E02 to ask the active errors and warnings of the weighing device. The list of the errors and warnings is
always product-specific.
Syntax
Command
E02 Query active errors and warnings of the weighing
device.
Responses
E02V<ErrorCode> Weighing device returns the error code.
E02VI Command understood but currently not executable.
Parameter
Name Type Values Meaning
<ErrorCode> Bit set
(32 bits) ∑
=
Bit
ErrorCode 2 Error code including all device errors and
warnings
Comments
This command returns the error code of the weighing device which is a combination of bits for active errors
and warnings. Error code of the device is calculated according to the following formula, where bits represent
the respective warnings and error conditions:
=∑
ErrorCode 2 Bit
The list of errors and warnings is always product-specific. Refer to the corresponding user manual of the
product for a complete list of device errors and warnings.
The bits for the warning and error conditions are explained in the table below. SLP85xD load cells are taken as
example:
Bit Error
Code
Meaning Error / Warning Condition Weighing Response
0 10 Non-volatile data memory
error (EEPROM)
Error during read/write
process
Send the error code instead of
the weight value
1 102 Zero drift error Zero drift (actual zero Example: SVSV^102
compared to user calibrated
zero) > 10% of maximum
capacity
2 103 Supply voltage error Supply voltage > 33V
3 104 PCBA temperature error PCBA (main board)
temperature > 80 °C
MT-SICS Interface Command Commands and Responses​​ 57

Bit Error
Code
Meaning Error / Warning Condition Weighing Response
4 200 Measuring sensor temperature
warning
Temperature of the measuring
sensor is out of the
compensated range
[-10 °C ... 40 °C]
Send weight value
Example: SVSV 10 Vg
5 201 Measuring sensor temperature
gradient warning
Temperature change of the
measuring sensor is out of
tolerance
(∆T / ∆t > 0.5 ⁰C / 60 s)
6 202 PCBA temperature warning 70 °C < PCBA (main board)
temperature < 80 °C
7 203 Supply voltage warning Supply voltage is out of
tolerances [10V ...  ... 30V]
8 204 Zero drift warning 1% of max. cap. < zero drift
(actual zero compared to user
calibrated zero) < 10% of
max. cap.
9 205 Load cell overload Weight value > Maximum
capacity
11
...
31
0 Reserved for future use None
Examples
Ü E02 Query active errors and warnings of the weighing
device.
Û E02VAV^8 PCBA (main board) temperature is higher than 80 °C.
Device returns the error code 104 to weight request
commands.
Ü E02 Query active errors and warnings of the weighing
device.
Û E02VAV102 (2^6  + 2^7 ) PCBA (main board) temperature is higher than 70 °C
and supply voltage is out of tolerances.
See also
2 E03 – Current system errors and warnings } Page  58
58 Commands and Responses​​ MT-SICS Interface Command

E03 – Current system errors and warnings.....................................................................
Description
Use E03 to ask the current errors and warnings of the weighing device together with the error code and the error
message.
Syntax
Command
E03 Query current errors and warnings of the weighing
device.
Responses
E03VAV<Index>V<Code>V<Message> Weighing device returns the error code and the error
message.
E03VI Command understood but currently not executable.
Parameters
Name Type Values Meaning
<Index> Integer 0 ... 31 Index for the error code and message
Integer (^0) No error
(^10) Non-volatile data memory error (EEPROM)
(^102) Zero drift error
(^103) Supply voltage error
(^104) PCBA temperature error
(^200) Measuring sensor temperature warning
(^201) Measuring sensor temperature gradient warning
(^202) PCBA temperature warning
(^203) Supply voltage warning
(^204) Zero drift warning
(^205) Load cell overload
String 128 chars Error text message in UTF-8
Comment

UTF-8 is ASCII compatible if only the code of the first 127 characters is used.
Examples
Ü E03 Query current errors and warnings of the weighing
device.
Û E03VAV^0 V^0 V"No error" Weighing device returns the error code and the error
message.
Ü E03 Query current errors and warnings of the weighing
device.
Û E03VBV^0 V^104 V"PCBA temperature error"
E03VAV 1 V 203 V"Supply voltage warning"
Weighing device returns active error codes and corre-
sponding messages.
See also
2 E02 – Weighing device errors and warnings } Page  56
MT-SICS Interface Command Commands and Responses​​ 59

F01 – Automatic prefilling configuration..........................................................................
Description
Use F01 to activate or deactivate the prefilling process, to assign digital outputs to the prefilling process and to
set the prefilling duration.
Syntax
Commands
F01 Query the current configuration for automatic prefilling
function.
F01V<Active>V<OutputOn>V<Duration> Set the configuration for the automatic prefilling
function.
Responses
F01VAV<Active>V<OutputOn>V<Duration> Current configuration for automatic prefilling function.
F01VA Command understood and executed successfully.
F01VI Command understood but currently not executable.
F01VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Active> Boolean 0: off
1: on
Activate / deactivate the prefilling function
<OutputOn> Bit set
(8 bits) ∑
=
output ports on
OutputOn 2 Bit Set of digital outputs which will remain
high during prefilling
<Duration> Float 0 ... 65535 ms Prefilling duration
Comments
Target of the prefilling is to start the filling process with a low speed in order to avoid the foaming of the
liquid in-side the container.
defines which output ports are assigned to the prefilling process. This parameter is calculated
as a bit set. See the table below for the definition of the bit set:
Bit 7 Bit 6 Bit 5 Bit 4 Bit 3 Bit 2 Bit 1 Bit 0
Output-8 Output-7 Output-6 Output-5 Output-4 Output-3 Output-2 Output-1
Examples
Ü F01 Query the current configuration for automatic prefilling
function.
Û F01VAV^1 V^12 V^500 Prefilling is activated and the digital outputs 3 and 4
are assigned to this process (2^2  + 2^3  = 12). This
process will last for 500 ms.
Ü F01V^1 V^5 V^100 Activate prefilling with the digital outputs 3 and 1
(5 = 2^2  + 2^0 ) and a duration of 100 ms.
Û F01VA Command understood and executed successfully.
60 Commands and Responses​​ MT-SICS Interface Command

F02 – Material filling duration configuration....................................................................
Description
Use F02 to configure the material filling duration for filling applications. This is the waiting time in order to
capture the filling material in the air after all filling valves are shut.
Syntax
Commands
F02 Query the current configuration for material filling
duration.
F02V<Duration> Set the configuration for the material filling duration.
Responses
F02VAV<Duration> Current configuration for material filling duration.
F02VA Command understood and executed successfully.
F02VI Command understood but currently not executable.
F02VL Command understood but not executable (incorrect
parameter).
Parameter
Name Type Values Meaning
<Duration> Float 0 ...
65535 ms
Material filling duration
Comment
Target of the material filling duration is to wait for the filling material that is still in the air after all filling
valves are closed and to capture this material inside the container.
Examples
Ü F02 Query the current configuration for material filling
duration.
Û F02VAV^400 Material filling duration is configured as 400 ms.
Ü F02V^200 Set material filling duration to 200 ms.
Û F02VA Command understood and executed successfully.
MT-SICS Interface Command Commands and Responses​​ 61

F03 – Automatic refilling configuration...........................................................................
Description
Use F03 to activate or deactivate the refilling function. It automatically sets the selected output port for a time
calculated by the optimization function.
Syntax
Commands
F03 Query the current configuration for the automatic
refilling function.
F03V<Active> Activate or deactivate the automatic refilling function.
Responses
F03VAV<Active> Current status of automatic refilling function.
F03VA Command understood and executed successfully.
F03VI Command understood but currently not executable.
F03VL Command understood but not executable (incorrect
parameter).
Parameter
Name Type Values Meaning
<Active> Boolean 0: off
1: on
Activate / deactivate the automatic refilling function
Comments
Target of the automatic refilling function is to fill the container up to the target weight automatically, in case
the actual final weight is less than the target reference weight.
For the refilling function, the output port(s) is/are selected automatically which is/are connected to the
valve(s) that control(s) the final part of the filling process (fine filling).
The selected output port(s) will be activated and it/they will remain high for certain duration.
Examples
Ü F03 Query the current configuration for automatic refilling
function.
Û F03VAV^0 Automatic refilling function is not active.
Ü F03V^1 Activate the automatic refilling function.
Û F03VA Command understood and executed successfully.
See also
2 F13 – Filling phase configuration } Page  77
2 F15 – Digital output function configuration } Page  80
62 Commands and Responses​​ MT-SICS Interface Command

F04 – Target weight configuration..................................................................................
Description
Use F04 to set a target reference weight for the filling application.
Syntax
Commands
F04 Query the reference target weight.
F04V<TargetWeight>V<Unit>V<NegTolP>V
<PosTolP>
Configure the reference target weight.
Responses
F04VAV<TargetWeight>V<Unit>V<NegTolP>V
<PosTolP>
Current configuration of the target weight.
F04VA Command understood and executed successfully.
F04VI Command understood but currently not executable.
F04VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<TargetWeight> Float Reference target weight
<Unit> String g, mg or
ug
Unit of the reference target weight
<NegTolP> Float % Negative tolerance limit given as percentage of
<TargetWeight>
<PosTolP> Float % Positive tolerance limit given as percentage of
<TargetWeight>
Comments
Actual final weight is compared to reference target weight to determine the success of the filling application.
Optimization- and refilling functions do their calculations based on the target weight.
Filling function is deactivated if the target weight is configured as F04V 0.
Examples
Ü F04 Query the reference target weight.
Û F04VAV^1000 VgV^1 V^2 Reference target weight is configured as 1000 g with
negative tolerance limit of 1% (- 10 g) and positive
tolerance limit of 2% (+ 20 g).
Ü F04V^2000 VgV^5 V^5 Define the reference target weight as 2000 g with
negative and positive tolerance limits of 5%
(± 100 g).
Û F04VA Command understood and executed successfully.
See also
2 F03 – Automatic refilling configuration } Page  61
2 F05 – Optimization function configuration } Page  63
MT-SICS Interface Command Commands and Responses​​ 63

F05 – Optimization function configuration.......................................................................
Description
Use F05 to activate or deactivate the optimization function and configure the optimization method and its
degree. Optimization function is used to reconfigure the cut-off points for the valves automatically in case of a
mismatch between the reference target weight and the actual final weight.
Syntax
Commands
F05 Query the configuration of the optimization function.
F05V<Active>V<Method>V<Degree> Configure the optimization function.
Responses
F05VAV<Active>V<Method>V<Degree> Current configuration of the optimization function.
F05VA Command understood and executed successfully.
F05VI Command understood but currently not executable.
F05VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Active> Boolean 0: off
1: on
Activate / deactivate the optimization function
Integer (^1) Feedback optimization-1
(^2) Feedback optimization-2
(^3) Feed forward optimization
(^4) Both method 1 and 3
(^5) Both method 2 and 3
Integer (^1) High optimization degree
(^2) Medium optimization degree
(^3) Low optimization degree
Comments

Optimization function has the purpose of reconfiguring the cut-off points within the actual or subsequent
filling cycle such that the actual final weight stays within tolerances in shortest filling time.
Different methods for the optimization are explained below:
Method-1
In this method, the biggest cut-off point is optimized according to the deviation from the target weight. All other
cut-off points are reconfigured according to the optimization step of the biggest cut-off point.
With this method, actual filling weight is optimized based on the deviation from the reference target weight.
Method-2
In this method, all cut-off points are optimized according to the biggest cut-off point such that the filling time is
reduced as much as possible.
With this method, all cut-off points are brought closer to the biggest cut-off point, thus total filling time is
reduced.
Method-3
This method can be used, if there is a variable (not constant) flow rate from one or all of the filling valves. In
this case, the average value of the variable flow rate over the last 10 filling cycles is calculated and the biggest
cut-off point is optimized based on this value.
64 Commands and Responses​​ MT-SICS Interface Command

Method-4
Set both method 1 and method 3.
Method-5
Set both method 2 and method 3.
You can refer to the operating instructions of the SLP85xD load cells for more details regarding optimization
calculations.
Examples
Ü F05 Query the status of the optimization function.
Û F05VAV^1 V^1 V^1 Optimization function is activated with feedback
optimization-1 and high optimization degree.
Ü F05V^1 V^2 V^3 Activate the optimization function with feedback
optimization-2 and low optimization degree.
Û F05VA Command understood and executed successfully.
See also
2 F04 – Target weight configuration } Page  62
2 F13 – Filling phase configuration } Page  77
MT-SICS Interface Command Commands and Responses​​ 65

F06 – Weight monitor function configuration...................................................................
Description
Use F06 to configure the weight monitor function. This function can be configured to monitor the filling process
based on weight increase.
Syntax
Commands
F06 Query the current configuration for weight monitor
function.
F06V<N> Query the current configuration for a certain normal
filling process.
F06V<N>V<Active>V<Delta>V<Unit> Set the configuration for weight monitor function.
Responses
F06VBV<N>V<Active>V<Delta>V<Unit>
F06VBV...
F06VAV<N>VActive>V<Delta>V<Unit>
Current configuration for weight monitor function.
F06VAV<N>VActive>V<Delta>V<Unit> Current configuration for a certain normal filling
process,
F06VA Command understood and executed successfully.
F06VI Command understood but currently not executable.
F06VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<N> Integer 1 ... 5 Number of the normal filling process which will be
monitored with this function
<Active> Boolean 0: off
1: on
Activate / deactivate the weight monitor function
<Delta> Float The difference between the filling characteristic curve
and monitor characteristic curve
<Unit> String g, mg Unit of the parameter <Delta>
Comments
When activated, this function builds a monitor curve which sets the lower limit for the actual filling curve. If
the actual filling curve goes below the monitor curve, this implies that there is an error in the filling appli-
cation. This error is interpreted as bag/bottle breakage.
If this error occurs, following steps are taken:
Remaining filling process is stopped
Error bit for the bag/bottle breakage is set, see command [F09 – Filling application status } Page 70 ]
Set the output I/O port if configured as "Alarm" message
After the error condition is removed, filling process can be continued with the F10V 2 command.
You can refer to the operating instructions of the SLP85xD load cells for more details regarding the definition
of the weight monitor function.
66 Commands and Responses​​ MT-SICS Interface Command

Examples
Ü F06 Query the current configuration for weight monitor
function.
Û F06VBV^1 V^1 V^1 Vg
F06VBV 2 V 1 V 1 Vg
F06VBV 3 V 1 V 1 Vg
F06VBV 4 V 1 V 1 Vg
F06VAV 5 V 1 V 1 Vg
Weight monitor function is activated for all filling
phases and follows the characteristic filling curve with
a delta parameter of 1 g.
Ü F06V^2 Query the current configuration for 2nd filling phase.
Û F06VAV^2 V^1 V^1 Vg Filling monitor function is activated for the 2nd filling
phase and follows the actual filling curve with a
distance of 1 g.
or
Û F06VAV^2 V^0 V^1 Vg Weight monitor function is deactivated for 2nd filling
phase.
See also
2 F09 – Filling application status } Page  70
2 F13 – Filling phase configuration } Page  77
MT-SICS Interface Command Commands and Responses​​ 67

F07 – Time monitor function configuration......................................................................
Description
Use F07 to configure the weight monitor function. This function can be configured to monitor the filling process
based on time.
Syntax
Commands
F07 Query the current configuration for time monitor
function.
F07V<N> Query the current configuration for a certain cut-off
point.
F07V<N>V<Active>V<TOUT> Set the configuration for time monitor function.
Responses
F07VBV<N>V<Active>V<TOUT>
F07VBV...
F07VAV<N>VActive>V<TOUT>
Current configuration for time monitor function.
F07VAV<N>VActive>V<TOUT> Current configuration for a certain cut-off point.
F07VA Command understood and executed successfully.
F07VI Command understood but currently not executable.
F07VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<N> Integer 1 ... 5 Number of the cut-off point
<Active> Boolean 0: off
1: on
Activate / deactivate the time monitor function
<TOUT> Float Time-out duration for the selected cut-off point given in
seconds
Comments
This type of monitor function can be used to monitor whether filling material is filled continuously. If filling is
interrupted, it can be understood based on the timeout parameters at which filling phase the problem has
occurred.
If one of the timeout parameters is exceeded, remaining filling process is stopped and the corresponding
error bit is set , see command [F09 – Filling application status } Page 70 ]. This error is inter-
preted as the interruption of the filling material.
After the error condition is removed, filling process can be continued with the F10V 2 command.
You can refer to the operating instructions of the SLP85xD load cells for more details regarding the definition
of the time monitor function.
Examples
Ü F07 Query the current configuration for time monitor
function.
Û F07VBV^1 V^1 V1.5
F07VBV 2 V 1 V2.5
F07VBV 3 V 0 V 0
F07VBV 4 V 0 V 0
F07VAV 5 V 0 V 0
Time monitor function is activated with the timeout
durations of 1.5 s for cut-off point-1 and 2.5 s for the
cut-off point-2. Time monitor function is not activated
for the cut-off points 3, 4 and 5.
68 Commands and Responses​​ MT-SICS Interface Command

Ü F07V^1 V^1 V^2 Activate the time monitor function for the 1st cut-off
point with a timeout duration of 2 s.
Û F07VA Command understood and executed successfully.
or
Ü F07V^2 Query the current configuration for 2nd cut-off point.
Û F07VAV^2 V^0 V0.0 Time monitor function is deactivated for 2nd cut-off
point.
See also
2 F09 – Filling application status } Page  70
2 F13 – Filling phase configuration } Page  77
MT-SICS Interface Command Commands and Responses​​ 69

F08 – Filling statistics..................................................................................................
Description
Use F08 to query or reset the statistics of the filling application.
Syntax
Commands
F08 Query the statistics for the filling application.
F08V (^0) Reset the statistics for the filling application.
Responses
F08VAVVVVV
VV
Current statistics for the filling application.
F08VA Command understood and executed successfully.
F08VI Command understood but currently not executable.
F08VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
Float Mean value of all actual filling results
Float Standard deviation of all actual filling results
Float Accumulated weight value of all previous filling cycles
Float Number of total filling cycles
Float Last filling result recorded by the load cell
String g, mg, ug Unit of the weight parameters
Float Last total filling time recorded by the load cell. Unit
given in seconds (s)
Comments

Filling statistics are calculated by the load cell on a continuous basis, until it is reset by the user with the
F08V 0 command.
Only successful filling cycles are reflected in the statistics which are not interrupted by manual intervention
or aborted due to an error.
Examples
Ü F08 Query the statistics for the filling application.
Û F08VAV1000.050V1.5V1000000.050V
1000 V1000.100VgV4.050
Mean weight value of the filled containers is
1000.050 g with a standard deviation of 1.5 g, and
the accumulated weight value of all previous filling
cycles is 1000.050 kg. In total, 1000 filling cycles
have elapsed.
Last filling cycle resulted with 1000.100 g as the final
weight and 4.050 seconds as the filling time.
Ü F08V^0 Reset the filling statistics.
Û F08VA Command understood and executed successfully.
70 Commands and Responses​​ MT-SICS Interface Command

F09 – Filling application status......................................................................................
Description
Use F09 to query the status of the filling application.
Syntax
Command
F09 Query the status of the filling application.
Responses
F09VAV<Status> Current status of the filling application.
F09VA Command understood and executed successfully.
F09VI Command understood but currently not executable.
Parameter
Name Type Values Meaning
<Status> Bit Set
= ∑
statusbit on
Bit
Status 2 Status of the filling application calculated
as bit set
Refer to the table under the comments for
the definition of the individual bits
Comments
Filling application status is calculated as a bit set according to the following table:
Bit Designation Status / Error Condition
0 General Status Bit Set if any other bit is 1
1 TareWeight+ Set if container weight > upper limit for tare weight
2 TareWeight- Set if container weight < lower limit for tare weight
3 TOUT1 Set if filling time until 1st cut-off point > timeout parameter-1
4 TOUT2 Set if filling time until 2nd cut-off point > timeout parameter-2
5 TOUT3 Set if filling time until 3rd cut-off point > timeout parameter-3
6 TOUT4 Set if filling time until 4th cut-off point > timeout parameter-4
7 TOUT5 Set if filling time until 4th cut-off point > timeout parameter-5
8 Bag/Bottle Breakage Set if the weight value of the actual filling curve < weight value of the monitor
characteristic curve
9 TOL- Set if the final filling weight < lower tolerance limit of target weight
10 TOL+ Set if the final filling weight > upper tolerance limit of target weight
11 EMPTY Remains high during the emptying process, see command [F16 – Emptying
function configuration } Page 82 ]
12 READY Set once final filling weight is determined and reset once a new container is
placed
13 RESERVED
14 RESERVED
15 RESERVED
The general status bit is set automatically if one of the error bits (Bit-1 to Bit-10) is set.
Filling application is stopped automatically, if one of the error bits (Bit-1 to Bit-8) is set.
The values in this register are reset automatically once run or abort command, see command [F10 –
Control filling } Page 72 ] is received by the weighing device.
The status bits (READY & EMPTY) can be monitored by the control system to check when it is the right time
to place a new empty container on the weighing platform after a filling cycle is finished.
MT-SICS Interface Command Commands and Responses​​ 71

Example
Ü F09 Query the statistics for the filling application.
Û F09VAV^97 Following conditions are met; (97 = 1100001B):
Timeout for 3th cut-off point is reached.
Timeout for 4th cut-off point is reached.
See also
2 F10 – Control filling } Page  72
72 Commands and Responses​​ MT-SICS Interface Command

F10 – Control filling.....................................................................................................
Description
Use F10 to control the state of the filling application.
Syntax
Command
F10V<Action> Change the status of the filling control.
Responses
F10VAV<Action> Status of the filling control is changed.
F10VA Command understood and executed successfully.
F10VI Command understood but currently not executable.
F10VL Command understood but not executable (incorrect
parameter).
Parameter
Name Type Values Meaning
Integer (^0) Run the filling application
(^1) Abort the filling application
(^2) Resume the filling application
Comments

After power-on, the device enters into initial state. Based on the state of the device, different filling control
commands are possible:
Run F10V 0 : Start the filling cycle from the initial or suspended state, and clear all the filling application
status F09. That means that a new filling cycle will start.
Abort F10V 1 : Cancel or interrupt the filling cycle when in the running state.
Resume F10V 2 : Continue the filling cycle from the suspended state.
Running
Suspended
Ini al state
Abort
Run
Filling finished/Applica on Error
Run
Resume
Once the filling cycle is finished or there are application errors, device enters into the suspended state.
Under suspended status, user can send Resume F10V 2 command to continue the unfinished filling cycle,
or send the Run F10V 0 command to start a new filling cycle. Main difference between the "Resume" and
"Run" commands is that "Run" command will clear all the filling application status F09, whereas the
"Resume" command doesn`t change the content of the filling application status.
If the device is in the suspended status and user wants to start a new filling process, it only needs to send
the "Run" command. It is not necessary to return from the "Suspended" status to the "Initial" State.
MT-SICS Interface Command Commands and Responses​​ 73

Example
Ü F10V^0 Run the filling application.
Û F10VA Command understood and executed successfully.
See also
2 F11 – Report filling state } Page  74
74 Commands and Responses​​ MT-SICS Interface Command

F11 – Report filling state...............................................................................................
Description
Use F11 to query the current state of the filling application.
Syntax
Command
F11 Query the current state of the filling application.
Responses
F11VAV<State> Current state of the filling application.
F11VI Command understood but currently not executable.
F11VL Command understood but not executable (incorrect
parameter).
Parameter
Name Type Values Meaning
Integer (^0) Initial state
(^1) Running
(^2) Suspended / Finished
Comments

Use F11 to query the state of the filling machine before sending the filling control command F10.
Following states are possible:
Initial state : After power-on, the device enters into initial state.
Running state : Filling application is running.
Suspended / Finished state : Once the filling cycle is finished or there are application errors, device
enters into the suspended state. Under suspended status, user can send Resume F10V 2 command to
continue the unfinished filling cycle, or send the Run F10V 0 command to start a new filling cycle.
Running
Suspended
Ini al state
Abort
Run
Filling finished/Applica on Error
Run
Resume
Example
Ü F11 Query the current state of the filling application.
Û F11V^1 Filling application is running.
See also
2 F10 – Control filling } Page  72
MT-SICS Interface Command Commands and Responses​​ 75

F12 – Filling stability criteria configuration......................................................................
Description
Use F12 to define the stability criteria for the final control weighing of the filled material.
Syntax
Commands
F12 Query the stability criteria for the final control
weighing.
F12V<Tol>V<ObserTimeOut>V
<StabTimeOut>
Define the stability criteria for the final control
weighing.
Responses
F12VAV<Tol>V<ObserTimeOut>V
<StabTimeOut>
Current configuration of the stability criteria for the final
control weighing.
F12VA Command understood and executed successfully.
F12VI Command understood but currently not executable.
F12VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Tol> Float 0.1 ... 1000Tolerance in digits (smallest weight increment) within
which the value must stay to be regarded as stable
<ObserTimeOut> Float 0 ... 32535 Observation time in milliseconds during which the
value must stay within tolerance in order to be
regarded as stable
<StabTimeOut> Float 0 ... 32535 Stabilization timeout in milliseconds. If this duration is
reached during control weighing, last measured value
will be taken as the final weight result, regardless from
the fulfillment of the stabilization criteria
Comment
During stabilization timeout , actual weight is tested for stability. If the stability condition is
met, that means if the actual weight value stays within for the duration of , this is
determined as the filling result, even if the stabilization timeout has not yet expired. In any
case, the last weight value will be taken as the filling result when the stabilization timeout
has expired.
Examples
Ü F12 Query the stability criteria for the final control
weighing.
Û F12VAV1.0V^200 V^1000 Final weight has to stay within 1 digit for the duration
of 200 ms in order to be regarded as stable. Last
measured value will be taken as the filling result after
1000 ms has expired since the start of control
weighing.
76 Commands and Responses​​ MT-SICS Interface Command

Ü F12V5.0V^300 V^500 Set stability criteria as follows: Final weight has to stay
within 5 digits for 300 ms in order to be regarded as
stable. However, last measured value will be taken as
the filling result if 500 ms expires without a stable
weight value being detected.
Û F12VA Command understood and executed successfully.
MT-SICS Interface Command Commands and Responses​​ 77

F13 – Filling phase configuration...................................................................................
Description
Use F13 to set the configuration for different filling phases. Up to 5 different filling phases can be configured.
Syntax
Commands
F13 Query the configuration for the filling phases.
F13V<N> Query the current configuration for a specific filling
phase.
F13V<N>V<Active>V<OutputOn>V<Weight-
N>V<Unit>V<LockDurationN>
Set the configuration for a specific filling phase.
Responses
F13VBV<N>V<Active>V<OutputOn>V
<WeightN>V<Unit>V<LockDurationN>
...
F13VAV<N>V<Active>V<OutputOn>V
<WeightN>V<Unit>V<LockDurationN>
Current configuration for the filling phases.
F13VAV<N>V<Active>V<OutputOn>V
<WeightN>V<Unit>V<LockDurationN>
Current configuration for a specific filling phase.
F13VA Command understood and executed successfully.
F13VI Command understood but currently not executable.
F13VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<N> Integer 1 ... 5 Number of the filling phase
<Active> Boolean 0: off
1: on
Activate / deactivate selected filling phase
<OutputOn> Bit set
= ∑
output ports on
OutputOn 2 Bit Set of the digital outputs which will
remain high during the selected filling
phase
<WeightN> Float Upper limit value (cut-off point) for the
selected filling phase
<Unit> String g, mg, ug Available units for the cut-off point
<LockDurationN> Float 0 ... 65535 Lock-out duration given in milliseconds
Comments
Filling phases can be configured with an upper limit value (cut-off point) and lock-out duration. User can
assign to each filling phase a set of output ports. Assigned output port(s) will remain high (logic 1) until
the upper limit value (cut-off point) and they will be reset (logic 0) if the upper limit value (cut-off point)
has been exceeded.
Filling phases must be defined in correct sequence (1 → 2 → 3 → 4 → 5).
Lock-out duration is defined as the time duration which prevents current filling phase from being cut off
prematurely as a result of peak loads (overshoot).
78 Commands and Responses​​ MT-SICS Interface Command

Example
Ü F13 Query the configuration for the filling phases.
Û F13VBV^1 V^1 V^3 V500.0VgV^250
F13VBV 2 V 1 V 6 V850.0VgV 100
F13VBV 3 V 0 V 0 V0.0VgV 0
F13VBV 4 V 0 V 0 V0.0VgV 0
F13VBV 5 V 0 V 0 V0.0VgV 0
Filling phase-1 is activated and is controlled by output
ports 1 and 2 (3=00011B) which will remain high
until 500 g is measured by the load cell. After filling
phase-1 is activated, a lock-out time of 250 ms will
be introduced where monitored weight values are not
allowed to change the filling phase.
Filling phase-2 is activated and is controlled by output
ports 2 and 3 (6=00110B) which will remain high
between 500 g and 850 g. After filling phase-2 is
activated (at 500 g), a lock-out time of 100 ms will
be introduced where monitored weight values are not
allowed to change the filling phase.
All other normal filling processes are not activated.
MT-SICS Interface Command Commands and Responses​​ 79

F14 – Automatic tare configuration................................................................................
Description
Use F14 to configure the automatic tare function.
Syntax
Commands
F14 Query the configuration for the automatic tare function.
F14V<Active>V<Weight>V<Unit>V
<LowTolP>V<UppTolP>V<Delay>
Set the configuration for the automatic tare function.
Responses
F14VAV<Active>V<Weight>V<Unit>V
<LowTolP>V<UppTolP>V<Delay>
Current configuration for the automatic tare function.
F14VA Command understood and executed successfully.
F14VI Command understood but currently not executable.
F14VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Active> Boolean 0: off
1: on
Activate / deactivate automatic tare function
<Weight> Float Expected weight of the container
<Unit> String g, mg, ug Available units for the expected container weight
<LowTolP> Float % Lower tolerance limit for the tare weight given as % of
the expected container weight
<UppTolP> Float % Upper tolerance limit for the tare weight given as % of
the expected container weight
<Delay> Float 0 ... 65535 Introduced delay for the automatic tare function given
in milliseconds
Comments
Automatic tare function can be activated if the expected container weight is known.
If the actual container weight is less than the lower tolerance limit of the expected container weight,
"TareWeight-" bit is set in the filling application status register, see command [F09 – Filling application
status } Page 70 ] and the filling application is stopped.
If the actual container weight is more than the upper tolerance limit of the expected container weight,
"TareWeight+" bit is set in the filling application status register, see command [F09 – Filling application
status } Page 70 ] and the filling application is stopped.
Example
Ü F14 Query the configuration for the automatic tare function.
Û F14VAV^1 V50.0VgV2.0V1.0V^500 Automatic tare function is activated. Container weight
has to be between 49 g (50 g – 2%) and 50.5 g
(50 g + 1%) in order to be accepted. 500 ms delay
is introduced after the entry of the start trigger to
perform tare.
See also
2 F09 – Filling application status } Page  70
80 Commands and Responses​​ MT-SICS Interface Command

F15 – Digital output function configuration......................................................................
Description
Use F15 to assign roles to digital output ports.
Syntax
Commands
F15 Query the roles of all digital output ports.
F15V<Output>V<Function> Query the role of a specific digital output port.
Responses
F15VBV<Output>V<Function>
...
F15VAV<Output>V<Function>
Current assigned roles for all output ports.
F15VAV<Output>V<Function> Current assigned role for a specific output port.
F15VA Command understood and executed successfully.
F15VI Command understood but currently not executable.
F15VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Output> Integer 1 ... 5 Number of the digital output port
Integer (^0) No function
(^1) Ready Signal
(^2) Empty Signal
(^3) Alarm Signal
(^4) Valve Control
Comments

Only a single function can be assigned to each output port.
Same function can be assigned to multiple output ports except the alarm function. If one output is set to
"Alarm" function, another output which is already set to "Alarm" will be set to "No function" automatically,
because only one output can be set as alarm.
If the role of one output port is set or changed for the "Valve" function, then all the settings for the
commands F01, F03 and F13 must be checked for consistency.
The values that these functions can take are given in the table below:
Function Condition for "0" Condition for "1"
NoFunction Always Never
Ready Signal By default "READY" bit is set, see command [F09 – Filling application
status } Page 70 ]
Empty Signal By default "EMPTY" bit is set, see command [F09 – Filling application
status } Page 70 ]
Alarm Signal By default "General Status Bit" bit is set, see command [F09 – Filling appli-
cation status } Page 70 ]
Valve Control By default Based on the status of the filling application, see command [F01
- Automatic prefilling configuration } Page 59 ], [F03 – Automatic
refilling configuration } Page 61 ], [F13 – Filling phase configu-
ration } Page 77 ]
MT-SICS Interface Command Commands and Responses​​ 81

Example
Ü F15 Query the roles of all digital output ports.
Û F15VBV^1 V^1
F15VBV 2 V 2
F15VBV 3 V 3
F15VBV 4 V 4
F15VAV 5 V 4
Following functions are assigned to the digital output
ports:
Output-1: "Ready Signal".
Output-2: "Empty Signal".
Output-3: "Alarm Signal".
Output-4 and Output-5: "Valve Control".
See also
2 F01 – Automatic prefilling configuration } Page  59
2 F03 – Automatic refilling configuration } Page  61
2 F13 – Filling phase configuration } Page  77
82 Commands and Responses​​ MT-SICS Interface Command

F16 – Emptying function configuration...........................................................................
Description
Use F16 to set the durations for the emptying and zeroing functions.
Syntax
Commands
F16 Query the status for the emptying and zeroing
functions.
F16V<Active>V<EmptyDuration>V
<ZeroDuration>
Set the durations for the emptying and zeroing
functions.
Responses
F16VAV<Active>V<EmptyDuration>V
<ZeroDuration>
Current status for the emptying and zeroing functions.
F16VA Command understood and executed successfully.
F16VI Command understood but currently not executable.
F16VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Active> Boolean 0: off
1: on
Activate / deactivate emptying and zeroing functions
<EmptyDuration> Float 0 to
65535
Bottle/container unloading time in milliseconds during
which the "Empty" signal is active
<ZeroDuration> Float 0 to
65535
Waiting time after the bottle/container is removed,
before sending the zero command to the load cell
Comments
During the , the "Empty" signal is active, and indicates that the bottle/container is being
removed from the platform of the weighing device.
After the , if the filling process is controlled by gross weight, then the application must
wait for the to send the zero command in order to keep the filling accuracy; if the filling
process is controlled by the net weight, this process is skipped.
Example
Ü F16 Query the status for the emptying and zeroing
functions.
Û F16VAV^1 V^500 V^1000 Emptying and zeroing functions are activated. Current
configured is 500 ms, and the
is 1000 ms.
See also
2 F09 – Filling application status } Page  70
MT-SICS Interface Command Commands and Responses​​ 83

FCUT – Filter characteristics (cut-off frequency)...............................................................
Description
Use FCUT to set the cut-off frequency of the fixed filter.
Syntax
Commands
FCUT Query cut-off frequency.
FCUTV<Frequency> Set cut-off frequency.
Responses
FCUTVAV<Frequency> Current cut-off frequency.
FCUTVA Command understood and executed successfully.
FCUTVI Command understood but currently not executable.
FCUTVL Command understood but not executable (incorrect
parameter).
Parameter
Name Type Values Meaning
<Frequency> Float 0 or <
0.001 Hz
not active (M02 active)
0.001 Hz
20.0 Hz
Cut-off frequency
Comments
To use the command FCUT you have to set [M01 } Page 144 ] to 2 and ≥ 0.001 Hz.
If FCUT is activated ( ≥ 0.001 Hz), it will override any settings for ambient conditions
([M02 } Page 145 ]) in sensor mode.
Examples
Ü FCUT Query actual cut-off frequency.
Û FCUTVAV0.1 Actual cut-off frequency is 0.1 Hz.
Ü M01V^2 Change weighing mode to sensor mode to enable
FCUT.
Û M01VA Command understood and executed successfully.
Û FCUTV3.0 Set cut-off frequency to 3.0 Hz.
Û FCUTVA Command understood and executed successfully.
See also
2 M01 – Weighing mode } Page  144
2 M02 – Environment condition } Page  145
84 Commands and Responses​​ MT-SICS Interface Command

FSET – Reset all settings to factory defaults.....................................................................
Description
Use FSET to reset all settings to factory defaults.
Syntax
Command
FSETV<Exclusion> Resets all user and interface settings as well as the
customer calibration to factory settings.
Responses
FSETVA Command understood and executed successfully.
FSETVL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
Integer (^0) Communication parameters are not reset
(^1) Resets all settings
(^2) Communication parameters and adjustment
([C0 } Page 22 ], [C1 } Page 24 ], [C2 } Page 26 ],
[C3 } Page 28 ] and [C4 } Page 29 ]) are not reset
Comments

The FSET command cannot be canceled by [@ } Page 15 ].
All user settings except date ([DAT } Page 47 ]) and time ([TIM } Page 231 ]) are reset to factory values.
In case resetting of the interface parameters is included (FSETV 1 ), the answer is returned with the current
interface settings and the interface parameters are reset afterwards.
After the response FSETVA, the weigh module restarts and issues [I4 } Page 89 ] when it’s ready again.
See COPT command to reset all settings on the optional interface.
Example
Ü FSETV^1 Reset all settings to factory values.
Û FSETVA Command understood and executed successfully.
Û I4VAV"B123456789" Restart, I4 shows the serial number: B123456789.
See also
2 I4 – Serial number } Page  89
MT-SICS Interface Command Commands and Responses​​ 85

I0 – Currently available MT-SICS commands...................................................................
Description
The I0 command lists all commands implemented in the present software.
All commands are listed first in level then in alphabetical order - even though levels are not supported anymore
the Syntax of this command hasn't changed.
Syntax
Command
I0 Send list of all implemented MT-SICS commands.
Responses
I0VBV<Level>V<"Command">
I0VBV<Level>V<"Command">
I0VB
...
I0VAV<Level>V<"Command">
Number of the MT-SICS level where the command
belongs to
2nd (next) command implemented.
...
Last command implemented.
I0VI Command understood but currently not executable
(balance is currently executing another command).
Parameters
Name Type Values Meaning
Integer (^0) MT-SICS level 0 (Basic set)
(^1) MT-SICS level 1 (Elementary commands)
(^2) MT-SICS level 2 (Extended command list)
(^3) MT-SICS level 3 (Application specific command set)
<"Command"> String MT-SICS command
Comments

If a terminal and a weigh module, weighing platform are being used, the command list of the terminal is
output. If only a weigh module, platform is being used, the command list of the weigh module, platform is
shown.
If I0 lists commands that cannot be found in the manual, these are reserved commands "for internal use"
or "for future use", and should not be used or altered in any way.
Example
Ü I0 Send list of commands.
Û I0VBV^0 V"I0" Level 0 command I0 implemented.
Û I0VB... ...
Û I0VBV^0 V"@" Level 0 command [@ } Page  15 ] (cancel) imple-
mented.
Û I0VBV^1 V"D" Level 1 command D implemented.
Û I0VB... ...
Û I0VAV^3 V"SM4" Level 3 command SM4 implemented.
See also
2 @ – Cancel } Page  15
86 Commands and Responses​​ MT-SICS Interface Command

I1 – MT-SICS level and level versions.............................................................................
Description
Query MT-SICS level and versions.
Syntax
Command
I1 Query of MT-SICS level and MT-SICS versions.
Responses
I1VAV<"Level">V<"V0">V<"V1">V<"V2">V
<"V3">
Current MT-SICS level and MT-SICS versions.
I1VI Command understood but currently not executable.
Parameters
Name Type Values Meaning
String (^0) MT-SICS level 0
(^01) MT-SICS level 0 and 1
(^012) MT-SICS level 0, 1 and 2
(^03) MT-SICS level 0 and 3
(^013) MT-SICS level 0, 1 and 3
(^0123) MT-SICS level 0, 1, 2, and 3
(^3) Device-specific with MT-SICS level 3
<"V0"> ... <V"3"> String MT-SICS versions of the related level (0 to 3)
Comment

The command I14 provides more comprehensive and detailed information.
Example
Ü I1 Query the current MT-SICS level and version.
Û I1VAV"0123"V"2.00"V"2.20"V"1.00"V
"1.50"
Level 0-3 is implemented and the according version
numbers are shown.
See also
2 I14 – Device information } Page  93
MT-SICS Interface Command Commands and Responses​​ 87

I2 – Device data (Type and capacity).............................................................................
Description
Use I2 to query the device data (type and capacity), including the weighing capacity. The response is output
as a single string.
Syntax
Command
I2 Query of the balance data.
Responses
I2VAV<"Type>V<Capacity>V<Unit"> Balance type and capacity.
I2VI Command understood but currently not executable
(balance is currently executing another command,
e.g. taring).
Parameters
Name Type Values Meaning
<"Type"> String Type of balance or weigh module
<"Capacity"> String Capacity of balance or weigh module
<"Unit"> String Weight unit
Comments
With DeltaRange balances, the last decimal place is available only in the fine range.
The number of characters of "text" depends on the balance type and capacity.
Example
Ü I2 Query of the balance data.
Û I2VAV"WMS404C-LVWMS-BridgeV
410.0090Vg"
Balance type and capacity.
See also
2 I14 – Device information } Page  93
88 Commands and Responses​​ MT-SICS Interface Command

I3 – Software version number and type definition number.................................................
Description
Provides the software version number and the type definition number.
Syntax
Command
I3 Query of the balance software version and type
definition number.
Responses
I3VAV<"SoftwareVTDNR"> Balance software version and type definition number.
I3VI Command understood but currently not executable
(balance is currently executing another command,
e.g. taring).
Parameters
Name Type Values Meaning
<"Software TDNR"> String Software version number and type definition number
(TDNR)
Comments
Only the software version of the terminal software is issued.
If no terminal is present, the bridge software is issued instead.
More detailed information is available with [I14 } Page 93 ].
Example
Ü I3 Query of the software version number(s) and type
definition number.
Û I3VAV"2.10V10.28.0.493.142" 2.10: Software version number.
10.28.0.493.142: Type definition. number
See also
2 I14 – Device information } Page  93
MT-SICS Interface Command Commands and Responses​​ 89

I4 – Serial number.......................................................................................................
Description
Use I4 to query the serial number of the balance terminal.
Syntax
Command
I4 Query of the serial number.
Responses
I4VAV<"SerialNumber"> Serial number.
I4VI Command not understood, not executable at present
Command understood but currently not executable
(balance is currently executing another command,
e.g. initial zero setting).
Parameter
Name Type Values Meaning
<"SerialNumber"> String Serial number
Comments
The serial number agrees with that on the model plate and is different for every balance.
The serial number can be used, for example, as a device address in a network solution.
The balance response to I4 appears unsolicitedly after switching on and after the cancel command
[@ } Page 15 ].
More detailed information is available with [I14 } Page 93 ].
Only the serial number of the terminal is issued.
If no terminal is present, the serial number of the bridge is issued instead.
Example
Ü I4 Query of the serial number.
Û I4VAV"B021002593" The serial number is "B021002593".
See also
2 @ – Cancel } Page  15
2 I14 – Device information } Page  93
90 Commands and Responses​​ MT-SICS Interface Command

I5 – Software material number.......................................................................................
Description
Use I5 to query the software material number (SW-ID).
Syntax
Command
I5 Query of the software material number and index.
Responses
I5VAV<"Software"> Software material number and index.
I5VI Command understood but currently not executable
(balance is currently executing another command).
Parameter
Name Type Values Meaning
<"Software"> String Software material number and index
Comments
The SW-ID is unique for every Software. It consists of a 8 digit number and an alphabetic character as an
index
More detailed information is available with [I14 } Page 93 ].
Only the SW-ID of the terminal is issued.
If no terminal is present, the SW-ID of the bridge is issued instead.
Example
Ü I5 Query of the software material number and index.
Û I5VAV"12121306C" 12121306C: Software material number and index.
See also
2 I14 – Device information } Page  93
MT-SICS Interface Command Commands and Responses​​ 91

I10 – Device identification.............................................................................................
Description
Use I10 to query or define the balance identification (balance ID). This allows an individual name to be
assigned to a balance.
Syntax
Commands
I10 Query of the current balance ID.
I10V<"ID"> Set the balance ID.
Responses
I10VAV<"ID"> Current balance ID.
I10VA Command understood and executed successfully.
I10VI Command understood but currently not executable
(balance is currently executing another command).
I10VL Command not executed as the balance ID is too long
(max. 20 characters).
Parameter
Name Type Values Meaning
<"ID"> String 5 ... 20
chars
Balance or weigh module identification
Comments
A sequence of maximum 20 alphanumeric characters are possible as .
The set balance ID is retained even after the cancel command [@ } Page 15 ].
Example
Ü I10 Query of the current balance ID.
Û I10VAV"MyVBalance" The balance ID is "My Balance".
92 Commands and Responses​​ MT-SICS Interface Command

I11 – Model designation...............................................................................................
Description
This command is used to output the model designation.
Syntax
Command
I11 Query of the current balance or weigh module type.
Responses
I11VAV<"Model"> Current balance or weigh module type.
I11VI Type can not be transferred at present as another
operation is taking place.
Parameter
Name Type Values Meaning
<"Model"> String Max 20
chars
Balance or weigh module type
Comments
A sequence of maximum 20 alphanumeric characters is possible as .
The following abbreviations used in model designations are relevant to MT-SICS:
DR = Delta Range.
DU = Dual Range.
/M, /A = Approved balance or weigh module.
Example
Ü I11 Query of the current weigh module type.
Û I11VAV"WMS404C-L/10" The weigh module is an "WMS404C-L/10".
MT-SICS Interface Command Commands and Responses​​ 93

I14 – Device information..............................................................................................
Description
This command is used to output detailed information about the device. All components – including optional
accessories – are taken into account and the associated data is output.
Syntax
Command
I14V<No> Query of the current balance information.
Responses
I14VAV<No>V<Index>V<"Info"> Current balance information.
I14VI Command understood but currently not executable.
I14VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
Integer (^0) Instrument configuration
(^1) Instrument description
(^2) SW-identification number
(^3) SW version
(^4) Serial number
(^5) TDNR number
Integer Index of instrument module
<"Info"> String Weighing bridge information corresponding to
Balance terminal information corresponding to
Balance option information corresponding to Balance information corresponding to Printer information corresponding to Second Display information corresponding to Comments

The response to the query of instrument configuration can comprise one or more lines (compact balances,
bridges with/without terminal etc.)
The description of an option is the language-independent product name, e.g. "RS232-Option".
If there are several modules of the same kind, the descriptions have an appendix, comprising of a hyphen
and a number. Examples: <Option-1>, <Option-2>.
94 Commands and Responses​​ MT-SICS Interface Command

Examples
Ü I14V^0 Query of the current balance information.
Û I14VBV^0 V^1 V"Bridge" Bridge.
Û I14VBV^0 V^2 V"Terminal" Terminal.
Û I14VAV^0 V^3 V"Option" Option.
Ü I14V^1 Query of the current instrument descriptions.
Û I14VBV^1 V^1 V"X205T" Bridge is a "X205T".
Û I14VBV^1 V^2 V"PAT" Excellence Plus Terminal.
Û I14VAV^1 V^3 V"RS232VOption" RS232 Option.
Ü I14V^2 Query of the current Software identification numbers.
Û I14VBV^2 V^1 V"11670123A" Software identification number of the bridge is
"11680123A".
Û I14VBV^2 V^2 V"11670456B" Software identification number of the terminal is
"11680456B".
Û I14VAV^2 V^3 V"11670789B" Software identification number of the option is
"11680789B".
Ü I14V^3 Query of the current software versions.
Û I14VBV^3 V^1 V"4.23" Version of the bridge software is "4.23".
Û I14VBV^3 V^2 V"4.10" Version of the terminal software is "4.10".
Û I14VAV^3 V^3 V"1.01" Version of the RS232 option software is "1.01".
Ü I14V^4 Query of the serial numbers.
Û I14VBV^4 V^1 V"0123456789" Serial number of the bridge is "0123456789".
Û I14VBV^4 V^2 V"1234567890" Serial number of the terminal is "1234567890".
Û I14VAV^4 V^3 V"2345678901" Serial number of the RS232 option is "2345678901".
Ü I14V^5 Query of the type definition numbers.
Û I14VBV^5 V^1 V"1.2.3.4.5" Type definition number of the bridge is "1.2.3.4.5".
Û I14VBV^5 V^2 V"1.2.3.4.5" Type definition number of the terminal is "1.2.3.4.5".
Û I14VAV^5 V^3 V"1.2.3.4.5" Type definition number of the RS232 option is
"1.2.3.4.5".
MT-SICS Interface Command Commands and Responses​​ 95

I15 – Uptime...............................................................................................................
Description
Delivers the uptime; the period during which the device program is executing since start or restart or reset.
Syntax
Command
I15 Query the uptime.
Responses
I15VAV<Minutes> Time in minutes since uptime, accuracy +/-5%.
I15VI Uptime can not be transferred at present as another
operation is taking place.
Parameter
Name Type Values Meaning
<Minutes> String Uptime (in minutes) since start or restart or reset
Example
Ü I15 Query the uptime.
Û I15VAV^123014 The balance program is executed approx. 123014
minutes (since start or restart or reset).
96 Commands and Responses​​ MT-SICS Interface Command

I16 – Date of next service.............................................................................................
Description
You can use I16 to query the date when the balance is next due to be serviced.
Syntax
Command
I16 Query the date of next service.
Responses
I16VAV<Day>V<Month>V<Year> Current date of next service.
I16VI Date of next service can not be transferred at present
as another operation is taking place.
Parameters
Name Type Values Meaning
<Day> Integer 01 ... 31 Day
<Month> Integer 01 ... 12 Month
<Year> Integer 2000 ... 
2099
Year
Example
Ü I16 Query the date of next service.
Û I16VAV^19 V^07 V^2011 Date of next service is July 19, 2011.
MT-SICS Interface Command Commands and Responses​​ 97

I21 – Revision of assortment type tolerances..................................................................
Description
Use I21 to query the revision of assortment type tolerances.
Syntax
Command
I21 Query the revision of assortment type tolerances.
Responses
I21VAV<"Revision"> Revision of assortment type tolerances.
I21VI Balance type can not be transferred at present as
another operation is taking place.
Parameter
Name Type Values Meaning
<"Revision"> String 7 ... 30
chars
Revision
Example
Ü I21 Query the revision of assortment type tolerances.
Û I21VAV"5678" The revision is "5678".
98 Commands and Responses​​ MT-SICS Interface Command

I26 – Operating mode after restart..................................................................................
Description
Use I26 to query the operating mode.
Syntax
Command
I26 Query of the operating mode.
Responses
I26VAV<Mode> Operating mode.
I26VI Operating mode can not be transferred at present as
another operation is taking place.
Parameter
Name Type Values Meaning
Integer (^0) User mode
(^1) Production mode
(^2) Service mode
(^3) Diagnostic mode
Example
Ü I26 Query of the operating mode.
Û I26VAV^0 Operation mode is: user mode.

MT-SICS Interface Command Commands and Responses​​ 99

I27 – Change history from parameter settings.................................................................
Description
Use I27 to query the change history from the parameter settings.
Syntax
Command
I27 Query the change history.
Responses
I27VBV<No>V<Day>V<Mon-
th>V<Year>V<Hour>V<Min-
ute>V<"Name">V<"ID">V<"What">V
<"Old">V<"New">
I27VB...
I27VAV<No>V<Day>V<Month>V<Year>V<Hour>V
<Minute>V<"Name">V<"ID">V<"What">V<"Old"
>V
<"New">
Get change history.
I27VA No data, empty change history.
I27VI Command understood but currently not executable.
Parameters
Name Type Values Meaning
<No> Integer 1 ... n Change number (n is product dependent)
<Day> Integer 1 ... 31 Day on which the parameter has been changed
<Month> Integer 1 ... 12 Month on which the parameter has been changed
<Year> Integer 2000 ...
2099
Year on which the parameter has been changed
<Hour> Integer 0 ... 23 Hour on which the parameter has been changed
<Minute> String 0 ... 59 Minute on which the parameter has been changed
<"Name"> String User name
<"ID"> String Identification
<"What"> String Title of changed parameter
<"Old"> String Old value
<"New"> String New value
Example
Ü I27 Query change history.
Û I27VBV^1 V^12 V^12 V^2009 V^12 V^00 V"UserV1"V
"1"V"NumberVofVusers"V"UserV 6 VOff"V
"UserV 6 VOn"
Last change: Number of users -> User 6 from off to
on.
Û I27VAV^2 V^01 V^12 V^2009 V^10 V^22 V"UserV1"V
"1"V"Passw.VChangeVDate"V"Off"V
"On"
Password change date from off to on.
100 Commands and Responses​​ MT-SICS Interface Command

I29 – Filter configuration...............................................................................................
Description
Query actual filter configuration.
Syntax
Command
I29 Query filter configuration.
Responses
I29VAV<WeighingMode>V<Environment> Current filter configuration.
I29VI Command understood but currently not executable.
Parameters
Name Type Values Meaning
Integer (^0) Normal weighing / Universal
(^1) Dosing
(^2) Sensor mode
(^3) Check weighing
(^4) Dynamic weighing
Integer (^0) Very stable
(^1) Stable
(^2) Standard
(^3) Unstable
(^4) Very unstable
Comment

See [M01 } Page 144 ] and [M02 } Page 145 ] to change filter settings.
Example
Ü I29 Query of the current state of the level sensor.
Û I29VAV^0 V^2 The actual filter setting is: Normal weighing /
Standard.
See also
2 M01 – Weighing mode } Page  144
2 M02 – Environment condition } Page  145
MT-SICS Interface Command Commands and Responses​​ 101

I32 – Voltage monitoring..............................................................................................
Description
I32 returns the scaled reading from the voltage monitoring channels in volt. The number of channels is product
specific.
Syntax
Commands
I32 Request the voltage of all channels.
I32V<Channel> Request the voltage of a specific channel.
Responses
I32VBV<Channel>V<Voltage>
I32VB...
I32VAV<Channel>V<Voltage>
Current voltage values for all channels.
I32VAV<Channel>V<Voltage> Current voltage value for a specific channel.
I32VI Command understood but currently not executable.
I32VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Channel> Integer 0 to N ID of available voltage monitor channel
Range of values: 0 ... highest available voltage
monitor channel
<Voltage> Float Voltage of the voltage monitoring channel, in Volt
Comments
By this command, the ADC information is made accessible for diagnostic and service purpose.
If no voltage monitor channel is configured, the command I32 is not available and will not be shown in the
command list like I0.
Example
Ü I32 Request the voltage of all configured voltage monitor
channels.
Û I32VBV^0 V1.1988465E1
I32VBV 1 V1.1679084E1
I32VBV 2 V-1.2217906E1
I32VBV 3 V3.9961543E0
I32VAV 4 V1.5718208E0
There are five voltage monitor channels available
Channel-0: 11.988 V.
Channel-1: 11.679 V.
Channel-2: -1.222 V.
Channel-3: 4 V.
Channel-4: 1.572 V.
102 Commands and Responses​​ MT-SICS Interface Command

I43 – Selectable units for host unit.................................................................................
Description
Returns the selectable units for host unit. This command is used for the terminal menu to display the selectable
items only.
Syntax
Command
I43 Query the selectable units for host unit.
Responses
I43VAV<Units>V<ActUnit>V
<Factory>
Selectable units for host unit.
I43VI Command understood but currently not executable.
I43VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Units> Bit set Sum value of selectable units, calculated in
accordance with the following formula
= ∑
SelectableEnvironmentIndexes
Environments 2 EnvironmentIndex

Units is set to 0. In this case the menu item 'select
unit' is not shown. The definition unit will be used as
the only available unit
<ActUnit> Integer -1 ... max.
unit
index
Actual unit for host unit. This parameter is read from
M21V 0
<Factory> Integer -1 ... max.
unit
index
Factory setting for host unit
Examples
Ü I43 Given the balance supports only "g" as unit 1 then the
answer for this command is:
Û I43VAV^1 V^0 V^0 This is because the index for "g" is 0 and 2^0 = 1.
Ü I43 Given the balance supports "g", "kg", "mg" and "ct" as
unit 1 then the answer for this command is:
Û I43VAV^43 V^3 V^0 The actual unit is "mg", the factory setting is "g" and
the possible units are "g", "kg", "mg" and "ct".
The indexes for the units mentioned before are 0, 1, 3
and 5 and so the sum is 2^0 + 2^1 + 2^3 + 2^5 = 43.
See also
2 M02 – Environment condition } Page  145
MT-SICS Interface Command Commands and Responses​​ 103

I44 – Selectable units for display unit.............................................................................
Description
Returns the selectable units for display unit. This command is used for the terminal menu to display the
selectable items only.
Syntax
Command
I44 Query the selectable units for display unit.
Responses
I44VAV<Units>V<ActUnit>V
<Factory>
Selectable units for display unit.
I44VI Command understood but currently not executable.
I44VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Units> Bit set Sum value of selectable units, calculated in
accordance with the following formula
= ∑
SelectableEnvironmentIndexes
Environments 2 EnvironmentIndex

Units is set to 0. In this case the menu item 'select
unit' is not shown. The definition unit will be used as
the only available unit
<ActUnit> Integer -1 ... max.
unit
index
Actual unit for display unit. This parameter is read
from M21V 0
<Factory> Integer -1 ... max.
unit
index
Factory setting for host unit
Examples
Ü I44 Given the balance supports only "g" as unit 2 then the
answer for this command is:
Û I44VAV^1 V^0 V^0 This is because the index for "g" is 0 and 2^0 = 1
.
Ü I44 Given the balance supports "g", "kg", "mg" and "ct" as
unit 2 then the answer for this command is:
Û I44VAV^43 V^3 V^0 The actual unit is "mg", the factory setting is "g" and
the possible units are "g", "kg", "mg" and "ct".
The indexes for the units mentioned before are 0, 1, 3
and 5 and so the sum is 2^0 + 2^1 + 2^3 + 2^5 = 43.
See also
2 M02 – Environment condition } Page  145
104 Commands and Responses​​ MT-SICS Interface Command

I45 – Selectable environment filter settings......................................................................
Description
This command returns the selectable environment filter settings for use in the device menu. The device appli-
cation must know which items are selectable in order to display them correctly.
Syntax
Command
I45 Query the environment filter settings.
Responses
I45VAV<Environments>V<ActEnvt>V
<Factory>
Selectable environment filter settings.
I45VI Command understood but currently not executable.
I45VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Environments> Bit set List of supported environmental conditions. Sum value
of selectable units, calculated in accordance with the
following formula
= ∑
SelectableEnvironmentIndexes
Environments 2 EnvironmentIndex

Environment Index: in accordance with the table
defined under comments
<ActEnvt> Integer 1 ... 5 Actual environment setting. This parameter is read
from M02
<Factory> Integer 1 ... 5 Environment factory setting
Comment
Available environment parameters are given in the table below:
ID Environmental condition
0 Very stable
1 Stable
2 Standard
3 Unstable
4 Very unstable
5 Automatic
MT-SICS Interface Command Commands and Responses​​ 105

Examples
Ü I45 Query the environment filter settings.
Û I45VAV^14 V^1 V^2 Available environment modes: Stable, Standard and
Unstable
(14 = 2^1 + 2^2 + 2^3 )
Actual value: Stable (1)
Factory preset: Standard (2).
Ü I45 Query the selectable units for host unit.
Û I45VAV^4 V^2 V^2 Available environment modes: Standard
(4 = 2^2 )
Actual value: Standard (2)
Factory preset: Standard (2).
See also
2 M02 – Environment condition } Page  145
106 Commands and Responses​​ MT-SICS Interface Command

I46 – Selectable weighing modes..................................................................................
Description
This command returns the selectable weighing modes for use in the device menu. The device application must
know which items are selectable in order to display them correctly.
Syntax
Command
I46 Query the weighing mode settings.
Responses
I46VAV<Modes>V<ActMode>V<Factory> Current selectable weighing mode settings.
I46VI Command understood but currently not executable.
I46VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Modes> Bit set Sum value of weighing modes. The sum calculated in
accordance with the following formula:
= ∑
SelectableWeighingModes
Weighing mode
Modes 2
Mode index: in accordance with the table defined
under comments
<ActMode> Integer 1 ... 20 Actual weighing mode setting. This parameter is read
from M01
<Factory> Integer 1 ... 20 Weighing mode factory setting
Comments
Available weighing mode parameters are given in the table below:
ID Environmental condition
0 Normal weighing
1 Dosing
2 Fixed filter
3 Absolute weighing
4 Dynamic weighing
6 Raw weight values / No filter
Example
Ü I46 Query the weighing mode settings.
Û I46VAV^3 V^1 V^0 Only normal weighing and dosing (3 = 2^0 + 2^1 ) can
be selected in the menu.
The current setting is dosing (1) and factory setting is
normal weighing (0).
See also
2 M01 – Weighing mode } Page  144
MT-SICS Interface Command Commands and Responses​​ 107

I48 – Initial zero range.................................................................................................
Description
This command reads the upper and lower bound of the initial zero range. The initial zero range is defined
relatively to the production zero point.
Syntax
Command
I48 Query initial zero range.
Responses
I48VAV<Min>V<Max>V<Unit> Initial zero range.
I48VI Command understood but currently not executable.
I48VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Min> Float Lower bound of the initial zero range in the host unit
<Max> Float Upper bound of the initial zero range in the host unit
<Unit> String
(ASCII)
The unit used for this command is the host unit
The unit can be selected by using the M21 command
Comment
Min and max value are formatted with the finest resolution.
Example
Ü I48 Query the initial zero range
Û I48VAV-2V^18 Vg The device can make the initial zero operation within
-2 g and +18 g around the production zero value
See also
2 M21 – Unit } Page  152
108 Commands and Responses​​ MT-SICS Interface Command

I50 – Remaining weighing ranges.................................................................................
Description
You can use I50 to query the remaining weighing ranges.
Syntax
Command
I50 Query of the remaining weighing ranges.
Responses
I50VBV<RangeNo>V<Range>V<Unit>
I50VB...
I50VAV<RangeNo>V<Range>V<Unit>
List of remaining weighing ranges.
I50VL Command understood but not executable (incorrect or
no parameter).
I50VI Command understood but currently not executable.
Parameters
Name Type Values Meaning
Integer (^0) Remaining maximum weighing range
(^1) Remaining range in which internal or initial adjustment
are still possible
(^2) Remaining range in which external adjustment is still
possible
Float This number indicates the remaining range. A value
with a preceding negative sign indicates the amount
by which the range is exceeded
String Returns the range in the currently set weight unit
Comments

The range values relate to the sum of all loads on the weighing platform (pre, tare, net load) and are to be
understood as reference values. If a range is shown as being exceeded, the preload, or possibly only the
tare or net load, can be reduced.
If there is no internal weight available, the remaining range (value 1) is zero.
The remaining range in which an external adjustment is still possible depends on the setting of
[M19 } Page 150 ].
Example
Ü I50 Query of the current state of the level sensor
Û I50VBV^0 VVVV535.141Vkg
I50VBV 1 VVVV-18.973Vkg
I50VAV 2 VVVV335.465Vkg
With the given preload, a remaining weighing range of
about 535 kg is available.
An internal adjustment by the user is not possible
because the total load of approximately 19 kg is too
heavy. An external adjustment is still possible up to a
further additional load of 335 kg.
See also
2 M19 – Adjustment weight } Page  150
MT-SICS Interface Command Commands and Responses​​ 109

I51 – Power-on time....................................................................................................
Description
Delivers the power-on time; the period during which the device is powered including short interruptions (e.g.
power, restart etc.) with negligible impact on thermal model of the device.
Syntax
Command
I51 Query of the power-on time.
Responses
I51VAV<Days>V<Houre>V<Minutes>V
<Seconds>
Power-on time data.
I51VI Command understood but currently not executable.
Parameters
Name Type Values Meaning
<Days> Integer 0 ... 
65535
Power-on time days
<Houre> Integer 0 ... 23 Power-on time hours
<Minutes> Integer 0 ... 59 Power-on time minutes
<Seconds> Integer 0 ... 59 Power-on time seconds
Comment
The power-on time is counted up as long as the microprocessor has power. The power-on time is zero after
a power loss. The power-on time is not touched by a restart or reset of the microprocessor. To handle the
restart or reset effects, the time information is stored immediately before the restart or reset function is
executed.
Example
Ü I51 Query the power-on time data.
Û I51VAV^1456 V^17 V^3 V^37 The power-on time is 1456 days 17 hours 3 minutes
and 37 seconds.
110 Commands and Responses​​ MT-SICS Interface Command

I52 – Auto zero activation settings.................................................................................
Description
This command reads the activation settings for the auto zero feature.
Syntax
Command
I52 Query the auto zero activation settings.
Responses
I52VAV<Activation> Initial auto zero activation.
I52VI Command understood but currently not executable.
I52VL Command understood but not executable (incorrect
parameter).
Parameter
Name Type Values Meaning
<Activation> Integer 0 ... 3 Identification for the auto zero activation settings.
The setting defines:
a) the factory setting for auto zero switched on/off
b) to allow/avoid changing of the auto zero on/off
state by command M03
Auto zero function Changing by M03
(^0) Switched off Prohibited
(^1) Switched on Prohibited
(^2) Switched off Permitted
(^3) Switched on Permitted
Comment

In OIML R 76-1 [19], this feature is called "zero-tracking".
Examples
Ü I52 Query the auto zero activation settings.
Û I52VAV^1 The auto zero function is enabled, and cannot be
altered by the M03 command.
Ü I52 Query the auto zero activation settings.
Û I52VAV^3 The auto zero function is enabled, and can be altered
by the M03 command.
See also
2 M03 – Auto zero function } Page  146
MT-SICS Interface Command Commands and Responses​​ 111

I53 – Ipv4 runtime network configuration information.......................................................
Description
This command will return information entries for each Ipv4 based network interface that is currently configured
in the network stack of the weigh module. The command is similar to the "ipconfig" command on Windows.
The information is based on the settings that are currently operational in the network stack. The information
might change after a factory reset. The IP configuration of an application is defined as follows:
Host IP Address, see M70
Netmask , see M70
optional item: Default Gateway Address, see [M71 } Page 183 ]
optional item: Domain Name Service (DNS-) Server Address, see [M72 } Page 185 ]
IP configuration can either be set manually, see [M70 } Page 181 ]) or obtained from a DHCP server, see
[M69 } Page 179 ]). For the case that DHCP server becomes unavailable (due to network problems, crash,..)
a fallback IP adress must be configured. Such a fallback configuration can either be given manually, see M70)
or by "AutoIP" (this feature will assign an IP without contacting a server, as on Windows PCs). However,
AutoIP is not a real use case.
The IP settings made by above mentioned M-commands are stored in non-volatile memory. The settings only
take effect after a reboot.
Syntax
Commands
I53 Query the runtime network configuration information.
I53V<Index> Query the network interface index.
Responses
I53VBV<Index>V<"Name">V<State>V<"MAC">V
<DHCP>V<AutoIP>V<"Host">V<"Netmask">V
<"DefaultGateway">V<"DNSServer">
...
I53VBV<Index>V<"Name">V<State>V<"MAC">V
<DHCP>V<AutoIP>V<"Host">V<"Netmask">V
<"DefaultGateway">V<"DNSServer">
I53VAV<Index>V<"Name">V<State>V<"MAC">V
<DHCP>V<AutoIP>V<"Host">V<"Netmask">V
<"DefaultGateway">V<"DNSServer">
Current runtime network configuration information.
I53VA Command understood and executed successfully.
I53VI Command understood but currently not executable (no
network interfaces present in the system).
I53VL Command understood but not executable (no network
interfaces with index "1" present in the system).
Parameters
Name Type Values Meaning
<Index> Integer 0 or n Network interface index
0 1 st network interface
n n +1th network interface
<"Name"> String Name of the network interface
<State> Integer 0 ... 2 State of the network interface
(^0) Disabled (down)
(^1) Enabled but media disconnected
(^2) Enabled and connected

112 Commands and Responses​​ MT-SICS Interface Command

Name Type Values Meaning
<"MAC"> String Max 17
chars
MAC address of the network interface. Must be in
format "00:00:00:00:00:00"
<DHCP> Boolean 0 ... 1 DHCP enabled or disabled
(^0) DHCP disabled
(^1) DHCP enabled
Boolean 0 ... 1 AutoIP enabled or disabled
(^0) AutoIP disabled
(^1) AutoIP enabled
<"Host"> String Max 15
chars
Ipv4 address (dot-decimal notation) of the device on
the given network interface
<"Netmask"> String Max 15
chars
Ipv4 netmask (dot-decimal notation) on the given
network interface
<"DefaultGateway"> String Max 15
chars
Ipv4 default gateway (default router) address (dot-
decimal notation) on the given network interface
<"DNSServer"> String Max 15
chars
Ipv4 address (dot-decimal notation) of the DNS
(Domain Name Service) server on the given network
interface
Comment

Before setting an IP configuration on a device (manually or by setting a fallback IP configuration in the
DHCP case), the responsible person (e.g. from the IT department) for the network where the device will be
connected to has to be contacted to work out a valid IP configuration for the device.
Examples
Ü I53 Query the runtime network configuration information.
Û I53VBV^0 V"eth0"V^2 V
"11:22:33:44:55:66"V 1 V 1 V"10.0.0.2"V
"255.255.255.0"V"10.0.0.1"V
"10.0.0.1"
I53VBV 1 V"eth1"V 1 V
"aa:bb:cc:dd:ee:ff"V 1 V 1 V
"192.168.0.2"V"255.255.255.0"V
"0.0.0.0"V"192.168.0.1"
I53VAV 2 V"wifi0"V 0 V
"aa:00:cc:11:ee:22"V 1 V 1 V
"172.24.225.100"V"255.255.254.0"V
"172.24.225.1"V"172.24.225.2"
The network interface "eth0" is fully configured and
operational.
The network interface "eth1" is disconnected from the
cable and no default gateway is configured.
The network interface "wifi0" is currently disabled. All
network interfaces do have DHCP and AutoIP enabled.
Ü I53V^1 V^0 Query the settings from network interfaces 1.
Û I53VBV^1 V"eth1"V^1 V
"aa:bb:cc:dd:ee:ff"V 1 V 1 V
"192.168.0.2"V"255.255.255.0"V
"0.0.0.0"V"192.168.0.1"
The network interface 1 "eth1" is disconnected from
the cable and no default gateway is configured.
MT-SICS Interface Command Commands and Responses​​ 113

I54 – Adjustment loads................................................................................................
Description
This command queries the weight increment for external adjustments. If the increment is bigger than 0, the
weighing device can be adjusted by a defined range of external adjustment weights. This is called VariCal.
Syntax
Command
I54 Query the weight increment for external adjustments.
Responses
I54VAV<Min>V<Max>V<Increment> Adjustment loads.
I54VI Command understood but currently not executable.
I54VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Min> Float Smallest load in the definition unit
<Max> Float Biggest load in the definition unit
<Increment> Float Load increment in the definition unit. Starting with the
smallest load, the intermediate loads are defined in
increments of the Increment parameter
Example
Ü I54 Query the weight increment for external adjustments.
Û I54VAV1000.0V3000.0V750.0 In the case of external adjustment, the loads for
selection are 1000 g, 1750 g, 2500 g and 3000 g.
114 Commands and Responses​​ MT-SICS Interface Command

I55 – Menu version......................................................................................................
Description
This command queries the menu version of the device SW.
Syntax
Commands
I55 Query the menu version.
I55VA Set the menu version.
Responses
I55VAV<Version> Current menu version.
I55VI Command understood but currently not executable.
I55VL Command understood but not executable (incorrect
parameter).
Parameter
Name Type Values Meaning
<Version> Integer 0 ... n Menu version (n is product dependent)
Comments
The menu structure consists of menu item, menu item value range and menu item level.
The menu version is model dependent.
Example
Ü I55 Query the menu version.
Û I55VAV^3 The menu version is 3.
MT-SICS Interface Command Commands and Responses​​ 115

I56 – Scaled weight ramp value....................................................................................
Description
This command is used to read the scaled weight ramp value. It is used for error diagnosis in the field, where it
is very useful for locating an error in a weighing system. The scaled weight ramp value is defined as follows:
The value indicates the deflection of a digital load cell. It represents the deflection without any additional
structures like for example weighing pans.
The value neither has a relation to the final weighing value nor is it processed by the Signal Processing or the
Post Processing.
For both, strain gage and MFR weighing systems, a scaled weight ramp value of 0% represents no load on the
digital load cell and a scaled weight ramp value of 100% means that nominal load is applied on the digital
load cell.
In order to accomplish this, a scaled weight ramp value generator is introduced, consisting of an offset block
and an amplification block. These blocks are needed to scale the A/D converter output signal.
The scaled weight ramp value is not restricted to the range of 0% to 100%. For example if one accidentally
connects a load cell with a higher sensitivity than the formerly connected, then the scaled weight ramp value
may be greater than 100% unless the configuration of the scaled weight ramp value generator is changed.
The configuration of the scaled weight ramp value generator shall be written at the end of the production and is
the same per assortment type.
Offset
(Adds the offset)
Amplification
(Multiplies the signal)
A/D output
Scaled Ramp
Value
100 %
0 %
A/D output
100 %
0 %
Scaled Ramp
Weight Value
No load on
load cell
Nominal load
on load cell
typical MFR case

100 %
0 %
A/D output
100 %
0 %
Scaled Ramp
Weight Value
No load on
load cell
Nominal load
on load cell
typical SG case

50 %
Syntax
Command
I56 Query the scaled weight ramp value.
Response
I56VAVRampValue Current scaled weight ramp value.
116 Commands and Responses​​ MT-SICS Interface Command

Parameter
Name Type Values Meaning
RampValue Float Scaled weight ramp value in percent, with one digit
after the decimal point
Comment
This command is used to display the menu item named "Ramp value" in the service menu of the
pegaFOOD terminals.
Example
Ü I56 Query the scaled weight ramp value.
Û I56VAV56.3 The scaled weight ramp value is 56.3%.
See also
2 M35 – Zeroing mode at startup } Page  164
MT-SICS Interface Command Commands and Responses​​ 117

I59 – Get initial zero information....................................................................................
Description
If a weighing device is starting up it is supposed to perform an initial zero operation before any weight values
can be obtained from the device. If someone wants to obtain weight values before the initial zero operation has
been successfully performed the device refuses to send weight values. In order to successfully perform the
initial zero operation the load on the weight receptor must be within the switch on range limits. In the case
where the initial zero operation can’t be performed successfully the user gets no information if the switch on
range limits are exceeded or not. This command is used to determine if currently an initial zero operation is in
progress and if the switch on range limits are exceeded or not.
Syntax
Command
I59 Query the initial zero information.
Response
I59VAV<InitZero>V<LoadState> Current Initial information.
Parameters
Name Type Values Meaning
<InitZero> Integer 0 ... 2 Indicates whether an initial zero operation is in
progress or not
(^0) Undefined e.g. If initial zero operation not started
(^1) Initial zero operation in progress
(^2) Initial zero operation done
Integer + Load above upper switch on range limit

Load below lower switch on range limit
S Load within switch on range limits and stable
D Load within switch on range limits and unstable
(^0) Undefined – If the parameter "InitZero" equals to 0 or 2
the parameter "LoadState" always equals to undefined
Comment

If a zero value and an initial zero value has been saved with the [M35 } Page 164 ] command the initial
zero value is restored from the saved initial zero value. The answer in this case will be I59VAV 2 V 0.
Examples
Ü I59 Query the initial zero information.
Û I59VAV^1 V+ The initial zero operation is in progress and the load is
above the upper switch on range limit.
Ü I59 Query the initial zero information.
Û I59VAV^1 V- The initial zero operation is in progress and the load is
below the lower switch on range limit.
Ü I59 Query the initial zero information.
Û I59VAV^1 VD The initial zero operation is in progress, the load is
within the switch on range limits and unstable.
118 Commands and Responses​​ MT-SICS Interface Command

Ü I59 Query the initial zero information.
Û I59VAV^0 V^0 The initial zero state is undefined.
Ü I59 Query the initial zero information.
Û I59VAV^2 V^0 The initial zero operation has been successfully
performed.
MT-SICS Interface Command Commands and Responses​​ 119

I62 – Timeout..............................................................................................................
Description
This command is used to read the timeout settings for the weight recording and for the service command step
control C5.
Syntax
Command
I62 Query the whole list of entries.
I62V<Index> Query a single entry of the list.
Responses
I62VBV<Index>V<Time>
I62VB...
I62VAV<Index>V<Time>
List of all timeout entries.
I62VAV<Index>V<Time> Entry for a single timeout parameter.
I62VI Command understood but currently not executable.
I62VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
Integer (^0) Weight recording
(^1) Step control C5
Integer 0 ... 120
(Index:

Maximum waiting time for the stability flag and for the
signal being within range
0 ... 65535
(Index:

Maximum waiting time for the user input in service
command step control C5
Comment

The parameter weight recording time also be can set with M67.
Example
Ü I62 Query the whole list of entries.
Û I62VBV^0 V^20
I62VAV 1 V 1000
The timeout for weight recording is 20 seconds.
The timeout for step control is 1000 seconds.
See also
2 C5 – Enabling/disabling step control } Page  31
2 M67 – Timeout } Page  177
120 Commands and Responses​​ MT-SICS Interface Command

I65 – Total operating time.............................................................................................
Description
This command reads the device total operation time.
Syntax
Command
I65 Query of total operating time.
Responses
I65VAV<Day>V<Hour> Current operating time.
I65VI Command understood but currently not executable.
Parameters
Name Type Values Meaning
<Day> Integer Operating time days
<Hour> Integer 0 ... 23 Operating time hours
Comment
Every full minute the microprocessor is running will be counted as operating time. This is also done during
standby.
Example
Ü I65 Query of total operating time.
Û I65VAV^456 V^3 Device has been in operation for 456 days and 3
hours.
MT-SICS Interface Command Commands and Responses​​ 121

I66 – Total load weighed..............................................................................................
Description
This command reads the device total load weighed. Every weight in all modes is counted.
Syntax
Command
I66 Query of total load weighed.
Responses
I66VAV<TotalWeight>V<Unit> Current total load weighed.
I66VI Command understood but currently not executable.
Parameters
Name Type Values Meaning
<TotalWeight> Float Total of all loads weighed in the definition unit
<Unit> String Definition unit
Comments
The total load is increased every time an active MT-SICS [SNR } Page 214 ] command with no preset value
would send a stable weight.
All values are added as absolute values.
The number of significant digits in the same as for MT-SICS [SNR } Page 214 ] command in the definition
unit.
Example
Ü I66 Query of total load weighed.
Û I66VAV4455.41592Vg The total load weighed is 4455.41592 g.
122 Commands and Responses​​ MT-SICS Interface Command

I67 – Total number of weighings...................................................................................
Description
This command reads the device total number of weighings. Every weighing in all modes is counted.
Syntax
Command
I67 Query of total number of weighings.
Responses
I67VAV<WeighingNo> Current number of weighings.
I67VI Command understood but currently not executable.
Parameter
Name Type Values Meaning
<WeighingNo> Integer Number of weighings
Comment
The total number of weighings is increased every time an active MT-SICS [SNR } Page 214 ] command with
no preset value would send a stable weight.
Example
Ü I67 Query of total number of weighings.
Û I67VAV^1234 The total number of weighing is 1234.
MT-SICS Interface Command Commands and Responses​​ 123

I69 – Service provider address ASCII..............................................................................
Description
Address and phone number of service provider. Only printable ASCII characters are admissible.
Syntax
Commands
I69 Query the address and phone number of service
provider.
I69V<Line>V<"Text"> Query the text from line.
Responses
I69VBV 0 V<"Text"> Current text of line 0.
I69VBV 1 V<"Text"> Current text of line 1.
I69VBV 2 V<"Text"> Current text of line 2.
I69VBV 3 V<"Text"> Current text of line 3.
I69VBV 4 V<"Text"> Current text of line 4.
I69VBV 5 V<"Text"> Current text of line 5.
I69VBV 6 V<"Text"> Current text of line 6.
I69VAV 7 V<"Text"> Current text of line 7.
I69VAVNoV<"Text"> Current text of line No.
I69VI Command understood but currently not executable.
Parameters
Name Type Values Meaning
<Line> Integer 0 ... 7 Text line number
<"Text"> String Max 40
chars
Service provider address information
Examples
Ü I69 Query the address and phone number of service
provider.
Û I69VBV^0 V"Mettler-ToledoVGmbH" The text of line 0 is "Mettler-Toledo GmbH".
Û I69VBV^1 V"ImVLangacherV44" The text of line 1 is "Im Langacher".
Û I69VBV^2 V"8606VGreifensee" The text of line 2 is "8606 Greifensee".
Û I69VBV^3 V"044V^944 V^45 V45" The text of line 3 is "044 944 45 45".
Û I69VBV^4 V"" The text of line 4 is not defined.
Û I69VBV^5 V"" The text of line 5 is not defined.
Û I69VBV^6 V"" The text of line 6 is not defined.
Û I69VAV^7 V"" The text of line 7 is not defined.
Ü I69V^2 Query the text from line 2.
Û I69VAV^2 V"8606VGreifensee" The text of line 2 is "8606 Greifensee".
124 Commands and Responses​​ MT-SICS Interface Command

I71 – One time adjustment status..................................................................................
Description
Read out the one-time adjustment configuration and the one-time adjustment counter.
Syntax
Command
I71 Query one time adjustment status.
Responses
I71VAV<Mode>V<MaxCount>V<CurrentCounter> Query the status of the one-time adjustment.
I71VI Command understood but currently not executable.
I71VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Mode> Integer 0 ... 2 Mode of the scale placement GEO calibration
adjustment
(^0) Disabled
(^1) Enabled
(^2) Counting (permitted, but with restriction of the possible
number of calibration)
Integer Maximal allowed number of execution times in
counting mode.
If MaxCount = 0 the scale placement GEO calibration
adjustment is disabled.
If MaxCount is equal or greater than CurrentCounter,
the scale placement GEO calibration adjustment is
disabled
Integer Current number of successful executions of the scale
placement GEO calibration adjustment.
Only the number of executions by command C10V 1 is
counted
Command

Use case: the terminal must decide, whether the user should be forced to trigger the GEO adjustment or not.
Example
Ü I71 Query the status of the one-time adjustment.
Û I71VAV^2 V^1 V^1 The scale placement GEO calibration adjustment is in
counting mode, allowing one execution of the
command C10V 1 and it has been executed once. The
command C10V 1 will return an I response if it is
triggered again.
MT-SICS Interface Command Commands and Responses​​ 125

I73 – Sign Off..............................................................................................................
Description
If activated, this command is sent automatically when the device is switched off. To switch off the device, either
use the command PWR or press the button OFF.
Syntax
Command
I73 Query sign off.
Responses
I73VAV<"SerialNumber"> Serial number.
I73VI Command understood but currently not executable.
I73VL Command understood but not executable (incorrect
parameter).
Parameter
Name Type Values Meaning
<"SerialNumber"> String Device serial number
Command
Command is needed to notify calibry about a device switch-off by the user.
Examples
Ü I73 Query sign off.
Û I73VAV"B314201995" Serial number.
Ü PWRV^0 Power off with I73 deactivated (pre-condition device
is on).
Û PWRVA The device is in standby mode.
Ü PWRV^0 Power off with I73 activated (pre-condition device is
on).
Û PWRVA
I73VAV"B314201995"
The device is in standby mode.
126 Commands and Responses​​ MT-SICS Interface Command

I74 – GEO code at point of calibration - HighRes.............................................................
Description
This command returns the high resolution GEO code at point of calibration(GCcalHR).
Syntax
Command
I74 Query the GEO code value at point of calibration.
Responses
I74VAV<GeoCode> Get the GEO code.
I74VI Command understood but currently not executable.
I74VL Command understood but not executable (incorrect
parameter).
Parameter
Name Type Values Meaning
<GeoCode> Float -1.0 ...
31.0
High resolution GEO code at point of calibration
Example
Ü I74 Query the GEO code value at point of calibration.
Û I74VAV15.1 The GEO code at point of calibration is 15.1.
MT-SICS Interface Command Commands and Responses​​ 127

I75 – GEO code at point of use - HighRes.......................................................................
Description
This command returns the high resolution GEO code at point of use (GCuseHR).
Syntax
Command
I75 Query the GEO code value at point of use.
Responses
I75VAV<GeoCode> Get the GEO code.
I75VI Command understood but currently not executable.
I75VL Command understood but not executable (incorrect
parameter).
Parameter
Name Type Values Meaning
<GeoCode> Float -1.0 ...
31.0
High resolution GEO code at point of use
Example
Ü I75 Query the GEO code value at point of use.
Û I75VAV12.1 The GEO code at point of use is 12.1.
128 Commands and Responses​​ MT-SICS Interface Command

I76 – Total number of voltage exceeds...........................................................................
Description
Use I76 to query the total number of the device voltage enters the configurable voltage monitor range.
Syntax
Commands
I76 Query the status of all voltage monitoring channels.
I76V<Channel> Query the status of a certain voltage monitoring
channel.
Responses
I76VBV<Channel>V<LowerThreshold>V
<UpperThreshold>V<Counts>
I76VB...
I76VAV<Channel>V<LowerThreshold>V
<UpperThreshold>V<Counts>
Current values of all voltage monitoring channels.
I76VAV<Channel>V<LowerThreshold>V
<UpperThreshold>V<Counts>
Current values of a certain voltage monitoring channel.
I76VI Command understood but currently not executable.
I76VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Channel> Integer 0 ... n Identification for voltage monitor channel (n is product
dependent)
<LowerThreshold> Float Lower threshold value for the voltage monitor channel
<UpperThreshold> Float Upper threshold value for the voltage monitor channel
<Counts> Integer Number of voltage values falling into defined monitor
channel
Comments
Use I76 to view the results from the voltage monitor function.
Supply voltage of the weighing device is monitored by the voltage monitor function.
Number of the voltage monitor channels is dependent on the model type of the product.
The target of this function is to count the number of the voltage values which fall outside the permissible
supply voltage range.
Example
Ü I76 Query the status of all voltage monitoring channels.
Û I76VBV^0 V7.0V10.0V^0
I76VAV 1 V30.0V33.0V 2
Channel-0 monitors the range between 7 and 10 V
and there is no voltage value detected in this range.
Channel-1 monitors the range between 30 and 33 V
and there are 2 voltage values detected in this range.
MT-SICS Interface Command Commands and Responses​​ 129

I77 – Total number of load cycles..................................................................................
Description
Use I77 to query total number of load cycles that are counted between predefined thresholds.
Syntax
Command
I77 Query total number of load cycles for all defined
channels.
I77V<Channel> Query total number of load cycles for a specific
channel.
Responses
I77VBV<Channel>V<LowerThreshold>V
<UpperThreshold>V<Counts>
I77VB...
I77VAV<Channel>V<LowerThreshold>V
<UpperThreshold>V<Counts>
Current values for all monitor channels.
I77VAV<Channel>V<LowerThreshold>V
<UpperThreshold>V<Counts>
Current values for a certain monitor channel.
I77VI Command understood but currently not executable.
I77VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Channel> Integer 0 to N Identification for load cycle monitor channel
<LowerThreshold> Float Lower threshold value for the load cycle monitor
channel defined as the percentage of the maximum
capacity
<UpperThreshold> Float Upper threshold value for the load cycle monitor
channel defined as the percentage of the maximum
capacity
<Counts> Integer Number of load cycles detected by the defined monitor
channel
Comments
The number of channels is product specific.
A load cycle of one monitor channel is defined as placing a weight (belonging to that channel) on the
weighing device until the weight is stable, and then removing the weight from the device (leaving that
channel) until the weight is stable again.
130 Commands and Responses​​ MT-SICS Interface Command

Example
Ü I77 Query total number of load cycles for all defined
channels.
Û I77VBV^0 V1.0V20.0V^0
I77VBV 1 V20.0V60.0V 2
I77VBV 2 V60.0V100.0V 4
I77VAV 3 V100.0V400.0V 1
Channel-0 monitors the range between 1% and 20%
of maximum capacity and there is no load cycle
detected in this range.
Channel-1 monitors the range between 20% and
60% of maximum capacity and there are 2 load
cycles detected in this range.
Channel-2 monitors the range between 60% and
100% of maximum capacity and there are 4 load
cycles detected in this range.
Channel-3 monitors the range between 100% and
400% of maximum capacity and there is 1 load cycle
detected in this range.
MT-SICS Interface Command Commands and Responses​​ 131

I78 – Zero deviation.....................................................................................................
Description
Use I78 to query the zero deviation of the weighing device.
Syntax
Command
I78 Query the zero deviation of the weighing device.
Responses
I78VAV<ZeroDeviation> Current value for the zero deviation.
I78VI Command understood but currently not executable.
I78VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<ZeroDeviation> Float Current zero deviation from the user calibrated zero
value defined as the percentage of the maximum
capacity
Comments
When the weighing device accepts the zero command or the initial zero point is established, it can calculate
the deviation between the actual zero value and the user calibrated zero value.
Only the last calculated zero deviation value can be read with this command.
Example
Ü I78 Query the zero deviation of the weighing device.
Û I78VAV0.2 Current zero deviation is 0.2% of the maximum
capacity.
132 Commands and Responses​​ MT-SICS Interface Command

I79 – Total number of zero deviation exceeds.................................................................
Description
Use I79 to query the total number of zero deviations detected by predefined monitor channels.
Syntax
Command
I79 Query total number of zero deviations for all predefined
channels.
I79V<Channel> Query total number of zero deviations for a specific
channel.
Responses
I79VBV<Channel>V<LowerThreshold>V
<UpperThreshold>V<Counts>
I79VB...
I79VAV<Channel>V<LowerThreshold>V
<UpperThreshold>V<Counts>
Current values for all monitor channels.
I79VAV<Channel>V<LowerThreshold>V
<UpperThreshold>V<Counts>
Current values for a certain monitor channel.
I79VI Command understood but currently not executable.
I79VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Channel> Integer 0 ... n Identification for zero deviation monitor channel (n is
product dependent)
<LowerThreshold> Float Lower threshold value for the zero deviation monitor
channel defined as the percentage of the maximum
capacity
<UpperThreshold> Float Upper threshold value for the zero deviation monitor
channel defined as the percentage of the maximum
capacity
<Counts> Integer Number of zero deviations detected by the defined
monitor channel
Comments
The number of channels is product specific.
When the weighing device accepts the zero command or the initial zero point is established, it can calculate
the deviation between the actual zero value and the user calibrated zero value. This value is checked by the
monitor channels to increase the counter value.
Example
Ü I79 Query total number of zero deviations for all predefined
channels.
Û I79VBV^0 V1.0V10.0V^2
I79VAV 1 V10.0V400.0V 0
Channel-0 monitors the range between 1% and 10%
of maximum capacity and there are 2 zero deviations
detected in this range.
Channel-1 monitors the range between 10% and
400% of maximum capacity and there are no zero
deviations detected in this range.
MT-SICS Interface Command Commands and Responses​​ 133

I80 – Total number of temperature exceeds.....................................................................
Description
Use I80 to query the total number of temperature deviations detected by predefined monitor channels.
Syntax
Command
I80 Query total number of temperature deviations for all
predefined channels.
I80V<Channel> Query total number of temperature deviations for a
specific channel.
Responses
I80VBV<Channel>V<Sensor>V
<LowerThreshold>V<UpperThreshold>V
<Counts>
I80VB...
I80VAV<Channel>V<Sensor>V
<LowerThreshold>V<UpperThreshold>V
<Counts>
Current values for all monitor channels.
I80VAV<Channel>V<Sensor>V
<LowerThreshold>V<UpperThreshold>V
<Counts>
Current values for a certain monitor channel.
I80VI Command understood but currently not executable.
I80VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Channel> Integer 0 ... n Index for the channel of the temperature
sensor (n is product dependent)
<Sensor> Integer 0: Measuring sensor
(SG)
1: PCBA (Mainboard)
Identification for the temperature sensor
<LowerThreshold> Float Lower threshold value for the temperature
deviation monitor channel
<UpperThreshold> Float Upper threshold value for the temperature
deviation monitor channel
<Counts> Integer Number of temperature deviations
detected by the defined monitor channel
Comments
The number of channels is product specific.
Sensor-0 is the temperature sensor placed close to the measuring bridge (Strain Gage) and Sensor-1 is the
temperature sensor placed on the PCBA (Mainboard).
The target of this function is to count the number of the temperature values which fall outside permissible
operating temperature range. The value of the counter is increased only once when a temperature value
enters into a monitor range and stays inside this range.
134 Commands and Responses​​ MT-SICS Interface Command

Example
Ü I80 Query total number of temperature deviations for all
predefined channels.
Û I80VBV^0 V^0 V-50.0V-10.0V^0
I80VBV 1 V 0 V40.0V80.0V 1
I80VBV 2 V 1 V70.0V80.0V 0
I80VAV 3 V 1 V80.0V100.0V 0
Channel-0 belonging to the Sensor-0 monitors the
temperature range between -50°C and -10°C and
there are no temperature values detected in this range.
Channel-1 belonging to the Sensor-0 monitors the
temperature range between 40°C and 80°C and there
is 1 temperature value detected in this range.
. Channel-2 belonging to the Sensor-1 monitors the
temperature range between 70°C and 80°C and there
is no temperature value detected in this range.
Channel-3 belonging to the Sensor-1 monitors the
temperature range between 80°C and 100°C and there
is no temperature value detected in this range.

MT-SICS Interface Command Commands and Responses​​ 135

I81 – Temperature gradient...........................................................................................
Description
Use I81 to query the last calculated temperature gradient for available temperature sensors.
Syntax
Command
I81 Query the last calculated temperature gradient of all
available temperature sensors.
I81V<Channel> Query the last calculated temperature gradient for a
specific sensor.
Responses
I81VBV<Channel>V<Gradient>V<Duration>
I81VB...
I81VAV<Channel>V<Gradient>V<Duration>
Current values for all available temperature sensors.
I81VAV<Channel>V<Gradient>V<Duration> Current values for a certain temperature sensor.
I81VI Command understood but currently not executable.
I81VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Channel> Integer 0: Measuring sensor
(SG)
1: PCBA (Mainboard)
Identification for the temperature sensor
<Gradient> Float Temperature gradient given in °C
<Duration> Float Duration of the temperature gradient given
in second
Comments
Sensor-0 is the temperature sensor placed close to the measuring bridge (Strain Gage) and Sensor-1 is the
temperature sensor placed on the PCBA (Mainboard).
I81 command returns the temperature change () over a certain time period () for a
selected temperature sensor ()
If the duration parameter is 0, either the sensor is switched off, or the gradient value has not yet been
calculated.
Only the last calculated temperature difference is used in the gradient calculation.
Example
Ü I81 Current values for all available temperature sensors.
Û I81VAV^0 V0.2V^60 Temperature gradient is calculated only for the
temperature sensor-0 (Measuring bridge) and the
result is 0.2°C temperature change measured over 60
seconds.
136 Commands and Responses​​ MT-SICS Interface Command

I82 – Total number of temperature gradient exceeds........................................................
Description
Use I82 to query the total number of temperature gradient deviations detected by predefined monitor channels.
Syntax
Command
I82 Query total number of temperature gradient deviations
for all predefined channels.
I82V<Channel> Query total number of temperature gradient deviations
for a specific sensor.
Responses
I82VBV<Channel>V<MaxGradient>V
<Duration>V<Counts>
I82VB...
I82VAV<Channel>V<MaxGradient>V
<Duration>V<Counts>
Current values for all monitor channels.
I82VAV<Channel>V<MaxGradient>V
<Duration>V<Counts>
Current values for a certain monitor channel.
I82VI Command understood but currently not executable.
I82VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Channel> Integer 0: Measuring sensor
(SG)
1: PCBA (Mainboard)
Identification for the temperature sensor
<MaxGradient> Float Upper threshold value for the temperature
gradient monitor channel
<Duration> Float Duration of the temperature gradient given
in second
<Counts> Integer Number of temperature gradients
exceeding the upper threshold value
Comments
Sensor-0 is the temperature sensor placed close to the measuring bridge (Strain Gage) and Sensor-1 is the
temperature sensor placed on the PCBA (Mainboard).
If the duration parameter is 0, either the sensor is switched off, or the gradient value has not yet been
calculated.
Only the last calculated temperature difference is used in the gradient calculation.
Counter value is not incremented during the warm-up phase of the weighing device after the power is
switched-on.
MT-SICS Interface Command Commands and Responses​​ 137

Example
Ü I82 Query total number of temperature gradient deviations
for all predefined channels.
Û I82VAV^0 V0.5V^60 V^0 Temperature gradient is monitored only for the
temperature sensor- 0 (Measuring bridge). Upper
threshold value is defined as 0.5°C temperature
change in 60 seconds. The gradient values measured
by the sensor have not exceeded this maximum limit
so far.
138 Commands and Responses​​ MT-SICS Interface Command

I83 – Software identification..........................................................................................
Description
This command returns the identification of the approval relevant software modules of a weighing device.
Syntax
Command
I83 Query the identification.
I83V<Index> Query the index.
Responses
I83VBV<Index>V<"SW-Module">V<"Version">
I83VBV<Index>V<"SW-Module">V<"Version">
I83VB...
I83VAV<Index>V<"SW-Module">V<"Version">
Current list of entries.
I83VAV<Index>V<"SW-Module">V<"Version"> Current text from index only.
Parameters
Name Type Values Meaning
<Index> Integer 0 ... 255 Array index of version list entry
<"SW-Module"> String AP, PF, WP, SP (max
30 chars)
Software module name, <new module
name abbreviation> must be unique and
added by the MT-SICS team.
AP Scale terminal application software
PF Core system functions and configuration
(e.g.: Rainbow)
WP Weighing package (e.g.: Rainbow)
SP Signal processing (e.g.: Rainbow)
<"Version"> String Max 20 chars Version identification
Comments
The first line must be the application/product software version, i.e. the overall SW version.
The number and the sequence of software modules is product dependent.
The terminal can use the return values to show the version information required by approval documents.
Solution with ICS Terminals (as an example) Test Certificate TC8039 "Software: Rainbow" requires as an
essential characteristic: Software identification shown on terminal or display of complete weighing
instrument in the form: Loadcell-Firmware-Version: AP:2.3.0 RB:2.2.0 WP:2.2.1 SP:1.70.33.
The following picture emphasizes the relation between the software modules and the OIML signal path:
MT-SICS Interface Command Commands and Responses​​ 139

Examples
Ü I83 Query the identification.
Û I83VBV^0 V"Application"V"2.3.0"
I83VBV 1 V"Platform"V"2.2.0"
I83VBV 2 V"Weighing Package"V"2.2.1"
I83VAV 3 V"Signal Processing"V
"1.70.33"
Actual entry for index 0 is: Module name "Application"
with version "2.3.0".
Actual entry for index 1 is: Module name "Platform"
with version "2.2.0".
Actual entry for index 2 is: Module name "Weighing
Package" with version "2.2.1".
Actual entry for index 3 is: Module name "Signal
Processing" with version "1.70.33".
Ü I83V^2 V^0 Requests the entry for index 2 only.
Û I83VBV^2 V"Weighing Package"V"2.2.1" Actual entry for index 2 is: Module name "Weighing
Package" with version "2.2.1".
140 Commands and Responses​​ MT-SICS Interface Command

K – Keys control..........................................................................................................
Description
With the K command, the behavior of the terminal keys may be configured: first, the K command controls
whether a key invokes its corresponding function or not and second, it configures whether an indication of
which key has been pressed or released is sent to the host interface or not.
Using this functionality, an application running on a connected system (e.g. a PC or PLC) may make use of the
balance terminal to interact with the balance operator.
Syntax
Command
KV<Mode> Set configuration.
Responses
KVA[V<FunctionID>] Command understood and executed successfully.
Mode 4: Function with <FunctionID> was invoked
by pressing the corresponding key and executed
successfully.
KVI[V<FunctionID>] Command understood but currently not executable
(balance is actually in menu or input mode).
Mode 4: Function with <FunctionID> by pressing
the corresponding key, but it could not be successfully
executed (e.g. calibration was aborted by user or a
negative value was tared).
KVL Command understood but not executable (incorrect or
no parameter).
Additional Responses in Mode 3:
KV<EventID>V<KeyID> Key <KeyID> has issued an <EventID>.
Additional Responses in Mode 4:
KVBV<FunctionID> Function with <FunctionID> was invoked and
started; the execution needs time to complete.
Parameters
Name Type Values Meaning
Integer (^1) Functions are executed, no indications are sent
(factory setting)
(^2) Functions are not executed, no indications are sent
(^3) Functions are not executed, indications are sent
(^4) Functions are executed, indications are sent
Char R Key was pressed and held around 2 seconds
C Key was released (after being pressed shortly or for 2
second)
Integer (^0) Adjustment
(^1) Tare
(^2) Zero
(^3) Data transfer to printing device
4 ... 6 Reserved for future use
(^7) Test
Integer Indicator for pressed key

MT-SICS Interface Command Commands and Responses​​ 141

Integer (^1) / Home
(^2) / User profile (XP/XPE balances or PWT terminal
only)
(^3) / Settings (XP/XPE balances or PWT terminal
only)
(^4) reserved
(^5) Zero
(^6) reserved
(^7) / Transfer
(^8) / / Configure actual applications
(^9) / / Applications
(^10) /On/Off/ Tare
On/Off
Comments

There is no key number assigned to the door keys; therefore, no response is invoked upon pressing one of
these keys.
KV 1 is the factory setting (default value).
KV 1 active after balance switched on and after the cancel command [@ } Page 15 ].
KV 2 door function is not disabled.
Only one K mode is active at one time.
The mapping of the key numbers on the different terminals are displayed below:
The terminal XS (SWT) is delivered with a new design and housing color since Q3/2014. You can find both the
old and new designs below:
PWT terminal
(e.g. XP Analytical Balances)
EXCELLENCE Plus
1
2
3
9
8
7
10 10 5
PWT terminal
(e.g. WXTP Weigh Module)
EXCELLENCE PLUS
1
2
3
9
8
7
5 5
10 10
SWT terminal
(e.g. WXTS Weigh Module)
1
9
(^55)
7
8
10 10
PWT terminal
(e.g. XPE Analytical Balances)
1
2
3
9
8
5
10 10 5
PWT terminal
(e.g. WXTP Weigh Module)
1
2
3
9
8
5
10 10 5
SWT terminal with new terminal
design
(e.g. WXTS Weigh Module)
1
9
5
8
7
5
10 10
Example
When a code with a long press is sent, new key commands will not be accepted.
Ü KV^4 Set mode 4: when a key is pressed, execute the corre-
sponding function and send the function number as a
response.

142 Commands and Responses​​ MT-SICS Interface Command

Û KVA Command executed successfully.
Û KVBV^1 The taring function has been started → taring active.
Û KVAV^1 Taring completed successfully.
Û KVBV^1 The taring function has been started → taring active.
Û KVIV^1 Taring not completed successfully, taring aborted (e.g.
tried to tare a negative value).
MT-SICS Interface Command Commands and Responses​​ 143

LST – Current user settings............................................................................................
Description
Use the LST command to listing of general module data and current settings which can be changed by the
user.
Syntax
Command
LST Listing of general module data and current settings
which can be changed by the user.
Responses
LSTVBVI2V"WMS204-LVStandardV
410.0090Vg"
Returns the module data (header).
LSTVBVI3V"1.0V1.23.4.567.890" Returns the firmware version and the type definition
number (header).
LSTVBVI4V"1234567890" Returns the serial number (header).
LSTVBVC4V"0" Returns whether an initial adjustment by the user was
performed ("1") or not ("0") (header).
LSTVBVCxV"0" Returns whether internal or external adjustment by the
user was performed ("1") or not ("0") (header).
LSTVBVC0V 0 V (^0) Sets the adjustment settings (calibration settings) (first
command of the user settings).
...
LSTVAVWMCFV (^0) Inquires the configuration of the weight monitoring
function (last command of the user settings).
Comments

The general module data are output in a five-line header ("I2" to "Cx"). This is followed by the current user
settings in alphabetical sequence.
The foregoing responses are examples. The actual responses depend on the current settings.
Examples
Ü LST Query of the list of all current user settings.
Û LSTVBVI2V"WMS204-LV410.0090Vg" Returns the module data (header).
Û LSTVBVI3V"1.0V1.23.4.567.890" Returns the firmware version and the type definition
number (header).
Û LSTVBVI4V"1234567890" Returns the serial number (header).
Û LSTVBVC4V"0" Initial adjustment information (header).
Û LSTVBVCxV"0" Internal or external adjustment information (header).
Û LSTVBVC0V^0 V^0 First command of the user settings.
Û ... ...
Û LSTVAVWMCFV^0 Last command of the user settings.
144 Commands and Responses​​ MT-SICS Interface Command

M01 – Weighing mode.................................................................................................
Description
Use M01 to set the weighing mode or query the current setting.
Syntax
Commands
M01 Query of the current weighing mode.
M01V<WeighingMode> Set the weighing mode.
Responses
M01VAV<WeighingMode> Current weighing mode.
M01VA Command understood and executed successfully.
M01VI Command understood but currently not executable.
M01VL Command understood but not executable (incorrect
parameter).
Parameter
Name Type Values Meaning
Integer (^0) Normal weighing/Universal
(^1) Dosing
(^2) Sensor mode
(^3) Check weighing
(^6) Raw weight values / No filter
Comments

The parameter setting will be saved and the only way to reset the default value will be via MT-SICS or by
means of a factory reset, [FSET } Page 84 ] or via terminal not [@ } Page 15 ].
Use [C2 } Page 26 ] to begin the adjustment procedure with the set weight.
Please check possible settings with product specific Reference Manual.
Examples
Ü M01 Query of the current weighing mode.
Û M01VAV^4 Dynamic weighing mode is set.
Ü M01V^1 Set the weighing mode to dosing.
Û M01VA Dosing is set.
See also
2 I46 – Selectable weighing modes } Page  106
2 M02 – Environment condition } Page  145
2 FCUT – Filter characteristics (cut-off frequency) } Page  83
MT-SICS Interface Command Commands and Responses​​ 145

M02 – Environment condition.......................................................................................
Description
Use M02 to adjust the balance so that it is optimized for the local ambient conditions, or to query the current
value.
Syntax
Commands
M02 Query of the current environment.
M02V<Environment> Set the environment.
Responses
M02VAV<Environment> Current environment.
M02VA Command understood and executed successfully.
M02VI Command understood but currently not executable.
M02VL Command understood but not executable (incorrect
parameter).
Parameter
Name Type Values Meaning
Integer (^0) Very stable
(^1) Stable
(^2) Standard
(^3) Unstable
(^4) Very unstable
Comments

The parameter setting will be saved and the only way to reset the default value will be via MT-SICS or by
means of a factory reset, [FSET } Page 84 ] or via terminal not [@ } Page 15 ].
Use [C2 } Page 26 ] to begin the adjustment procedure with the set weight.
If [FCUT } Page 83 ] is activated ( ≥ 0.001 Hz) and weighing mode, see
[M01 } Page 144 ] is 2 (sensor mode), it will override any settings for ambient conditions (M02) in sensor
mode.
Not all balances offer the complete range of settings. If a setting is made that is not supported by the
balance, an error massage is issued (M02VL).
Example
Ü M02V^3 Set the environment to unstable.
Û M02VA Environment is set.
See also
2 FCUT – Filter characteristics (cut-off frequency) } Page  83
2 M01 – Weighing mode } Page  144
146 Commands and Responses​​ MT-SICS Interface Command

M03 – Auto zero function..............................................................................................
Description
Use M03 to switch the auto zero function on or off and query its current status.
Syntax
Commands
M03 Query of the current auto zero function.
M03V<AutoZero> Set the auto zero function.
Responses
M03VAV<AutoZero> Current auto zero function
M03VA Command understood and executed successfully.
M03VI Command understood but currently not executable.
M03VL Command understood but not executable (incorrect
parameter).
Parameter
Name Type Values Meaning
Integer (^0) Auto zero is switched off (is not supported by
approved balances)
(^1) Auto zero is switched on
Comment

The parameter setting will be saved and the only way to reset the default value will be via MT-SICS or by
means of a factory reset, [FSET } Page 84 ] or via terminal not [@ } Page 15 ].
Use [C2 } Page 26 ] to begin the adjustment procedure with the set weight.
Example
Ü M03V^1 Switch on the auto zero function.
Û M03VA Auto zero function is activated.
MT-SICS Interface Command Commands and Responses​​ 147

M17 – ProFACT: Single time criteria...............................................................................
Description
Use M17 to set the time and days when a ProFACT adjustment should be executed automatically, or to query
the current setting.
Note The settings ProFACT/FACT and days are model dependent.
Syntax
Commands
M17 Query of the current ProFACT time criteria.
M17V<Hour>V<Minute>V<Second>V<Days> Set the ProFACT time criteria.
Responses
M17VAV<Hour>V<Minute>V<Second>V<Days> Current ProFACT time criteria.
M17VA Command understood and executed successfully.
M17VI Command understood but currently not executable.
M17VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Hour> Integer 00 ... 23 Hours
<Minute> Integer 00 ... 59 Minutes
<Second> Integer 00 ... 59 Seconds
Integer (^0) Time criteria is switched off
20 = 1 Monday
21 = 2 Tuesday
22 = 4 Wednesday
23 = 8 Thursday
24 = 16 Friday
25 = 32 Saturday
26 = 64 Sunday
Comments

The days of the week are written in binary code. Combinations of different days are expressed as the sum of
the individual days.
Only one time criterion can be set using M17; all other times are deactivated. [M32 } Page 161 ] must be
used if you wish to set several different times.
If two or more times are set [M32 } Page 161 ] command, resulting in an M17 query, an M17VI response
is generated.
The parameter setting will be saved and the only way to reset the default value will be via MT-SICS or by
means of a factory reset, [FSET } Page 84 ] or via terminal not [@ } Page 15 ].
Use [C2 } Page 26 ] to begin the adjustment procedure with the set weight.
Examples
Ü M17V^12 V^00 V^00 V^5 Set the ProFACT time criteria to Monday and
Wednesday (5 = 1 + 4) at 12:00 h.
Û M17VA ProFACT time criteria is set.
Ü M17 Query of the current ProFACT time criteria.
148 Commands and Responses​​ MT-SICS Interface Command

Û M17VAV^12 V^00 V^00 V^127 The balance will currently be adjusted every day (127
= 1 + 2 + 4+ 8 + 16 + 32 + 64) at 12:00 h.
MT-SICS Interface Command Commands and Responses​​ 149

M18 – ProFACT/FACT: Temperature criterion....................................................................
Description
Use M18 to set the temperature criterion for triggering a ProFACT adjustment, or to query the current value.
Syntax
Commands
M18 Query of the current ProFACT/FACT temperature
criterion.
M18V<Criterion> Set the ProFACT/FACT temperature criterion.
Responses
M18VAV<Criterion> Current ProFACT/FACT temperature criterion.
M18VA Command understood and executed successfully.
M18VI Command understood but currently not executable.
M18VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Criterion> Integer 0 ... 4 The settings of temperature criterion values depend on
the balance model and system setup (bridge module
with/without terminal)
(^0) Temperature criterion is switched off
(^1) 0.5 Kelvin
(^2) 1.0 Kelvin
(^3) 2.0 Kelvin
(^4) 3.0 Kelvin
Comments

Temperature difference (Δ temp.) is defined as the criterion. The balance is automatically adjusted if the
temperature of the balance changes by the defined temperature difference.
The parameter setting will be saved and the only way to reset the default value will be via MT-SICS or by
means of a factory reset, [FSET } Page 84 ] or via terminal not [@ } Page 15 ].
Use [C2 } Page 26 ] to begin the adjustment procedure with the set weight.
Example
Ü M18V^1 Set the ProFACT/FACT temperature criterion to the 1st
setting.
Û M18VA 1 st setting is activated.
150 Commands and Responses​​ MT-SICS Interface Command

M19 – Adjustment weight.............................................................................................
Description
Use M19 to set your external adjustment weight, or to query the current weight value and unit.
Syntax
Commands
M19 Query of the current adjustment weight.
M19V<Value>V<Unit> Set the adjustment weight.
Responses
M19VAV<Value>V<Unit> Current adjustment weight.
M19VA Command understood and executed successfully.
M19VI Command understood but currently not executable.
M19VL Command understood but not executable (incorrect
parameter) or adjustment weight is to low.
Parameters
Name Type Values Meaning
<Value> Float Value of the adjustment weight, balance specific
limitation
<Unit> String Weight unit of the adjustment weight = defined unit of
the balance
Comments
The adjustment weight must be entered in the defined unit of the balance. This unit can be found by entering
a query command M19 without arguments.
The taring range is specified to the balance type.
The parameter setting will be saved and the only way to reset the default value will be via MT-SICS or by
means of a factory reset, [FSET } Page 84 ] or via terminal not [@ } Page 15 ].
Use [C2 } Page 26 ] to begin the adjustment procedure with the set weight.
Examples
Ü M19 Query of the current adjustment weight.
Û M19VAV100.123Vg The adjustment weight is 100.123 g.
Ü M19V500.015Vg Set the adjustment weight to 500.015 g.
Û M19VA The adjustment weight is set to 500.015 g,
See also
2 C0 – Adjustment setting } Page  22
2 C1 – Start adjustment according to current settings } Page  24
2 C2 – Start adjustment with external weight } Page  26
MT-SICS Interface Command Commands and Responses​​ 151

M20 – Test weight.......................................................................................................
Description
You can use M20 to define your external test weight or query the currently weight setting.
Syntax
Commands
M20 Query of the current external test weight.
M20V<TestWeight>V<Unit> Set the external test weight.
Responses
M20VAV<TestWeight>V<Unit> Current external test weight.
M20VA Command understood and executed successfully.
M20VI Command understood but currently not executable.
M20VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<TestWeight> Float > 10
digits
Value of the external test weight
<Unit> String Weight unit of the external test weight = defined unit of
the balance
Comments
The test weight must be entered in the defined unit of the balance. This unit can be found by entering a
query command M20 without arguments.
Use [TST2 } Page 235 ] to begin the test procedure with the set weight.
Examples
Ü M20 Query of the current external test weight.
Û M20VAV100.123Vg The external test weight is 100.123 g.
Ü M20V500.015Vg Set the external test weight to 500.015 g.
Û M20VA The external test weight is set to 500.015 g.
152 Commands and Responses​​ MT-SICS Interface Command

M21 – Unit.................................................................................................................
Description
Use M21 to set the required weighing unit for the output channels of the weight or request current setting.
Syntax
Commands
M21 Query the unit of all output channels.
M21V<Channel> Query the unit of output channel only.
M21V<Channel>V<Unit> Set the unit of an output channel.
Responses
M21VBV<Channel>V<Unit>
M21VB...
M21VAV<Channel>V<Unit>
Current first unit.
...
Current last unit.
M21V<Channel>V<Unit> Unit of output channel.
M21VA Command understood and executed successfully.
M21VI Command understood but currently not executable.
M21VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
Integer (^0) Host unit, used on the MT-SICS Host
(^1) Display unit, used on the terminal screen
(^2) Info unit, used in the info field on the terminal screen

MT-SICS Interface Command Commands and Responses​​ 153

Name Type Values Meaning
Integer (^0) Gram g
(^1) Kilogram kg
(^2) reserved
(^3) Milligram mg
(^4) Microgram μg
(^5) Carat ct
(^6) Newton N
(^7) Pound avdp lb
(^8) Ounce avdp oz
(^9) Ounce troy ozt
(^10) Grain GN
(^11) Pennyweight dwt
(^12) Momme mom
(^13) Mesghal msg
(^14) Tael
Hongkong
tlh
(^15) Tael
Singapore
tls
(^16) Tael Taiwan tlt
(^17) Tical tcl
(^18) Tola tola
(^19) Baht baht
(^20) lb oz
(^25) no unit --
(^26) Piece PCS available with application
"Counting"
(^27) Percent % available with application
"Percent"
(^28) Custom unit
1
cu1 available if custom unit 1 is
switched on [M22 } Page 155 ]
(^29) Custom unit
2
cu2 available if custom unit 2 is
switched on [M22 } Page 155 ]
(^30) Currency unit
1
available if currency unit 1 is
switched on [M22 } Page 155 ]
(^31) Currency unit
2
available if currency unit 2 is
switched on [M22 } Page 155 ]
Comments

All S commands (except SU) are given in Host unit according to the definition of the MT-SICS. Only weight
units are accepted as Host unit.
In the event of a power failure, the host unit is lost and, following a restart, the weighing unit is displayed as
"g".
It is not possible to use "no unit" for the displayed unit.
The units and/or their notation may be different in older software versions.
The parameter setting will be saved and the only way to reset the default value will be via MT-SICS or by
means of a factory reset, [FSET } Page 84 ] or via terminal not [@ } Page 15 ].
Use [C2 } Page 26 ] to begin the adjustment procedure with the set weight.
154 Commands and Responses​​ MT-SICS Interface Command

Examples
Ü M21 Query of the current unit.
Û M21VBV^0 V^0
M21VBV 1 V 3
M21VAV 2 V 5
Current host unit is g.
Current display unit is mg.
Current info unit is carat.
Ü M21V^0 V^1 Set the unit to 1 kg.
Û M21VA The unit is set to 1 kg.
MT-SICS Interface Command Commands and Responses​​ 155

M22 – Custom unit definitions.......................................................................................
Description
You can use M22 to set your own custom unit or query the currently defined custom unit.
Syntax
Commands
M22 Query of the current custom unit definitions.
M22V<No>V<Formula>V<Factor>V<Unit>V
<Rounding>
Set the custom unit(s).
Responses
M22VBV<No>V<Formula>V<Factor>V
<Unit>V<Rounding>
M22VB...
M22VAV<No>V<Formula>V<Factor>V
<Unit>V<Rounding>
Current first custom unit.
...
Current last custom unit.
M22VA Command understood and executed successfully.
M22VI Command understood but currently not executable.
M22VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<No> Integer 1 ... max.
units
Number of custom unit
Integer (^0) (net weight) x factor
(^1) factor/(net weight)
Float Factor
String Unit name (max. 4 characters)
Float Rounding step
Comments

To query or define a custom unit, it must be switched on [M21 } Page 152 ].
The parameter setting will be saved and the only way to reset the default value will be via MT-SICS or by
means of a factory reset, [FSET } Page 84 ] or via terminal not [@ } Page 15 ].
Use [C2 } Page 26 ] to begin the adjustment procedure with the set weight.
Example
Ü M22 Query of the current custom unit definitions.
Û M22VBV^1 V^0 V15.5V"sfr"V0.05 The first custom unit is (net weight) x 15.5 sfr,
rounded to 0.05.
Û M22VAV^2 V^1 V25.4V"h1"V0.1 The second custom unit is 25.4/(net weight) h1,
rounded to 0.1.
156 Commands and Responses​​ MT-SICS Interface Command

M23 – Readability, 1d/xd.............................................................................................
Description
Use M23 to set how many digits of the weighing result should be displayed or output and whether the value
should be rounded, or to query the current value setting.
Syntax
Commands
M23 Query of the current readability.
M23V<Readability> Set the readability.
Responses
M23VAV<Readability> Current readability.
M23VA Command understood and executed successfully.
M23VI Command understood but currently not executable.
M23VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
Integer (^0) 1d
(^1) 10d
(^2) 100d
(^3) 1000d
(^4) 2d
(^5) 5d
Comments

It is the balance model that determines which parameters can be changed.
The customer unit [M22 } Page 155 ] will not be changed with the M23 command.
M23 has no influence of the stability criteria for the [taring } Page 225 ] and [zeroing } Page 244 ]
commands.
The readability is specified in digits [d] – this is the smallest increment a balance may display.
The parameter setting will be saved and the only way to reset the default value will be via MT-SICS or by
means of a factory reset, [FSET } Page 84 ] or via terminal not [@ } Page 15 ].
Use [C2 } Page 26 ] to begin the adjustment procedure with the set weight.
The stability criteria for the weight result (weighing commands) will be adapt to the selected readability
based on the USTB setting.
Example
Ü M23V^1 Set the readability to 10d.
Û M23VA The readability is set to 10d.
See also
2 M22 – Custom unit definitions } Page  155
2 T – Tare } Page  225
2 Z – Zero } Page  244
MT-SICS Interface Command Commands and Responses​​ 157

M27 – Adjustment history.............................................................................................
Description
Use M27 to call up the adjustment history.
Syntax
Command
M27 Query of the adjustment history.
Responses
M27VBV<No>V<Day>V<Month>V<Year>V
<Hour>V<Minute>V<Mode>V<"Wgt">
M27VB...
M27VAV<No>V<Day>V<Month>V<Year>V
<Hour>V<Minute>V<Mode>V<"Wgt">
1 st adjustment entry.
...
last adjustment entry.
M27VI Command understood but currently not executable.
M27VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<No> Integer 1 ... n Number of the adjustment entry (n is product
dependent)
<Day> Integer 1 ... 31 Date, day
<Month> Integer 1 ... 12 Date, month
<Year> Integer 2000 ...
2099
Date, year
<Hour> Integer 0 ... 23 Time, hour
<Minute> Integer 0 ... 59 Time, minute
Integer (^0) Internal adjustment
(^1) External adjustment
<"Wgt"> String Weight of the adjustment weight used
Example
Ü M27 Query of the adjustment history.
Û M27VBV^1 V^1 V^1 V^2011 V^08 V^26 V^0 V"" 1 st adjustment, performed at 1.1.2011, 08:26 h,
internal adjustment.
Û M27VBV^2 V^14 V^12 V^2010 V^14 V^30 V^1 V
"200.1234Vg"
2 nd adjustment, performed at 14.12.2010, 14.30 h,
external adjustment, weight 200.1234 g.
Û M27VAV^3 V^14 V^12 V^2010 V^8 V^26 V^1 V
"200.1234Vg"
3 rd adjustment, performed at 14.12.2010, 08:26 h,
external adjustment, weight 200.1234 g.

158 Commands and Responses​​ MT-SICS Interface Command

M28 – Temperature value.............................................................................................
Description
Use M28 to query the temperature value.
Syntax
Command
M28 Query of the current temperature value.
Responses
M28VBV<No>V<TempVal>
M28V...
M28VAV<No>V<TempVal>
1 st temperature sensor.
...
last temperature sensor.
M28VA Command understood and executed successfully.
M28VI Command understood but currently not executable.
Parameters
Name Type Values Meaning
<No> Integer 1 ... n Number of temperature sensors (n is product
dependent)
<TempVal> Float Temperature sensor value in °C
Comments
The number of temperature sensors depends on the product.
There is no more Information available about the temperature offset and resolution.
Example
Ü M28 Query of the current temperature value.
Û M28VAV^1 V22.5 There is only one temperature sensor available. The
temperature value is 22.5 °C.
MT-SICS Interface Command Commands and Responses​​ 159

M29 – Weighing value release......................................................................................
Description
Use M29 to define the weight value release or query the current setting.
Syntax
Commands
M29 Query of the current value release setting.
M29V<ValueRelease> Set the value release.
Responses
M29VAV<ValueRelease> Current value release.
M29VA Command understood and executed successfully.
M29VI Command understood but currently not executable.
M29VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
Integer (^0) Very fast
(^1) Fast
(^2) Reliable and fast
(^3) Reliable
(^4) Very reliable
Comments

The parameter setting will be saved and the only way to reset the default value will be via MT-SICS or by
means of a factory reset, [FSET } Page 84 ] or via terminal not [@ } Page 15 ].
Use [C2 } Page 26 ] to begin the adjustment procedure with the set weight.
Not all balances offer the complete range of settings. If a setting is made that is not supported by the
balance, an error massage is issued (M29VL).
Example
Ü M29V^3 Set the value release to reliable.
Û M29VA The value release is set to reliable.
160 Commands and Responses​​ MT-SICS Interface Command

M31 – Operating mode after restart................................................................................
Use M31 to set the operating mode of the device following restart.
Description
Syntax
Commands
M31 Query of the current operating mode following restart.
M31V<Mode> Set the operating mode following restart.
Responses
M31VAV<Mode> Current settings of operating mode following restart.
M31VA Command understood and executed successfully.
M31VL Command understood but not executable (not
permitted).
Parameter
Name Type Values Meaning
Integer (^0) User mode
(^1) Production mode
(^2) Service mode
(^3) Diagnostic mode
Comment

Customer can only use the user- and diagnostic mode. All other settings will give a M31VL response.
Examples
Ü M31 Query of the current operating mode following restart.
Û M31VAV^0 The operating mode following restart is: user mode.
Ü M31V^1 Set the production mode as operating mode after
restart.
Û M31VA Operating mode is set.
MT-SICS Interface Command Commands and Responses​​ 161

M32 – ProFACT: Time criteria........................................................................................
Description
You can use M32 to set several times at which an automatic ProFACT adjustment procedure should be carried
out, or query the current settings. The days of the week are defined with [M33 } Page  161 ].
* Only modules with internal adjustment
Syntax
Commands
M32 Query of the current ProFACT time criteria.
M32V<Number>V<Hour>V<Minute>V<Status> Set the ProFACT time criteria.
Responses
M32VBV<Number>V<Hour>V<Minute>V<Status>
M32VB...
M32VAV<Number>V<Hour>V<Minute>V<Status>
Current ProFACT time criteria.
M32VA Command understood and executed successfully.
M32VI Command understood but currently not executable.
M32VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Number> Integer 0 ... 3 FACT time index
<Hour> Integer 00 ... 23 Hours
<Minute> Integer 00 ... 59 Minutes
Integer (^0) Time deactivated (off)
(^1) Time activated (on)
Comments

Only 1 time criterion can be set using [M17 } Page 147 ]; all other times are permanently deactivated. M32
and [M33 } Page 162 ] must be used if you wish to set several different times.
The parameter setting will be saved and the only way to reset the default value will be via MT-SICS or by
means of a factory reset, [FSET } Page 84 ] or via terminal not [@ } Page 15 ].
Use [C2 } Page 26 ] to begin the adjustment procedure with the set weight.
Examples
Ü M32V^2 V^12 V^00 V^1 ProFACT time 2 set to 12:00 and activated (on).
Û M32VA ProFACT time criteria is set.
Ü M32 Query of the current ProFACT time criteria.
Û M32VBV^1 V^09 V^00 V^1 The balance will currently be adjusted at 9:00 h,
Û M32VBV^2 V^12 V^00 V^1 12:00 and 15:00 h.
Û M32VAV^3 V^15 V^00 V^1
162 Commands and Responses​​ MT-SICS Interface Command

M33 – ProFACT: Day of the week...................................................................................
Description
You can use M33 to set the days of the week on which a ProFACT adjustment procedure should be carried out,
or to query the current settings. The times for each are defined using [M32 } Page  161 ].
* Only modules with internal adjustment
Syntax
Commands
M33 Query of the current ProFACT weekday.
M33V<Weekday> Set the ProFACT weekday.
Responses
M33VAV<Weekday> Current ProFACT weekday.
M33VA Command understood and executed successfully.
M33VI Command understood but currently not executable.
M33VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
Integer (^0) Time criteria is switched off
20 = 1 Monday
21 = 2 Tuesday
22 = 4 Wednesday
23 = 8 Thursday
24 = 16 Friday
25 = 32 Saturday
26 = 64 Sunday
Comments

The days of the week are written in binary code. Combinations of different days are expressed as the sum of
the individual days.
Only 1 time criterion can be set using [M17 } Page 147 ]; all other times are deactivated.
[M32 } Page 161 ] and M33 must be used if you wish to set several different times.
The parameter setting will be saved and the only way to reset the default value will be via MT-SICS or by
means of a factory reset, [FSET } Page 84 ] or via terminal not [@ } Page 15 ].
Use [C2 } Page 26 ] to begin the adjustment procedure with the set weight.
Example
Ü M33V^5 Time adjustments are made on Mondays and
Wednesdays (5 = 1 + 4).
Û M33VA ProFACT weekday is set.
MT-SICS Interface Command Commands and Responses​​ 163

M34 – MinWeigh: Method............................................................................................
Description
Use M34 to select the MinWeigh method you wish to work with, or query the currently set MinWeigh method.
Syntax
Commands
M34 Query of the current MinWeigh method.
M34V<Method> Set the MinWeigh method.
Responses
M34VAV<Method> Current MinWeigh method.
M34VA Command understood and executed successfully.
M34VI Command understood but currently not executable.
M34VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
Integer (^0) MinWeigh deactivated
(^1) Method 1 activated
(^2) Method 2 activated
(^3) Method 3 activated
Comments

MinWeigh can only be activated by a service technician.
For additional information on mnimum weight (MinWeigh), see the Reference Manual of the balance.
The parameter setting will be saved and the only way to reset the default value will be via MT-SICS or by
means of a factory reset, [FSET } Page 84 ] or via terminal not [@ } Page 15 ].
Use [C2 } Page 26 ] to begin the adjustment procedure with the set weight.
Examples
Ü M34 Query of the current MinWeigh method.
Û M34VAV^3 The MinWeigh method is 3.
Ü M34V^1 Set the MinWeigh method to 1.
Û M34VA MinWeigh method 1 is set.
164 Commands and Responses​​ MT-SICS Interface Command

M35 – Zeroing mode at startup.....................................................................................
Description
You can use M35 to save the last zero. Following a power failure, the balance will resume operation with the
saved zero. In normal mode M35V 0 , the balance specifies a new zero reference point at start-up as soon as a
stable condition has been achieved.
Syntax
Commands
M35 Query of the current zeroing mode at startup.
M35V<Mode> Set the zeroing mode at startup.
Responses
M35VAV<Mode> Current zeroing mode at startup.
M35VA Command understood and executed successfully.
M35VI Command understood but currently not executable.
M35VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
Integer (^0) Normal mode
(^1) Start with saved zero or save last zero
Comments

If the mode is set to 1 when the balance is started up, the fail-safe, saved zero is used.
For certification reasons, this command may only be executed on normal balances. Certifiable balances do
not have this function.
The parameter setting will be saved and the only way to reset the default value will be via MT-SICS or by
means of a factory reset, [FSET } Page 84 ] or via terminal not [@ } Page 15 ].
Use [C2 } Page 26 ] to begin the adjustment procedure with the set weight.
Example
Ü M35V^1 Save the last zero and use it at following startup.
Û M35VA Start-up zeroing mode is set.
MT-SICS Interface Command Commands and Responses​​ 165

M38 – Selective parameter reset....................................................................................
Description
Use M38 to execute a reset of selected parameters.
Syntax
Command
M38V<ResetMode> Execute reset
Responses
M38VA Command understood and executed successfully.
M38VI Command understood but currently not executable.
M38VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
Integer (^0) Actions, reset, clear window
(^1) Applications reset
(^2) User reset
(^3) Master reset
Comments

After user- and master reset the module performs a complete restart similar to startup after power up.
1 to 3 not yet implemented.
Example
Ü M38V^0 Execute a actions reset.
Û M38VA Command understood and executed successfully.
See also
2 FSET – Reset all settings to factory defaults } Page  84
166 Commands and Responses​​ MT-SICS Interface Command

M39 – SmartTrac: Graphic............................................................................................
Description
You can use M39 to set the type of SmartTrac graphic (used weighing range graphic) or query the current
setting.
Syntax
Commands
M39 Query of the current SmartTrac Graphic.
M39V<SmartTrac> Set the SmartTrac Graphic.
Responses
M39VAV<SmartTrac> Current setting of the SmartTrac Graphic.
M39VA Command understood and executed successfully.
M39VI Command understood but currently not executable.
M39VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning (Nominal =0) Meaning (Nominal > 0)
Integer (^0) No SmartTrac Weighing-in graphic
(^1) Round SmartTrac Round weighing in
SmartTrac
(^2) SmartTrac bar Weighing-in SmartTrac bar
(^3) SmartTrac measuring
beaker
SmartTrac crosshairs
Comments

If the application contains a nominal value that is > 0, the used weighing range graphics mentioned above
are automatically displayed as weighing-in graphics listed in the left-most column.
The parameter setting will be saved and the only way to reset the default value will be via MT-SICS or by
means of a factory reset, [FSET } Page 84 ] or via terminal not [@ } Page 15 ].
Use [C2 } Page 26 ] to begin the adjustment procedure with the set weight.
Example
Ü M39V^2 Set the SmartTrac bar.
Û M39VA SmartTrac bar has been set.
MT-SICS Interface Command Commands and Responses​​ 167

M43 – Custom unit......................................................................................................
Description
Use M43 to activate or deactivate custom units (Custom Unit1, Custom Unit2).
Syntax
Commands
M43 Query of the current custom unit setting.
M43V<CustomUnitNumber>V<Mode> Write new custom unit.
Responses
M43VBV<CustomUnitNumber>V<Mode>
M43VB...
M43VAV<CustomUnitNumber>V<Mode>
Current custom units.
M43VA Command understood and executed successfully.
M43VI Command understood but currently not executable.
M43VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
Integer (^1) Custom Unit1
(^2) Custom Unit2
Integer (^0) Deactivate custom unit
(^1) Activate custom unit
Comments

Dependency: [M21 } Page 152 ] - Unit (Host-, Display- and Info-Unit)
[M22 } Page 155 ] - Custom unit definitions (Formula, Factor, Unit, Rounding)
Custom units cannot be fully defined or managed via Host.
Examples
Ü M43 Query of current custom unit settings.
Û M43VBV^1 V^1
M43VAV 2 V 0
Custom Unit1 is on.
Custom Unit2 is off.
Ü M43V^1 V^0 Deactivated Custom Unit1
Û M43VA Command understood and executed successfully
168 Commands and Responses​​ MT-SICS Interface Command

M44 – Command executed after startup response...........................................................
Description
Use M44 to set or query the command executed after startup.
Syntax
Commands
M44 Query of the current startup command setting.
M44V<Interface>V<"Command"> Set the startup command.
Responses
M44VBV<Interface>V<"Command">
M44VB...
M44VAV<Interface>V<"Command">
Interface number 0.
...
Interface number n.
M44VA Command understood and executed successfully.
M44VI Command understood but currently not executable.
M44VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Interface> Integer 0 ... n Interface number
<"Command"> String max 64
chars
MT-SICS Command after startup
Comments
Command executed after [I4 } Page 89 ] and after initial zero.
An invalid command leads to ES after start up.
Examples
Ü M44 Query of the current startup command setting.
Û M44VBV^0 V"" There is no command specified on interface 0.
M44VAV 1 V"SIR" Starts SIR after startup on interface 1.
Ü M44V^0 V"SRV^1 Vg" Start SR command after startup on interface 0.
Û M44VA Command understood and executed successfully.
MT-SICS Interface Command Commands and Responses​​ 169

M45 – Electrical termination of RS422/ RS485 data lines.................................................
Description
Use M45 to set the electrical termination of RS422/RS485 data lines switch state.
Syntax
Commands
M45 Query of the current RS electrical termination setting.
M45V<Interface>V<OnOff> Set RS electrical termination on or off.
Responses
M45VBV<Interface>V<State>
M45VB...
M45VAV<Interface>V<State>
Interface number 0.
...
Interface number n.
M45VA Command understood and executed successfully.
M45VI Command understood but currently not executable.
M45VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Interface> Integer 0 ... n Interface number, see [COM } Page  44 ]
<State> Boolean ON = 1 RS422 bus termination setting
Off = 0
Comments
Only bus systems like RS422 will be shown in the list.
Default setting is M45V0 = off.
Examples
Ü M45 Query of the RS electrical termination setting.
Û M45VAV^1 V^1 RS bus termination on interface 1 is on. There is only
one bus interface available.
Ü M45V^1 V^0 Set RS electrical termination to Off.
Û M45VA Command understood and executed successfully.
170 Commands and Responses​​ MT-SICS Interface Command

M47 – Frequently changed test weight settings................................................................
Description
Use M47 to read and write the frequently changed test weight settings, such as actual weight and next
calibration date.
Syntax
Commands
M47 Query of the current test weight settings.
M47V<Number> Query of the specific test weight setting.
M47V<Number>V<"Actual-
Weight">V<"Unit">V<Day>V<Month>V<Year>
Write new test weight settings for the specific test
weight.
Responses
M47VBV<Number>V<"Actual-
Weight">V<"Unit">V<Day>V<Month>V<Year>
M47VB...
M47VAV<Number>V<"Actual-
Weight">V<"Unit">V<Day>V<Month>V<Year>
Current test weight settings.
M47VA Command understood and executed successfully.
M47VI Command understood but currently not executable.
M47VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Number> Integer 1 ... 12 Number of the test weight.
<"ActualWeight"> String Max 10
chars
Actual weight of the test weight.
<"Unit"> String Max 2
chars
Actual unit of the test weight.
<Day> Integer 1 ... 31 Day of the next calibration date.
<Month> Integer 1 ... 12 Month of the next calibration date.
<Year> Integer 2000 ... 
2099
Year of the next calibration date.
Comments
These initial values are set by the GWP software on the weigh module, balance.
The parameter "Number" corresponds with the "Number" of [M48 } Page 172 ] command.
To write the infrequently changed parameters, the command "[M48 } Page 172 ]" is used.
The following conditions must be met before a test weight is considered valid: if name is defined (max 20
characters), if weight value is defined (more than 0), and if unit is valid.
This command is available only in XP and XS balances and is not supported in XA balances.
Examples
Ü M47 Query of the list for all test weight settings.
MT-SICS Interface Command Commands and Responses​​ 171

Û M47VBV^1 V"100.0"V"g"V^12 V^10 V^2010
M47VBV 2 V"9.9999"V"g"V 19 V 08 V 2010
M47VBV 3 V"20.0001"V"g"V 10 V 12 V 2009
M47VBV 4 V"0"V"mg"V 12 V 09 V 2011
M47VBV 5 V"0"V"g"V 31 V 12 V 2099
M47VBV 6 V"0"V"g"V 31 V 12 V 2099
M47VBV 7 V"0"V"g"V 31 V 12 V 2099
M47VBV 8 V"0"V"g"V 31 V 12 V 2099
M47VBV 9 V"0"V"g"V 31 V 12 V 2099
M47VBV 10 V"0"V"g"V 31 V 12 V 2099
M47VBV 11 V"0"V"g"V 31 V 12 V 2099
M47VAV 12 V"0"V"g"V 31 V 12 V 2099
The first three test weight settings are defined correctly,
the fourth weight is not completely defined (weight
value is still 0) and the rest is not defined at all.
Ü M47V^1 The parameters of the first test weight are requested.
Û M47VAV^1 V"100.0"V"g"V^10 V^11 V^2010 The requested test weight has an actual value of 100
grams and the next recalibration is on November 10th
2010.
Ü M47V^1 V"20.0"V"g"V^10 V^12 V^2012 Parameters of the first test weight are changed.
Û M47VA The test weight’s actual weight is set to 20 grams and
the next recalibration date to December 10th2012.
172 Commands and Responses​​ MT-SICS Interface Command

M48 – Infrequently changed test weight settings..............................................................
Description
Use M48 to read and write the infrequently changed test weight settings, such as actual weight and next
calibration date.
Syntax
Commands
M48 Query of the infrequently used test weight settings.
M48V<Number> Query of the specific infrequently used test weight
setting.
M48V<Number>V<"Name">V<"ID">V
<"Class">V<"Certificate">V<"Set">
Write new infrequently used test weight settings for the
specific test weight.
Responses
M48VBV<Number>V<"Name">V<"ID">V
<"Class">V<"Certificate">V<"Set">
M48VB...
M48VAV<Number>V<"Name">V<"ID">V
<"Class">V<"Certificate">V<"Set">
Current test weight settings.
M48VA Command understood and executed successfully.
M48VI Command understood but currently not executable.
M48VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Number> Integer 1 ... 12 Number of the test weight.
<"Name"> String Max 20
chars
Name of the test weight.
<"ID"> String Max 20
chars
ID of the test weight.
<"Class"> String See
Comments
Class of the test weight.
<"Certificate"> String Max 20
chars
Certificate of test weight.
<"Set"> String Max 20
chars
Set number of test weight.
Comments
The parameter "Number" corresponds with the "Number" of [M47 } Page 170 ] command.
Examples for Weight classes: E1, E2, F1, F2, M1, M2, M3, ASTM1, ASTM2, ASTM3, ASTM4, ASTM5,
ASTM6, ASTM7.
The following conditions must be met before a test weight is considered valid: if name is defined (max 20
characters), if weight value is defined (more than 0), and if unit is valid.
This command is available only in XP and XS balances and is not supported in XA balances.
Examples
Ü M48 Query of the list for all infrequently used test weight
settings.
MT-SICS Interface Command Commands and Responses​​ 173

Û M48VBV^1 V"50gQK"V"798012"V"E1"V
"1231"V"4551"
M48VBV 2 V"55gQK"V"798013"V"E1"V
"1232"V"4552"
M48VBV 3 V"60gQK"V"798014"V"E1"V
"1233"V"4553"
M48VBV 4 V"Test/Adj. Weight
4"V""V"E1"V""V""
M48VBV 5 V"Test/Adj. Weight
5"V""V"E1"V""V""
M48VBV 6 V"Test/Adj. Weight
6"V""V"E1"V""V""
M48VBV 7 V"Test/Adj. Weight
7"V""V"E1"V""V""
M48VBV 8 V"Test/Adj. Weight
8"V""V"E1"V""V""
M48VBV 9 V"Test/Adj. Weight
9"V""V"E1"V""V""
M48VBV 10 V"Test/Adj. Weight
10"V""V"E1"V""V""
M48VBV 11 V"Test/Adj. Weight
11"V""V"E1"V""V""
M48VAV 12 V"Test/Adj. Weight
12"V""V"E1"V""V""
The first three test weight settings that are infrequently
used are defined correctly, and the rest is not defined
at all.
Ü M48V^1 The infrequently used parameters of the first test weight
are requested.
Û M48VAV^1 V"50gQK"V"798012"V"E1"V
"5467"V"4556"
The actual test weight name of the requested test
weight is 50gQK, the weight ID is 798012, the weight
class is E1, the weight certificate is 5467 and the
weight set number is 4556.
Ü M48V^3 V"100gQK"V"10988"V"F1"V"5991"V"
4111"
Parameters of the third test weight are changed.
Û M48VA Command understood and executed successfully.
See also
2 M47 – Frequently changed test weight settings } Page  170
174 Commands and Responses​​ MT-SICS Interface Command

M49 – Permanent tare mode.........................................................................................
Description
Define tare value used for start-up. Normal behavior stores tare value to volatile memory and tare value is set
back to zero for start-up (compare [M35 } Page  164 ] for zero value). Permanent behavior stores tare value to
nonvolatile memory (pre-tare value, see [TA } Page  226 ]) and provides tare value for start-up. Two modes for
permanent behavior are distinguished:
one-time storage of current tare value by sending M49 command with tare mode 1
continuous storage of last tare value by activation of mode 2
Syntax
Command
M49 Request the tare behavior.
M49V<TareMode> Set the tare behavior.
Responses
M49VAV<TareMode> Display the tare mode.
M49VA Command understood and executed successfully.
M49VI Command understood but currently not executable.
M49VL Command understood but not executable (incorrect
parameter).
Parameter
Name Type Values Meaning
Integer (^0) Normal, tare set to zero upon startup
(^1) Permanent tare used on startup, one-time storage of
current tare
(^2) Permanent tare used on startup, continuous storage of
last tare value
Comment

Command is similar to M35 command (permanent zero mode).
Examples
Ü M49 Request the tare behavior.
Û M49VAV^1 Permanent tare is used after startup.
Ü M49V^0 Set normal tare behavior after next startup.
Û M49VA Command understood and executed successfully.
Ü M49V^1 Set permanent tare behavior after next startup.
Û M49VA Command understood and executed successfully.
MT-SICS Interface Command Commands and Responses​​ 175

M66 – GWP: Certified test weight settings.......................................................................
Description
Use M66 command to read and write the certified test weight settings. It is used primarily for the Matrix-Code of
the weight certificate of METTLER TOLEDO. It allows directly import the settings of a certified weight from the
certificate into the weigh module and thus eliminates any typing errors.
Syntax
Commands
M66 Query of the data from one weight only.
M66V<"ID">V<"Class">V<"Certificate">V
<"ActualWeight">V<"Unit">V<Day>V<Month>V
<Year>
Set data of one weight only.
Responses
M66VAV<"ID">V<"Class">V<"Certificate">V
<"ActualWeight">V<"Unit">V<Day>V<Month>V
<Year>
Current data from one weight only.
M66VA Command understood and executed successfully.
M66VI Command understood but currently not executable.
M66VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<"ID"> String 5 ... 20
chars
Identifcation of the test weight
<"Class"> String 5 ... 20
chars
Class of the test weight
<"Certificate"> String 5 ... 20
chars
Certificate of test weight
<"ActualWeight"> String Max 20
chars
Actual weight of the test weight
<"Unit"> String Max 2
chars
Unit of the actual weight
<Day> Integer 1 ... 31 Day of the next calibration date, e.g. 05 (Format: dd)
<Month> String 1 ... 12 Month of the next calibration date, e.g. 11 (Format:
mm)
<Year> Integer 2000 ... 
2099
Year of the next calibration date, e.g. 2009 (Format:
yyyy)
Comments
Query of whole list of entries is not possible. Use [M47 } Page 170 ] and [M48 } Page 172 ] to get infor-
mation about all specific tests.
The initial values are set by the software on the weigh module, balance.
Examples for Weight classes: E1, E2, F1, F2, M1, M2, M3, ASTM1, ASTM2, ASTM3, ASTM4, ASTM5,
ASTM6, ASTM7
Please note that this command has a product specific implementation.
This command is available only in XP and XS balances and is not supported in XA balances.
Examples
Ü M66
Û M66VAV"A-0926748"V"E1"V"MT-089987"V"
99.99807"V"g"V 21 V 07 V 210
The query was uniquely defined for the balance, the
balance responds with the inquired data.
176 Commands and Responses​​ MT-SICS Interface Command

Ü M66
Û M66VI The device is not ready to read the test/adj. weight
settings. (e.g. there are more than one Test / Adj.
weight available, therefore the query could not be
answered.
Ü M66V"A-0926748"V"E1"V"MT-089987"V"99
.99807"V"g"V 21 V 07 V 210
Write data on the balance.
Û M66VA The received data are valid and has been stored on
the balance.
Ü M66V"A-0926748"V"E1"V"MT-089987"V"99
.99807"V"g"V 21 V 07 V 210
Write data on the balance.
Û M66VI The device is not ready to read the test/adj. weight
settings. (e.g. there are more than one Test / Adj.
Weight available, therefore the query could not be
answered. See product specific implementation).
MT-SICS Interface Command Commands and Responses​​ 177

M67 – Timeout............................................................................................................
Description
Command M67 provides the possibility to configure the timeout used in commands like "S", "Z" etc to better
meet the actual need.
Syntax
Command
M67 Query the actual timeout.
M67V<Timeout> Set the timeout in seconds.
Responses
M67VAV<Timeout> Current timeout in seconds.
M67VA Command understood and executed successfully.
M67VI Command understood but currently not executable.
M67VL Command understood but not executable (incorrect
parameter).
Parameter
Name Type Values Meaning
<Timeout> Integer 0 ... 65535 Timeout in seconds
Comments
This command affects the behavior of the commands [S } Page 202 ], [Z } Page 244 ], [T } Page 225 ] ...
[C1 } Page 24 ] ... [TST1 } Page 233 ] ... as well as the zeroing procedure at module startup.
To specify the timeout, only integer numbers ranging from 0 to 65535 are allowed, any decimal places
would be truncated.
Choosing a too short timeout may cause other commands to response with "VI" (e.g. "C3VI" if the timeout
is shorter than the time that is needed to place the internal load). Different commands under different
conditions may ask different timeouts; therefore, the actual setting has to be approved under real conditions.
After a [FSET } Page 84 ] command, the timeout will be reset to the factory default.
METTLER TOLEDO recommends a minimal timeout of 40 seconds (factory default setting).
Example
Ü M67V^60 Set the timeout to 60 seconds.
Û M67VA Command understood and executed successfully. The
timeout is now 60 seconds.
178 Commands and Responses​​ MT-SICS Interface Command

M68 – Behavior of serial interfaces................................................................................
Description
This command is used to set the behavior when querying or setting the parameters of the serial interfaces. The
behavior can either be configured to store the parameters of the serial interfaces permanently or temporary. If
the permanent mode is used the parameters remain in case of a system restart. If the temporary mode is
selected the parameters do not remain in case of a system restart. Temporary parameters remain valid until the
system is restarted.
Syntax
Command
M68 Query the behavior of the serial interface.
M68V<Mode> Set the behavior of the serial interface.
Responses
M68VAV<Mode> Current behavior of the serial interface.
M68VA Command understood and executed successfully.
M68VI Command understood but currently not executable.
M68VL Command understood but not executable (incorrect
parameter).
Parameter
Name Type Values Meaning
Integer (^0) Permanent parameter storage
(^1) Temporary parameter storage
Examples
Ü M68 Get current storage mode.
Û M68VAV^0 The parameters of the serial interfaces are stored
permanently.
Ü M68V^1 Set storage mode to temporary.
Û M68VA The parameters of the serial interfaces are stored
temporary.

MT-SICS Interface Command Commands and Responses​​ 179

M69 – Ipv4 network configuration mode........................................................................
Description
General introduction: see I53 – Ipv4 runtime network configuration information. This specific command will set
the mode of how the device will obtain an IP configuration. In case of the mode “Use DHCP, set fallback IP
configuration manually”, the IP settings made via the M70 command will be used in case of problems with the
DHCP server.
Use M69 to set or query the configuration but does not apply the setting immediately and does not check
whether the network stack can support the selected setting. The behavior if the supplied configuration cannot be
supported by the network stack is product specific. Example: If DHCP is activated by M69 although DHCP is
not supported by the network stack: use a well-known hard-coded IP address.
Syntax
Commands
M69 Query the network configuration mode.
M69V<Index> Query the network interface index.
M69V<Index>V<Mode> Set the IP configuration mode for a given network
interface.
Responses
M69VBV<Index>V<Mode>
M69VB...
M69VAV<Index>V<Mode>
Current network configuration mode.
M69VA Command understood and executed successfully.
M69VI Command understood but currently not executable (no
network interfaces present in the system).
M69VL Command understood but not executable (no network
interfaces with index 0 present in the system).
Parameters
Name Type Values Meaning
<Index> Integer 0 or n Network interface index
0 1 st network interface
n n +1th network interface
<Mode> Integer 0 ... 3 Mode of the IP configuration
(^0) Static IP configuration
(^1) Use DHCP, obtain fallback IP configuration with AutoIP
(^2) Use DHCP, set fallback IP configuration manually
(^3) IP networking disabled, no communication possible
Examples
Ü M69 Query the network configuration mode.
Û M69VBV^0 V^0
M69VBV 1 V 1
M69VAV 2 V 2
The network interface at index 0 is manually
configured.
The network interface at index 1 is configured for
DHCP/AutoIP.
The network interface at index 2 is configured for
DHCP/Manual.
Ü M69V^1 Query the mode of network interface index 1.
Û M69VAV^1 V^1 The network interface at index 1 is configured for
DHCP/AutoIP.

180 Commands and Responses​​ MT-SICS Interface Command

Ü M69V^0 V^0 Set IP configuration mode of network interface index 0
to manual.
Û M69VA The IP configuration mode at index 0 is configured for
manual.
Ü M69V^0 V^1 Set IP configuration of network interface index 0 to
DHCP/AutoIP.
Û M69VA The IP configuration mode at index 0 is configured for
DHCP/AutoIP.
Ü M69V^0 V^2 Set IP configuration of network interface index 0 to
DHCP/Manual.
Û M69VA The IP configuration at index 0 is configured for DHCP/
Manual.
Ü M69V^0 V^3 Set IP configuration of network interface index 0 to not
configured.
Û M69VA The IP configuration at index 0 is not configured.
See also
2 M70 – Ipv4 host address and netmask for static configuration } Page  181
MT-SICS Interface Command Commands and Responses​​ 181

M70 – Ipv4 host address and netmask for static configuration..........................................
Description
General Introduction: see I53 – Ipv4 runtime network configuration information. This specific command will set
a basic IP configuration composed of IPv4 host address and IPv4 netmask address. This configuration will be
used by a network device if either the configuration mode M69 is set to manual or the configuration mode is set
to DHCP with manual fallback IP configuration.
Syntax
Commands
M70 Query the host address and netmask.
M70V<Index> Query the host address and netmask of network
interface index.
M70V<Index>V<"Host">V<"Netmask"> Set the host address and netmask for a given network
interface.
Responses
M70VBV<Index>V<"Host">V"Netmask"
M70VBV...
M70VAV<Index>V<"Host">V"Netmask"
Current host address and netmask.
M70VA Command understood and executed successfully.
M70VI Command understood but currently not executable (no
network interfaces present in the system).
M70VL Command understood but not executable (no network
interfaces with index 0 present in the system).
Parameters
Name Type Values Meaning
<Index> Integer 0 or n Network interface index
0 1 st network interface
n n +1th network interface
<"Host"> String Max 15
chars
Ipv4 address (dot-decimal notation) of the device on
the given network interface
<"Netmask"> String Max 15
chars
Ipv4 netmask (dot-decimal notation) on the given
network interface
Comments
If the mode of the IP configuration is set to “DHCP/Manual” M69, the setting of this command only takes
effect in the network stack if DHCP fails.
If the mode of the IP configuration is set to “DHCP/AutoIP” or “not configured” M69, this setting does not take
effect in the network stack.
Examples
Ü M70 Query the host address and netmask.
Û M70VBV^0 V"10.0.0.3"V"255.255.255.0"
M70VBV 1 V"192.168.0.11"V"255.254.0"
M70VAV 2 V"10.0.1.100"V"255.255.255.0"
The host address at index 0 is "10.0.0.3" and the
netmask is "255.255.255.0".
The host address at index 1 is "192.168.0.11" and
the netmask is "255.254.0".
The host address at index 2 is set to "10.0.1.100"
and the netmask is set to "255.255.255.0".
182 Commands and Responses​​ MT-SICS Interface Command

Ü M70V^1 Query the host address and netmask of network
interface index 1.
Û M70VAV^1 V"192.168.0.11"V"255.255.255.
0"
The host address at index 1 is "192.168.0.11" and
the netmask is "255.255.255.0".
See also
2 M69 – Ipv4 network configuration mode } Page  179
MT-SICS Interface Command Commands and Responses​​ 183

M71 – Ipv4 default gateway address.............................................................................
Description
General Introduction: see I53 – Ipv4 runtime network configuration information. This specific command will set
a default gateway address for a specific network device. This configuration will be used by a network device if
either the configuration mode M69 is set to manual or the configuration mode is set to to DHCP with manual
fallback IP configuration.
Syntax
Commands
M71 Query the default gateway address.
M71V<Index> Query the default gateway address of network interface
index.
M71V<Index>V<"DefaultGateway"> Set the default gateway address for a given network
interface.
Responses
M71VBV<Index>V<"DefaultGateway">
M71VBV...
M71VAV<Index>V<"DefaultGateway">
Current default gateway address.
M71VA Command understood and executed successfully.
M71VI Command understood but currently not executable (no
network interfaces present in the system).
M71VL Command understood but not executable (no network
interfaces with index 0 present in the system).
Parameters
Name Type Values Meaning
<Index> Integer 0 or n Network interface index
0 1 st network interface
n n +1th network interface
<"DefaultGateway"> String Max 15
chars
Ipv4 default gateway address (dot-decimal notation)
on the given network interface
Comments
If the mode of the IP configuration is set to “DHCP/Manual” M69, the setting of this command only takes
effect in the network stack if DHCP fails.
If the mode of the IP configuration is set to “DHCP/AutoIP” or “not configured” M69, this setting does not take
effect in the network stack.
Examples
Ü M71 Query the default gateway address.
Û M71VBV^0 V"10.0.0.1"
M71VBV 1 V"192.168.0.1"
M71VAV 2 V"10.0.1.1"
The default gateway address at index 0 is "10.0.0.1".
The default gateway address at index 1 is
"192.168.0.1".
The default gateway address at index 2 is "10.0.1.1".
Ü M71V^1 Query the default gateway address of network interface
index 1.
Û M71VAV^1 V"192.168.0.1" The default gateway address at index 1 is
"192.168.0.1".
184 Commands and Responses​​ MT-SICS Interface Command

Ü M71V^0 V"10.0.0.1" Set the default gateway address of network interface
index 0 to "10.0.0.1".
Û M71VA The default gateway address at index 0 is set to
"10.0.0.1".
See also
2 M69 – Ipv4 network configuration mode } Page  179
MT-SICS Interface Command Commands and Responses​​ 185

M72 – Ipv4 DNS server address....................................................................................
Description
General Introduction: see I53 – Ipv4 runtime network configuration information. This specific command will set
a DNS Server address for a specific network device. This configuration will be used by a network device if either
the configuration mode M69 is set to manual or the configuration mode is set to DHCP with manual fallback IP
configuration.
Syntax
Commands
M72 Query the DNS server address.
M72V<Index> Query the DNS server address for a network interface
index.
M72V<Index>V<"DNSServer"> Set the DNS server address for a given network
interface.
Responses
M72VBV<Index>V<"DNSServer">
M72VBV...
M72VAV<Index>V<"DNSServer">
Current DNS server address.
M72VA Command understood and executed successfully.
M72VI Command understood but currently not executable (no
network interfaces present in the system).
M72VL Command understood but not executable (no network
interfaces with index 0 present in the system).
Parameters
Name Type Values Meaning
<Index> Integer 0 or n Network interface index
0 1 st network interface
n n +1th network interface
<"DNSServer"> String Max 15
chars
Ipv4 DNS server address (dot-decimal notation) on
the given network interface
Comments
If the mode of the IP configuration is set to “DHCP/Manual” M69, the setting of this command only takes
effect in the network stack if DHCP fails.
If the mode of the IP configuration is set to “DHCP/AutoIP” or “not configured” M69, this setting does not take
effect in the network stack.
Examples
Ü M72 Query the DNS server address.
Û M72VBV^0 V"10.0.0.1"
M72VBV 1 V"192.168.0.1"
M72VAV 2 V"10.0.1.1"
The DNS server address at index 0 is "10.0.0.1".
The DNS server address at index 1 is "192.168.0.1".
The DNS server address at index 2 is "10.0.1.1".
Ü M72V^2 Query the DNS server address of network interface
index 2.
Û M72VAV^2 V"10.0.1.1" The DNS server address at index 2 is "10.0.1.1".
186 Commands and Responses​​ MT-SICS Interface Command

Ü M72V^0 V"10.0.0.1" Set the DNS server address of network interface index
0 to "10.0.0.1".
Û M72VA The DNS server address at index 0 is set to
"10.0.0.1".
See also
2 M69 – Ipv4 network configuration mode } Page  179
MT-SICS Interface Command Commands and Responses​​ 187

M89 – Interface command set.......................................................................................
Description
This command queries and sets the interface command set.
Syntax
Commands
M89 Query the command set of all available interfaces.
M89V<Interface> Query specific interface command set.
M89V<Interface>V<CmdSet> Set the specific command set of interface.
Responses
M89VBV<Interface>V<CmdSet>
M89VB...
M89VAV<Interface>V<CmdSet>
Current command set of the first available interface.
Current command set of the last available interface.
M89VA Command understood and executed successfully.
M89VI Command understood but currently not executable.
M89VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
Integer (^0) RS interface 1
(^1) RS interface 2 (model dependent)
(^2) USB device (model dependent)
Integer (^0) MT-SICS
(^1) MT-PM
(^2) Sartorius 22 character output format
(^3) Sartorius 16 character output format
Comment

The value is model dependent.
Examples
Ü M89 Query the command set of all available interfaces.
Û M89VBV^0 V^0 The RS interface 1 uses the MT-SICS command set.
Û M89VAV^2 V^1 The USB interface use the MT-PM command set.
The balance does not have a RS interface 2.
Ü M89V^1 V^2 Set the RS interface 2 to use the Sartorius command
set.
Û M89VA The RS Interface 2 uses the Sartorius command set.
188 Commands and Responses​​ MT-SICS Interface Command

M103 – RS422/485 driver mode..................................................................................
Description
Configure RS422/485 driver mode which defines the handling of the two control pins DE (Driver Enable) and
RE (Receiver Enable).
Syntax
Command
M103 Query the driver mode.
M103V<Interface> Query the driver mode of a specific interface.
M103V<Interface>V<DriverMode> Set the driver mode.
Responses
M103VBV<Interface>V<DriverMode>
M103VB...
M103VAV<Interface>V<DriverMode>
Driver modes of all interfaces.
Driver mode of a specific interface.
M103VA Command understood and executed successfully.
M103VI Command understood but currently not executable.
M103VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<Interface> Integer 0 ... n Identification for physical serial interface (n is product
dependent)
The kind of physical serial interface is product specific
(RS232, RS422, RS485, USB etc.)
Integer (^0) RS232 mode
(^1) RS422 mode (full-duplex)
(^2) RS485 mode (half-duplex) / RS422 mode (half-
duplex)
Comments

The activation of the RS422/485 driver mode is only possible for RS422/485 interfaces.
The RS422 driver mode allows performing full-duplex communication using 4 unidirectional wires.
The RS485 driver mode allows performing half-duplex communication using 2 bidirectional wires.
The setting of data flow control COM may be dependent on the setting of the RS422/485 driver mode and
vice versa.
Examples
Ü M103V^0 V^2 Activate RS485 driver mode on the serial interface 0.
Û M103VA Command understood and executed successfully.
Ü M103 Query the driver mode.
Û M103VBV^0 V^0
M103VBV 1 V 2
M103VAV 2 V 0
Serial interfaces 0 and 2 are configured to use the
classical RS232 mode, e.g. because the underlying
physical interface is RS232 or CL which does not
allow RS422/485 modes.
The serial interface 1 is configured to use RS485
driver mode.
See also
2 COM – Parameters of the serial interfaces } Page  44
MT-SICS Interface Command Commands and Responses​​ 189

M109 – IPv4 device managed network configuration setting.............................................
Description
This command defines the setting for the IPv4 device managed network configuration. If IPv4 device managed
network configuration is enabled, the device itself manages its network configuration. The network configuration
can take place for example through a display on a terminal or MT-SICS commands for network configuration,
see dependencies. If IPv4 device managed network configuration is disabled, the network settings of the device
are configured by an external device, e.g. an Industrial Ethernet configuration tool.
Syntax
Commands
M109 Query the current settings.
M109V<DevNetEnabled> Change settings.
Responses
M109VAV<DevNetEnabled> Current list of setting.
M109VA Command understood and executed successfully.
M109VI Command understood but currently not executable.
M109VL Command understood but not executable (selected
setting is not available).
Parameter
Name Type Values Meaning
<DevNetEnabled> Integer 0 or 1 IPv4 device managed network configuration factory
setting
(^0) IPv4 configuration not managed by this device
(^1) IPv4 configuration managed by this device
Comment

Changing the settings of M109 may influence the available IPv4 network configuration capabilities of the
device (e.g. disable certain SICS commands).
Examples
Ü M109 Request the setting of IPv4 device managed network
configuration.
Û M109VAV^0 The setting for device managed network configuration
is set to disabled.
Ü M109V^0 Set the setting to enabled.
Û M109VA Command understood and executed successfully.
See also
2 M69 – Ipv4 network configuration mode } Page  179
2 M70 – Ipv4 host address and netmask for static configuration } Page  181
2 M71 – Ipv4 default gateway address } Page  183
2 M72 – Ipv4 DNS server address } Page  185
190 Commands and Responses​​ MT-SICS Interface Command

M110 – Change display resolution................................................................................
Description
For automated processes like dosing, higher weight value resolutions are needed to control the process. This
command increases/decreases the weight value resolution up to factor 100. The guaranteed readability is the
standard readability based on datasheet.
Syntax
Command
M110 Query the current display resolution.
M110V<FactorID> Set the factor.
Responses
M110VAV<FactorID> Current display resolution.
M110VA Command understood and executed successfully.
Parameter
Name Type Values Meaning
<FactorID> Integer -6 Factor 100 lower
-5 Factor 50 lower
-4 Factor 20 lower
-3 Factor 10 lower
-2 Factor 5 lower
-1 Factor 2 lower
(^0) Standard display resolution
(^1) Factor 2 higher
(^2) Factor 5 higher
(^3) Factor 10 higher
(^4) Factor 20 higher
(^5) Factor 50 higher
(^6) Factor 100 higher
Comments

Typical use case of an increased display resolution: Improved process control of filling and dosing appli-
cations. Process control can round the value at the required decimal.
The resolution is specified in digits [d] – this is the smallest increment a device may display.
The customer unit M22 will not be changed with the M110 command.
It is recommended to implement only one of the commands M23 or M110 in a product.
If both commands are implemented, only one of the settings can be active at the same time, i.e. only one of
the commands can be configured to a value other than 0 at the same time.
The stability criteria for the weight result (weighing commands) will be adapted for lower display resolution
to the selected readability based on the USTB setting (same as M23). M110 only has an influence on
weighing; it has no influence on the stability criteria for the taring, zeroing and adjustments.
The stability criteria will not change for higher display resolution.
M110 settings have no effect in production and service mode.
This command may only be used on not certified devices. On certified devices it is not allowed to use this
function.
MT-SICS Interface Command Commands and Responses​​ 191

Examples
Ü M110 Request the current display resolution.
Û M110VAV^6 The current display resolution is factor 100 higher.
Example: standard readability 1 g -> factor 100
shows 0.01 g.
Ü M110V-2 Set display resolution to factor 5 lower.
Û M110VA The display resolution is 5 lower.
See also
2 M22 – Custom unit definitions } Page  155
2 M23 – Readability, 1d/xd } Page  156
192 Commands and Responses​​ MT-SICS Interface Command

MOD – Various user modes..........................................................................................
Description
The MOD command can be used to activate a higher display resolution. The additionally displayed digit(s) or
display increment is referred to as an auxiliary digit step. All specifications regarding weighing performance still
relate to the nominal readability stated in the specifications.
The auxiliary digit step is a 'tendency display' that provides additional information which is especially valuable
when dispensing small quantities. A maximum of 2 additional digits can be displayed.
Syntax
Commands
MOD Query the user modes.
MODV<Mode> Set user mode by mode.
MODV<Mode>V<Increment>V<Unit> Set user mode by increment.
Responses
MODVAV<Mode> Query the current user mode.
MODVAV<Mode>V<Increment>V<Unit> Query the current user mode with increments.
MODVA Command understood and executed successfully.
MODVI Command understood but currently not executable.
MODVL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
Boolean (^0) Switch off all user modes
(^1) Increased display resolution
Float Define higher display resolution
String Unit from value increment
Comments

The MOD command is only available on request by your METTLER TOLEDO contact person.
Mode 1 affects all S commands: [S } Page 202 ], [SI } Page 204 ], [SIR } Page 207 ]... However, the
syntax response of the S command remains unchanged: "SVSVV". In addition: The
rounding can be affected as follows: In control mode, 100.4 g can be displayed as 100.38 g.
Activation of the increased display resolution has no effect on the stability criteria set under
[USTB } Page 240 ]. Note: The auxiliary digit step can be unstable (e.g. due to environmental effects)
although the stability criterion (according to [USTB } Page 240 ]) is fulfilled.
When taring and zeroing, although the auxiliary digit step is set to zero when the [T } Page 225 ] or
[Z } Page 244 ] command is transmitted, depending on environmental conditions the additional decimal
place may soon be different from zero.
Examples
Ü MOD Query the current user mode.
Û MODVAV^0 The user mode is off.
Ü MOD Query the current user mode.
Û MODVAV^1 V0.0001Vg The user mode is 1 (Increased display resolution) and
increment is 0.0001 g
Ü MODV^1 Set the user mode to Mode 1 (increased display
resolution factor 10).
Û MODVA User mode is set to the desired value.
MT-SICS Interface Command Commands and Responses​​ 193

Ü MODV^1 V0.0001Vg Set the user mode to Mode 1 and the increments to
0.0001 g.
Û MODVA User mode is set to the desired value.
194 Commands and Responses​​ MT-SICS Interface Command

MONH – Monitor on interface........................................................................................
Description
The MONH command sent all telegrams (requests and responses) from the selected interface are sent in parallel
to the interface from which the command is executed.
Syntax
Commands
MONH Query the monitor on interface setting.
MONHV<State>V<Interface> Set monitor on interface.
MONHV<State> Set monitor interface off.
Responses
MONHVAV<State> Current monitor on interface setting.
Assumption: monitor function is off (State = 0).
MONHVAV<State>V<Interface> Current monitor on interface setting.
Assumption: monitor function is on (State = 1).
MONHVA Activate/deactivate the monitor on an interface.
MONHVA Set the monitor interface off; State = 0.
MONHVI Command understood but currently not executable.
MONHVL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
Boolean (^0) Off
(^1) On
Integer 0 ... n Interface number (n is product dependent)
Comments

The monitored interface can be faster than the current one. In this case some telegrams might be discarded.
[SIR } Page 207 ] or other repetitive commands are not locked and can lead to nonsense. MONH is locked
against an [SIR } Page 207 ] on the monitoring interface, not on the monitored.
On some systems the Baud rate of the monitoring interface is set to the same Baud rate as the monitored
interface.
The command [@ } Page 15 ] does not stop the MONH.
Examples
Ü MONH Query the current monitor on interface setting.
Û MONHVAV^0 The monitor on interface is off.
Ü MONH Query the current monitor on interface setting.
Û MONHVAV^1 V^0 The monitor on interface 0 is on.
Ü MONHV^1 V^1 Set the monitor on interface 1 to on (set from interface
0).
Û MONHVA The monitor on interface 1 is on.
MT-SICS Interface Command Commands and Responses​​ 195

NID – Node Identification (for network protocols).............................................................
Description
Node identification. This is required to identify each device in a communication network.
Syntax
Commands
NID Query the weigh module address.
NIDV<NodeID> Set the weigh module address.
Responses
NIDVAV<NodeID> Current weigh module address.
NIDVA Command understood and executed successfully.
NIDVL Command understood but not executable (incorrect
parameter).
Parameter
Name Type Values Meaning
<NodeID> Integer 1 ... 31 Node identification
Comments
This command is only available if an interface for addressed mode (e.g. RS422) is present.
In the addressed communication protocol, see [PROT } Page 197 ], the address (1 .. 31) is represented by
a one-byte ASCII coded character starting at "1" (31 hex). The highest address (31) thus corresponds to 4F
hex (ASCII character "O"). All commands must be sent to the module with preceding address byte. Conse-
quently, the first byte of all responses is also the address:
dec. 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
hex. 30 31 32 33 34 35 36 37 38 39 3A 3B 3C 3D 3E 3F
ASCII 0 1 2 3 4 5 6 7 8 9 : ; < = >?
dec.^16171819202122232425262728293031
hex. 40 41 42 43 44 45 46 47 48 49 4A 4B 4C 4D 4E 4F
ASCII @ A B C D E F G H I J K L M N O
All commands sent to the module must have a leading address byte. Because of this, the first byte of all
responses is also the address.
The address 0 (30 hex) is a broadcast. All modules on the network will reply.
Examples
Ü NID Query the current weigh module address.
Û NIDVAV^15 The address (Node ID) is 15 decimal = "?" ASCII.
Ü NIDV^12 Set the Node ID: 12 decimal = "<" ASCII to the weigh
module.
Û NIDVA Address (Node ID) set as desired.
See also
2 PROT – Protocol mode } Page  197
196 Commands and Responses​​ MT-SICS Interface Command

NID2 – Device node ID.................................................................................................
Description
Node IDs can be changed via MT-SICS command. This command is only available for Profibus DP.
Syntax
Commands
NID2 Query the node identification.
NID2V<NodeID> Set the node identification.
Responses
NID2VAV<NodeID> Current node identification.
NID2VA Command understood and executed successfully.
NID2VI Command understood but currently not executable.
NID2VL Command understood but not executable (incorrect
parameter).
Parameter
Name Type Values Meaning
<NodeID> Integer 0 ... 127 Node identification
Example
Ü NID2V^12 Set the node identifications to 12.
Û NID2VA Node identification is set to 12.
MT-SICS Interface Command Commands and Responses​​ 197

PROT – Protocol mode.................................................................................................
Description
This command is only available if an interface for addressed mode (e.g. RS422) is present.
Syntax
Command
PROT Query the protocol mode.
PROTV<Mode> Set the protocol mode.
Responses
PROTVAV<Mode> Current protocol mode.
PROTVA Command understood and executed successfully.
PROTVL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
Integer (^0) Standard protocol without addressing
(terminal mode)
(^1) Addressed protocol, suitable for network
applications
(^2) Framed Protocol, see
[Appendix } Page 248 ]
Comments

The PROT command only changes the protocol of the interface that is suitable for addressed mode commu-
nication. Protocol via any other interface, such as RS232, is not affected.
In the addressed communication protocol, the address (1 ... 31) is represented by a one-byte ASCII coded
character starting at "1" (31 hex). The highest address (31) thus corresponds to 4F hex (ASCII character
"O"). All commands must be sent to the module with a preceding address byte. Consequently, the first byte
of all responses is also the address.
To avoid bus conflicts, do not use repetitive commands ([SIR } Page 207 ], [SNR } Page 214 ],
[SR } Page 218 ]) in addressed mode if more than one weigh module is connected to the network.
It’s better to set the node ID with [NID } Page 195 ] before selecting an addressed protocol. Otherwise, the
current node ID has to precede the [NID } Page 195 ] command if it should be changed.
Example
Ü PROT Query the current protocol mode.
Û PROTVAV^0 The standard protocol without addressing (terminal
mode) is active.
Ü NIDV^18 Set module address to 18 (ASCII "B").
Û NIDVA Module address set as desired.
Ü PROTV^1 Set the protocol mode to addressed protocol.
Û PROTVA Protocol set as desired.
Ü BS Query of stable weight value from the Module with
address 18 (ASCII "B").
Û BSVSVVVV100.000Vg Module with address 18 responds and sends the
current value (100.000 g).
See also
2 NID – Node Identification (for network protocols) } Page  195
198 Commands and Responses​​ MT-SICS Interface Command

PW – Piece counting: Piece weight................................................................................
Description
Use PW to set the reference weight of 1 piece, which you can then use for the piece counting application.
You can also use PW to query the reference weight that you have set using , , or PW.
Syntax
Commands
PW Query of the piece weight for the piece counting appli-
cation.
PWV<SinglePiece>V<Unit> Set the piece weight for the according value. The unit
should correspond to the unit actually set under Host
unit.
Responses
PWVAV<SinglePiece>V<Unit> Current piece weight value in unit actually set under
Host unit.
PWVA Command understood and executed successfully.
PWVI Command understood but currently not executable
(e.g. piece counting application is not active or
balance is currently executing another command).
PWVL Command understood but not executable (parameter
is incorrect).
Comments
This command can only be used with the application "Piece counting". For details on available applications
and how the activate them see M25 and M26.
The range of the piece weight value is specified to the balance type.
If a reference weight has been defined, the display unit automatically changes to PCS and can be queried
with [SU } Page 223 ] commands.
Example
Ü PWV20.00Vg Set the piece weight of the piece counting application
to 20.00 g.
Û PWVA Piece weight value is set.
MT-SICS Interface Command Commands and Responses​​ 199

PWR – Switch on / Switch off........................................................................................
Description
Use PWR to switch the balance on or off. When it is switched off, standby mode is activated.
Syntax
Command
PWRV<OnOff> Switch the balance on or off.
Responses
PWRVA Balance has been switched off successfully.
PWRVAV
I4VAV<"SNR">
Balance with the serial number "SNR" has been
switched on successfully see [I4 } Page  89 ].
PWRVI Command understood but currently not executable
(balance is currently executing another command,
e.g. taring, or application is not in Home screen).
PWRVL Command understood but not executable.
Parameter
Name Type Values Meaning
Integer (^0) Set the balance to standby mode
(^1) Switch the balance on
Comment

The balance response to [I4 } Page 89 ] appears unsolicited after switching the balance on.
Example
Ü PWRV^1 Switch the balance on.
Û PWRVA The balance has been switched on successfully.
Û I4VAV"0123456789" The serial number is shown.
See also
2 I4 – Serial number } Page  89
200 Commands and Responses​​ MT-SICS Interface Command

R01 – Restart device....................................................................................................
Description
Restarts the device. This is a warm start.
Syntax
Command
R01 Restart the device.
Response
I4VAV<"SerialNumber"> (or equivalent
startup response)
Startup response of the device.
Parameter
Name Type Values Meaning
I4VAV<"SerialNumber"> Startup response after the device has restarted
Example
Ü R01 Restart the device.
Û I4VAV"B001000001" The software has been restarted. The serial number of
the device is B001000001.
See also
2 FSET – Reset all settings to factory defaults } Page  84
2 M38 – Selective parameter reset } Page  165
MT-SICS Interface Command Commands and Responses​​ 201

RDB – Readability........................................................................................................
Description
Readability, e.g. 0.0001 g with a WMS404C-L weigh module, determines the smallest weight increment that
can be measured and sent via interface to the system called 1 digit (1 d). It strongly affects weighing behavior,
especially weighing speed, stability, and reproducibility. The RDB command makes the weigh module faster at
the cost of the smallest weight increment that can be distinguished. Proper setting of this parameter is therefore
important to the entire weighing application.
Syntax
Commands
RDB Query the current readability.
RDBV<DecPlaces> Readability expressed as number of decimal places
referring to weight unit g.
Responses
RDBVAV<DecPlaces> Current readability.
RDBVA Command understood and executed successfully.
RDBVL Command understood but not executable (incorrect
parameter).
Parameter
Name Type Values Meaning
<DecPlaces> Integer 0 ... max.
decimal
places
Readability in weight unit g (Decimal places)
Comments
Default factory setting for RDB is the maximum possible number of decimal places (highest accuracy)
specific to the respective module, e.g. 4 decimal places with a WMS404C-L weigh module.
The definition of the readability is always referring to the weight unit gram, regardless of the current used
weighing unit.
RDB enables reduction of the number of decimal places below the maximum; it cannot be increased above
the maximum nor accept negative values. For more decimal places, see [MOD } Page 192 ].
After acknowledgement "RDBVA", the weigh module performs a complete restart similar to startup after
power up. Weighing and communication can be resumed when the restart procedure is complete. Due to
the restart procedure, new initial zero setting is performed and the tare memory is reset to 0. Nevertheless,
all other settings (except readability) are not affected.
The RDB command can be used for a complete firmware restart by leaving the parameter of RDB
unchanged.
Since the stability criterion for weighing, taring, and zero setting, as well as for adjustment and test is
related to digits "d", see [USTB } Page 240 ], changing the readability will also change the absolute
stability criteria for all functions including the adjustment (calibration) and test procedures.
Examples
Ü RDB Query the current readability
Û RDBVAV^1 The readability is 1 = 0.1 g
Ü RDBV^2 Set the readability to 2 = 0.01 g.
Û RDBVA Readability set as desired.
Û I4VAV"B123456789" Restart, I4 shows the serial number B123456789.
See also
2 USTB – User stability criteria } Page  240
202 Commands and Responses​​ MT-SICS Interface Command

S – Stable weight value................................................................................................
Description
Use S to send a stable weight value, along with the host unit, from the balance to the connected communi-
cation partner via the interface.
If the automatic door function is enabled and a stable weight is requested the balance will open and close the
balance's doors to achieve a stable weight.
Syntax
Command
S Send the current stable net weight value.
Responses
SVSV<WeightValue>V<Unit> Current stable weight value in unit actually set under
host unit.
SVI Command understood but currently not executable
(balance is currently executing another command,
e.g. taring, or timeout as stability was not reached).
SVL Command understood but not executable (incorrect
parameter).
SV+ Balance in overload range.
SV- Balance in underload range.
Comments
The duration of the timeout depends on the balance type.
The weight value is formatted as a right aligned string with 10 characters including the decimal point. For
details, please refer to Format of responses with weight value.
To send the stable weight value in actually displayed unit, see [SU } Page 223 ].
Example
Ü S Send a stable weight value.
Û SVSVVVVV100.00Vg The current, stable ("S") weight value is 100.00 g.
MT-SICS Interface Command Commands and Responses​​ 203

SC – Send stable weight value or dynamic value after timeout...........................................
Description
Command SC with configurable timeout is used for processes with defined time cycles.
Syntax
Command
SCV<Time> Send the current stable net weight value – or dynamic
weight value immediately after timeout. Timeout
defined in ms.
Responses
SVSV<WeightValue>V<Unit> Current stable weight value in unit actually set under
host unit.
SVDV<WeightValue>V<Unit> Dynamic weight value in unit actually set under host
unit after timeout.
SVI Command understood but currently not executable
(balance is currently executing another command,
e.g. taring, or timeout as stability was not reached).
SVL Command understood but not executable (incorrect
parameter).
SV+ Balance in overload range.
SV- Balance in under load range.
Parameters
Name Type Values Meaning
<Time> Integer 0 ...
65535 ms
Timeout in Milliseconds [ms]
<WeightValue> Float Weight value
<Unit> String Currently displayed unit
Comments
will be rounded to the next possible interval (interval steps 8 ms)
The [M67 } Page 177 ] command does not apply for the SC command.
The criterion for the stability of the weight value is set by the [USTB } Page 240 ] command.
The weight value is formatted as a right aligned string with 10 characters including the decimal point. For
details, please refer to chapter Format of responses with weight value.
Example
Ü SCV^500 Send a stable weight value or within 500 ms a
dynamic weight value.
Û SVSVVVVV100.00Vg If the weigh module is able to determine a stable
weight value within 500 ms, this value will be trans-
mitted immediately; the weight is 100.00 g.
or
Û SVDVVVVV103.04Vg In case this is not possible (e.g. due to vibrations), a
dynamic weight value will be transmitted immediately
after timeout; in this example, a dynamic weight value
(note the ‘D’ in the answer string) of 103.04 g was
transmitted after 500 ms. The stability criterion for
weighing was not met within 500 ms.
204 Commands and Responses​​ MT-SICS Interface Command

SI – Weight value immediately......................................................................................
Description
Use SI to immediately send the current weight value, along with the host unit, from the balance to the
connected communication partner via the interface.
Syntax
Command
SI Send the current net weight value, irrespective of
balance stability.
Responses
SVSV<WeightValue>V<Unit> Stable weight value in unit actually set under host unit.
SVDV<WeightValue>V<Unit> Non-stable (dynamic) weight value in unit actually set
under host unit.
SVI Command understood but currently not executable
(balance is currently executing another command,
e.g. taring).
SVL Command understood but not executable (incorrect
parameter).
SV+ Balance in overload range.
SV- Balance in underload range.
Comments
The balance response to the command SI with the last internal weight value (stable or dynamic) before
receipt of the command SI.
To send weight value immediately in actually displayed unit, see [SIU } Page 212 ].
The weight value is formatted as a right aligned string with 10 characters including the decimal point. For
details, please refer to Format of responses with weight value.
Example
Ü SI Send current weight value.
Û SVDVVVVV129.07Vg The weight value is unstable (dynamic, "D") and is
currently 129.07 g.
MT-SICS Interface Command Commands and Responses​​ 205

SIC1 – Weight value with CRC16 immediately.................................................................
Description
This command is an extension of the SI command with an additional <CRC16> hash value.
Syntax
Command
SIC1 Query current weight value.
Responses
SIC1VAV<Status>V<Weight>V<Unit>V
<CRC16>
Current weight value together with the <CRC16> value.
SIC1VI The request could not be served because the state of
the balance did not allow it (e.g. a taring or zeroing in
progress).
Parameters
Name Type Values Meaning
<Status> Char Weight status
S Stable weight
D Dynamic weight (unstable, not accurate)
+ Overload
Underload
I Invalid value
String Net weight value in host unit
String The unit used for this command is the host unit
Integer CRC16 hash value over the whole message
CRC-16-CCITT algorithm value (polynomial:
0x1021, initial value: 0xFFFF)
Comments
The CRC is calculated over the whole message, starting with the first S up to and including the space before
the CRC itself. For example: SIC1VSV12325.00VgV E603 → Message and CRC.
Similar to other S commands this weight command reflects the error code in the command response if there
is an internal error (with influence on the weight).
Examples
Ü SIC1 Query current weight value.
Û SIC1VSV12325.00VgVE603 The current weight value is 12325.00 g and the value
is detected as stable.
Ü SIC1 Query current weight value.
Û SIC1V+ The request could not be served because of overload.
A similar response is sent in case of underload.
206 Commands and Responses​​ MT-SICS Interface Command

SIC2 – HighRes weight value with CRC16 immediately....................................................
Description
This command is similar to SIC1 with the only difference that a high resolution weight is returned.
Syntax
Command
SIC2 Query current weight value.
Responses
SIC2VAV<Status>V<HRWeight>V<Unit>V
<CRC16>
High resolution weight value together with the CRC16
value.
SIC2VI The request could not be served because the state of
the balance did not allow it (e.g. a taring or zeroing in
progress).
Parameters
Name Type Values Meaning
<Status> Char Weight status
S Stable weight
D Dynamic weight (unstable, not accurate)
+ Overload
Underload
I Invalid value
String High resolution net weight value in host unit
String The unit used for this command is the host unit
Integer CRC16 hash value over the whole message
The CRC16 is calculated using the CRC-16-CCITT
algorithm
Comments
The CRC is calculated over the whole message, starting with the first S up to and including the space before
the CRC itself. For example: SIC1VVV12325.00VgV E603 → Message and CRC.
Similar to other S commands this weight command reflects the error code in the command response if there
is an internal error (with influence on the weight).
Examples
Ü SIC2 Query current weight value.
Û SIC2VSV12325.0012VgVC7C9 The current HighRes weight value is 12325.0012 g
and the value is detected to be stable.
Ü SIC2 Query current weight value.
Û SIC2V+ The request could not be served because of overload.
A similar response is sent in case of underload.
MT-SICS Interface Command Commands and Responses​​ 207

SIR – Weight value immediately and repeat....................................................................
Description
Use SIR to immediately send the current weight value, along with the host unit, from the balance to the
connected communication partner via the interface, but this time on a continuous basis.
Syntax
Command
SIR Send the net weight values repeatedly, irrespective of
balance stability.
Responses
SVSV<WeightValue>V<Unit> Stable weight value in unit actually set under host unit.
SVDV<WeightValue>V<Unit> Non-stable (dynamic) weight value in unit actually set
under host unit.
SVI Command understood but currently not executable
(balance is currently executing another command,
e.g. taring).
SVL Command understood but not executable (incorrect
parameter).
SV+ Balance in overload range.
SV- Balance in underload range.
Comments
SIR is overwritten by the commands [S } Page 202 ], [SI } Page 204 ], [SR } Page 218 ], [@ } Page 15 ]
and hardware break and hence cancelled.
To send weight value in actually displayed unit, see [SIRU } Page 208 ].
The number of weight values per second can be configured using [UPD } Page 239 ].
The weight value is formatted as a right aligned string with 10 characters including the decimal point. For
details, please refer to chapter Format of responses with weight value.
Example
Ü SIR Send current weight values at intervals.
Û SVDVVVVV129.07Vg The balance sends stable ("S") or unstable ("D")
Û SVDVVVVV129.08Vg weight values at intervals.
Û SVSVVVVV129.09Vg
Û SVSVVVVV129.09Vg
Û SVDVVVVV114.87Vg
Û SV...
See also
2 S – Stable weight value } Page  202
2 SI – Weight value immediately } Page  204
2 SR – Send stable weight value and repeat on any weight change } Page  218
2 @ – Cancel } Page  15
2 UPD – Update rate of SIR and SIRU output on the host interface } Page  239
208 Commands and Responses​​ MT-SICS Interface Command

SIRU – Weight value in display unit immediately and repeat.............................................
Description
Request current weight value in display unit independent of the stability and repeat sending responses until the
command is stopped.
Syntax
Command
SIRU Requests the current weight value and repeat.
Responses
SVSV<WeightValue>V<Unit> Stable weight value in unit actually set under host unit.
SVDV<WeightValue>V<Unit> Non-stable (dynamic) weight value in unit actually set
under host unit.
SVI Command understood but currently not executable
(balance is currently executing another command,
e.g. taring).
SVL Command understood but not executable (incorrect
parameter).
SV+ Balance in overload range.
SV- Balance in underload range.
Comments
As the [SIR } Page 207 ] command, but with currently displayed unit.
The number of weight values per second can be configured using [UPD } Page 239 ].
The weight value is formatted as a right aligned string with 10 characters including the decimal point. For
details, please refer to chapter Format of responses with weight value.
Example
Ü SIRU Query of the current weight value with currently
displayed unit.
Û SVDVVVVVV12.34Vlb Non-stable (dynamic) weight value of 12.34 lb.
Û SVDVVVVVV12.44Vlb Non-stable (dynamic) weight value of 12.44 lb.
Û SVDVVVVVV12.43Vlb Non-stable (dynamic) weight value of 12.43 lb.
See also
2 SIR – Weight value immediately and repeat } Page  207
2 UPD – Update rate of SIR and SIRU output on the host interface } Page  239
MT-SICS Interface Command Commands and Responses​​ 209

SIS – Send netweight value with actual unit and weighing status.......................................
Description
Use SIS to immediately send the current net weight value to the connected communication partner via the
interface, along with the host unit and other information regarding the weighing status.
Syntax
Command
SIS Send the current net weight value.
Responses
SISVAV<State>V<"NetWeight">V<Unit1>V
<Readability>V<Step>V<Approv>V<Info>
At status 0 to 3.
SISVAV<State>V"<Error>" At status 4 to 6.
SISVI Command understood but currently not executable.
SVL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
Integer (^0) Stable weight value
(^1) Dynamic weight value
(^2) Stable inaccurate weight
(MinWeigh)
(^3) Dynamic inaccurate weight
(MinWeigh)
(^4) Overload
(^5) Underload
(^6) Error, not valid
<"NetWeight"> Float Net weight value

210 Commands and Responses​​ MT-SICS Interface Command

Name Type Values Meaning
Integer (^0) Gram g
(^1) Kilogram kg
(^2) reserved
(^3) Milligram mg
(^4) Microgram μg
(^5) Carat ct
(^6) reserved
(^7) Pound avdp lb
(^8) Ounce avdp oz
(^9) Ounce troy ozt
(^10) Grain GN
(^11) Pennyweight dwt
(^12) Momme mom
(^13) Mesghal msg
(^14) Tael Hongkong tlh
(^15) Tael Singapore tls
(^16) Tael Taiwan tlt
(^17) reserved
(^18) Tola tola
(^20) Baht baht
Integer 0 ... 6 Amount of decimal places
Integer (^1) "1" step
(^2) "2" step
(^5) "5" step
(^10) "10" step
(^20) "20" step
(^50) "50" step
(^100) "100" step
Integer (^0) Standard balance, Not
approved
(^1) e = d
(^10) e = 10 d
(^100) e = 100 d
-1 Unapproved with * in
display
Integer (^0) Without tare
(^1) Net with weighed tare
(^2) Net with stored tare
Comments

Can not be used with custom unit, piece counting (PCS) or percent weighing (%).
This command has no effect on the other S* commands.
The units and/or their notation may be different in older software versions.
Relates to the host output interfaces. The weight unit is the host unit, not the displayed unit.
Also supplies a weigh value for zeroing, adjusting and taring, and in the menu.
MT-SICS Interface Command Commands and Responses​​ 211

Examples
Ü SIS Query of the current weight value with actual host unit
and weighing status.
Û SIS<"NetWeight">A<"NetWeight">0<"Net
Weight">"100.00"<"NetWeight">0<"NetW
eight">2<"NetWeight">1<"NetWeight">1
0<"NetWeight">0
100.0(0) g.
Ü SIS Query of the current weight value.
Û SIS<"NetWeight">A<"NetWeight">1<"Net
Weight">"10.0"<"NetWeight">5<"NetWei
ght">2<"NetWeight">50<"NetWeight">0<
"NetWeight">2
10.0 ct, carat value, with step 50, in coarse range,
with stored tare and unstable.
Ü SIS Query of the current weight value.
Û SIS<"NetWeight">A<"NetWeight">6<"Net
Weight">"Error7"
Error, not valid.
Ü SIS Query of the current weight value.
Û SIS<"NetWeight">A<"NetWeight">4<"Net
Weight">""
Overload.
212 Commands and Responses​​ MT-SICS Interface Command

SIU – Weight value in display unit immediately...............................................................
Description
Request current weight value in display unit independent of the stability.
Syntax
Command
SIU Request the current weight value in display unit.
Responses
SVSV<WeightValue>V<Unit> Stable weight value in unit actually set under host unit.
SVDV<WeightValue>V<Unit> Non-stable (dynamic) weight value in unit actually set
under host unit.
SVI Command understood but currently not executable
(balance is currently executing another command,
e.g. taring).
SVL Command understood but not executable (incorrect
parameter).
SV+ Balance in overload range.
SV- Balance in underload range.
Comments
As the [SI } Page 204 ] command, but with currently displayed unit.
The weight value is formatted as a right aligned string with 10 characters including the decimal point. For
details, please refer to chapter Format of responses with weight value.
Example
Ü SIU Requests the current weight value in display unit
independent of the stability.
Û SVDVVVVVV12.34Vlb Non-stable (dynamic) weight value is 12.34 lb.
MT-SICS Interface Command Commands and Responses​​ 213

SIUM – Weight value in display unit and MinWeigh information immediately......................
Description
Use SIUM to immediately send the current weight value, along with the displayed unit and MinWeigh infor-
mation, from the balance to the connected communication partner via the interface.
Syntax
Command
SIUM Send the current net weight value with currently
displayed unit and MinWeigh Information, irrespective
of balance stability.
Responses
SV<Status>V<WeightValue>V<Unit> Weight value in currently displayed unit.
SVI Command understood but currently not executable
(balance is currently executing another command,
e.g. taring).
SVL Command understood but not executable (incorrect
parameter).
SV+ Balance in overload range.
SV- Balance in underload range.
Parameters
Name Type Values Meaning
<Status> Char S Stable, net >= MinWeigh limit
D Dynamic, net >= MW limit
M Stable, net < MinWeigh limit
N Dynamic, net < MW limit
<WeightValue> Float Weight value
<Unit> String Currently displayed unit
Comments
As the [SI } Page 204 ] command, but with currently displayed unit and MinWeigh information.
If the MinWeigh function is switched off, or is not available on the balance, it corresponds to the command
[SIU } Page 212 ].
The weight value is formatted as a right aligned string with 10 characters including the decimal point. For
details, please refer to chapter Format of responses with weight value.
Examples
Ü SIUM Query of the current weight value with currently
displayed unit.
Û SVDVVVVV123.34Vmg Dynamic net weight displayed, greater than MinWeigh
limit.
Ü SIUM Query of the current weight value with currently
displayed unit.
Û SVMVVVVV123.34Vmg Stable net weight displayed, less than MinWeigh limit.
Ü SIUM Query of the current weight value with currently
displayed unit.
Û SVNVVVVV123.34Vmg Dynamic net weight displayed, less than MinWeigh
limit.
214 Commands and Responses​​ MT-SICS Interface Command

SNR – Send stable weight value and repeat on stable weight change.................................
Description
Request the current stable weight value in host unit followed by stable weight values after predefined minimum
weight changes until the command is stopped.
Syntax
Commands
SNR Send the current stable weight value and repeat after
each deflection (see comment).
SNRV<PresetValue>V<Unit> Send the current stable weight value and repeat after
each deflection greater or equal to the preset value
(see comment).
Responses
SVSV<WeightValue>V<Unit>
SVSV<WeightValue>V<Unit>
...
Current stable weight value (1st value).
Next stable weight value after preset deflection (2nd
value).
...
SVI Command understood but currently not executable
(balance is currently executing another command,
e.g. taring, or timeout as stability was not reached).
SVL Command understood but not executable (incorrect
parameter).
SV+ Balance in overload range.
SV- Balance in underload range.
Parameters
Name Type Values Meaning
<PresetValue> Float 1 digit ... capacity Preset minimum deflection load
<Unit> String Currently displayed unit
Comments
The preset value is optional. If no value is defined, the deflection depends on balance readability as follows:
Readability Min. deflection
0.001 mg 0.001 g
0.01 mg 0.01 g
0.1 mg 0.1 g
0.001 g 1 g
0.01 g 1 g
0.1 g 1 g
1 g 5 g
SNR is overwritten by the commands [S } Page 202 ], [SI } Page 204 ], [SIR } Page 207 ], [@ } Page 15 ]
and hardware break and hence cancelled.
The weight value is formatted as a right aligned string with 10 characters including the decimal point. For
details, please refer to chapter Format of responses with weight value.
MT-SICS Interface Command Commands and Responses​​ 215

Example
Ü SNRV^50 Vg Send the current stable weight value and repeat after
each deflection greater or equal to the preset value of
50 g.
Û SVSVVVVVV12.34Vg 1 st weight value is 12.34 g.
Û SVSVVVVVV67.89Vg 2 nd weight value is 67.89 g.
216 Commands and Responses​​ MT-SICS Interface Command

change....................................................................................................................... SNRU – Send stable weight value with currently displayed unit and repeat on stable weight
stable weight change
Description
Request the current stable weight value in display unit followed by stable weight values after predefined
minimum weight changes until the command is stopped.
Syntax
Commands
SNRU Send the current stable weight value with the currently
displayed unit and repeat after each deflection (see
comment).
SNRUV<PresetValue>V<Unit> Send the current stable weight value with the currently
displayed unit and repeat after each deflection greater
or equal to the preset value (see comment).
Responses
SVSV<WeightValue>V<Unit>
SVSV<WeightValue>V<Unit>
...
Current stable weight value (1st value).
Next stable weight value after preset deflection (2nd
value).
...
SVI Command understood but currently not executable
(balance is currently executing another command,
e.g. taring, or timeout as stability was not reached).
SVL Command understood but not executable (incorrect
parameter).
SV+ Balance in overload range.
SV- Balance in underload range.
Parameters
Name Type Values Meaning
<PresetValue> Float 1 digit ... capacity Preset minimum deflection load
<Unit> String Currently displayed unit
Comments
The preset value is optional. If no value is defined, the deflection depends on balance readability as follows:
Readability Min. deflection
0.001 mg 0.001 g
0.01 mg 0.01 g
0.1 mg 0.1 g
0.001 g 1 g
0.01 g 1 g
0.1 g 1 g
1 g 5 g
As the [SNR } Page 214 ] command, but with current displayed unit.
SNRU is overwritten by the commands [S } Page 202 ], [SI } Page 204 ], [SIR } Page 207 ],
[@ } Page 15 ] and hardware break and hence cancelled.
The weight value is formatted as a right aligned string with 10 characters including the decimal point. For
details, please refer to chapter Format of responses with weight value.
MT-SICS Interface Command Commands and Responses​​ 217

Example
Ü SNRUV^50 Vg Send the current stable weight value with the currently
displayed unit and repeat after each deflection greater
or equal to the preset value of 50 g.
Û SVSVVVVVV12.34Vg 1 st weight value is 12.34 g.
Û SVSVVVVVV67.89Vg 2 nd weight value is 67.89 g.
218 Commands and Responses​​ MT-SICS Interface Command

SR – Send stable weight value and repeat on any weight change......................................
Description
Request the current stable weight value in host unit followed by weight values after predefined minimum weight
changes until the command is stopped.
Syntax
Commands
SR Send the current stable weight value and then contin-
uously after every weight change
If no preset value is entered, the weight change must
be at least 12.5% of the last stable weight value,
minimum = 30 digit.
SRV<PresetValue>V<Unit> Send the current stable weight value and then contin-
uously after every weight change greater or equal to
the preset value a non-stable (dynamic) value
followed by the next stable value, range = 1 digit to
maximal capacity.
Responses
SVSV<WeightValue>V<Unit> Current, stable weight value in unit actually set as host
unit, 1st weight change.
SVDV<WeightValue>V<Unit> Dynamic weight value in unit actually set as host unit.
SVSV<WeightValue>V<Unit> Next stable weight value in unit actually set as host
unit.
SVI Command understood but currently not executable
(balance is currently executing another command,
e.g. zero setting, or timeout as stability was not
reached).
SVL Command understood but not executable (incorrect
parameter).
SV+ Balance in overload range.
SV- Balance in underload range.
Parameters
Name Type Values Meaning
<WeightValue> Float Weight value
<Unit> String Unit, only available units permitted
Comments
SR is overwritten by the commands [S } Page 202 ], [SI } Page 204 ], [SIR } Page 207 ], [@ } Page 15 ]
and hardware break and hence cancelled.
In contrast to SR, [SNR } Page 214 ] only sends stable weight values.
If, following a non-stable (dynamic) weight value, stability has not been reached within the timeout interval,
the response SVI is sent and then a non-stable weight value. Timeout then starts again from the beginning.
The preset value can be entered in any by the balance accepted unit.
The weight value is formatted as a right aligned string with 10 characters including the decimal point. For
details, please refer to chapter Format of responses with weight value.
MT-SICS Interface Command Commands and Responses​​ 219

Example
Ü SRV10.00Vg Send the current stable weight value followed by every
load change of 10 g.
Û SVSVVVVV100.00Vg Balance stable.
Û SVDVVVVV115.23Vg 100.00 g loaded.
Û SVSVVVVV200.00Vg Balance again stable.
See also
2 S – Stable weight value } Page  202
2 SI – Weight value immediately } Page  204
2 SIR – Weight value immediately and repeat } Page  207
2 SNR – Send stable weight value and repeat on stable weight change } Page  214
220 Commands and Responses​​ MT-SICS Interface Command

change....................................................................................................................... SRU – Send stable weight value with currently displayed unit and repeat on any weight
weight change
Description
Request the current weight values in display unit and repeat sending responses after a predefined minimum
weight change until the command is stopped.
Syntax
Commands
SRU Send the current stable weight value with the currently
displayed unit and then continuously after every
weight change.
If no preset value is entered, the weight change must
be at least 12.5% of the last stable weight value,
minimum = 30 digit.
SRUV<WeightValue>V<Unit> Send the current stable weight value with the currently
displayed unit and then continuously after every
weight change greater or equal to the preset value a
non-stable (dynamic) value followed by the next
stable value, range = 1 digit to maximal capacity.
Responses
SVSV<WeightValue>V<Unit> Current, stable weight value with the currently
displayed unit until 1st weight change.
SVDV<WeightValue>V<Unit> Non-stable (dynamic) weight value with the currently
displayed unit.
SVI Command understood but currently not executable
(balance is currently executing another command,
e.g. taring).
SVL Command understood but not executable (incorrect
parameter).
SV+ Balance in overload range.
SV- Balance in underload range.
Parameters
Name Type Values Meaning
<WeightValue> Float Weight value
<Unit> String Unit, only available units permitted
Comments
As the [SR } Page 218 ] command, but with currently displayed unit.
SRU is overwritten by the commands [S } Page 202 ], [SI } Page 204 ], [SIR } Page 207 ], [@ } Page 15 ]
and hardware break and hence cancelled.
In contrast to [SR } Page 218 ], [SNRU } Page 216 ] only sends stable weight values.
If, following a non-stable (dynamic) weight value, stability has not been reached within the timeout interval,
the response SVI is sent and then a non-stable weight value. Timeout then starts again from the beginning.
The preset value can be entered in any by the balance accepted unit.
The weight value is formatted as a right aligned string with 10 characters including the decimal point. For
details, please refer to chapter Format of responses with weight value.
Example
Ü SRU Send the current stable weight value followed by every
default load change with current display unit.
MT-SICS Interface Command Commands and Responses​​ 221

Û SVSVVVVVV12.34Vlb 1 st weight value is stable and12.34 lb.
Û SVDVVVVVV13.88Vlb 2 nd weight value is non-stable and13.88 lb.
Û SVSVVVVVV15.01Vlb 3 rd weight value is stable and15.01 lb.
222 Commands and Responses​​ MT-SICS Interface Command

ST – Stable weight value on pressing (Transfer) key........................................................
Description
Use ST to send the current stable weight value when the transfer key is pressed. The value is sent, along
with the currently displayed unit, from the balance to the connected communication partner via the interface.
Syntax
Commands
ST Query the current status transfer function.
STV (^1) Sent the current stable net weight value with display
unit each time when the transfer key is pressed.
STV (^0) Stop sending weight value when print key is pressed.
Responses
STVAV (^0) Function inactive, no weight value is sent when the
transfer key is pressed.
STVAV (^1) Function active, weight value is sent each time when
the transfer key is pressed.
STVA Command understood and executed successfully.
STVI Command understood but currently not executable
(balance is currently executing another command).
STVL Command understood but not executable (incorrect
parameter).
Parameter
Name Type Values Meaning
Boolean Behavior of the transfer function
(^0) Inactive
(^1) Active
Comments

STV 0 is the factory setting (default value).
ST function is not active after switching on and after reset command.
The weight value is formatted as a right aligned string with 10 characters including the decimal point. For
details, please refer to chapter Format of responses with weight value.
Example
Ü STV^1 Activate ST function.
Û STVA Command executed.
Û SVSVVVV123.456Vg When transfer key pressed: current net weight is
123.456 g.
MT-SICS Interface Command Commands and Responses​​ 223

SU – Stable weight value in display unit.........................................................................
Description
Use SU to query the stable weight value in display unit.
If the automatic door function is enabled and a stable weight is requested the balance will open and close the
balance's doors to achieve a stable weight.
Syntax
Command
SU Query the stable weight value with the currently
displayed unit.
Responses
SVSV<WeightValue>V<Unit> Current stable weight value with the currently
displayed unit.
SVI Command understood but currently not executable
(balance is currently executing another command,
e.g. taring, or timeout as stability was not reached).
SVL Command understood but not executable (incorrect
parameter).
SV+ Balance in overload range.
SV- Balance in underload range.
Responses
SVSV<WeightValue>V<Unit> Current stable weight value with the currently
displayed unit.
SVI Command understood but currently not executable
(balance is currently executing another command,
e.g. taring, or timeout as stability was not reached).
SV+ Balance in overload range.
SV- Balance in underload range.
Parameters
Name Type Values Meaning
<WeightValue> Float Weight value
<Unit> String Currently displayed unit
Comments
As the [S } Page 202 ] command, but with currently displayed unit.
The weight value is formatted as a right aligned string with 10 characters including the decimal point. For
details, please refer to chapter Format of responses with weight value.
Example
Ü SU Query the stable weight value with the currently
displayed unit.
Û SVSVVVVVV12.34Vlb The current, stable weight value is 12.34 lb.
224 Commands and Responses​​ MT-SICS Interface Command

SUM – Stable weight value in display unit and MinWeigh information................................
Description
Use SUM to send the current stable weight value, along with the currently displayed unit and the MinWeigh
information, from the balance to the connected communication partner via the interface.
Syntax
Command
SUM Send the current stable net weight value with currently
displayed unit and MinWeigh Information.
Responses
SUMV<Status>V<WeightValue>V<Unit> Weight value in currently displayed unit.
SVI Command understood but currently not executable
(balance is currently executing another command,
e.g. taring).
SVL Command understood but not executable (incorrect
parameter).
SV+ Balance in overload range.
SV- Balance in underload range.
Parameters
Name Type Values Meaning
<Status> Char S Stable, >= MinWeigh limit
M Stable, < MinWeigh limit
<WeightValue> Float Weight value
<Unit> String Weight unit
Comments
As the [S } Page 202 ] command, but with currently displayed unit and MinWeigh information.
If a weight other than the net weight is displayed, only the "S" index and the stable weight value displayed
are output on the interface.
If the MinWeigh function is switched off or not available on the balance, the corresponding command is
[SU } Page 223 ].
The weight value is formatted as a right aligned string with 10 characters including the decimal point. For
details, please refer to chapter Format of responses with weight value.
Examples
Ü SUM Query of the current weight value with currently
displayed unit.
Û SVMVVVVV123.34Vmg Stable weight displayed, less than MinWeigh limit.
Ü SUM Query of the current weight value with currently
displayed unit.
Û SVSVVVVV123.34Vmg Stable weight displayed, greater than MinWeigh limit.
MT-SICS Interface Command Commands and Responses​​ 225

T – Tare......................................................................................................................
Description
Use T to tare the balance. The next stable weight value will be saved in the tare memory.
Syntax
Command
T Tare, i.e. store the next stable weight value as a new
tare weight value.
Responses
TVSV<TareValue>V<Unit> Taring successfully performed.
The tare weight value returned corresponds to the
weight change on the balance in the unit actually set
under host unit since the last zero setting.
TVI Command understood but currently not executable
(balance is currently executing another command,
e.g. zero setting, or timeout as stability was not
reached).
TVL Command understood but not executable (incorrect
parameter).
TV+ Upper limit of taring range exceeded.
TV- Lower limit of taring range exceeded.
Parameters
Name Type Values Meaning
<TareValue> Float Weight value
<Unit> String Currently displayed unit
Comments
The tare memory is overwritten by the new tare weight value.
The duration of the timeout depends on the balance type.
Clearing tare memory: see [TAC } Page 227 ].
The weight value is formatted as a right aligned string with 10 characters including the decimal point. For
details, please refer to Format of responses with weight value.
The draft shield closes with this command, when the "Door function" is set on "Automatic".
It opens after sending a stable weight.
Example
Ü T Tare.
Û TVSVVVVV100.00Vg The balance is tared and has a value of 100.00 g in
the tare memory.
See also
2 TAC – Clear tare weight value } Page  227
226 Commands and Responses​​ MT-SICS Interface Command

TA – Tare weight value.................................................................................................
Description
Use TA to query the current tare value or preset a known tare value.
Syntax
Commands
TA Query of the current tare weight value.
TAV<TarePresetValue>V<Unit> Preset of a tare value.
Responses
TAVAV<TareWeightValue>V<Unit> Query current tare weight value in tare memory, in unit
actually set under host unit.
TAVI Command understood but currently not executable
(balance is currently executing another command,
e.g. zero setting, or timeout as stability was not
reached).
TAVL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
<TareWeightValue> Float Tare Weight value
<Unit> String Currently displayed unit
Comments
The tare memory will be overwritten by the preset tare weight value.
The inputted tare value will be automatically rounded by the balance to the current readability.
The taring range is specified to the balance type.
The weight value is formatted as a right aligned string with 10 characters including the decimal point. For
details, please refer to chapter Format of responses with weight value.
Example
Ü TAV100.00Vg Preset a tare weight of 100 g.
Û TAVAVVVVV100.00Vg The balance has a value of 100.00 g in the tare
memory.
See also
2 TAC – Clear tare weight value } Page  227
MT-SICS Interface Command Commands and Responses​​ 227

TAC – Clear tare weight value........................................................................................
Description
Use TAC to clear the tare memory.
Syntax
Command
TAC Clear tare value.
Responses
TACVA Tare value cleared, 0 is in the tare memory.
TACVI Command understood but currently not executable
(balance is currently executing another command,
e.g. zero setting).
TVL Command understood but not executable (incorrect
parameter).
Example
Ü TAC Clear tare value.
Û TACVA Tare value cleared, o is in the tare memory.
See also
2 T – Tare } Page  225
2 TI – Tare immediately } Page  230
2 TA – Tare weight value } Page  226
2 TC – Tare or tare immediately after timeout } Page  228
228 Commands and Responses​​ MT-SICS Interface Command

TC – Tare or tare immediately after timeout.....................................................................
Description
Command TC with configurable timeout is used for processes with defined time cycles.
Syntax
Command
TCV<Time> Tare, i.e. store the next stable weight value as a new
tare weight value, and send this value back - or store
and send dynamic value immediately after timeout.
Timeout defined in ms.
Responses
TCVSV<TareWeightValue>V<Unit> Taring successfully performed.
The tare weight value returned corresponds to the
weight change on the balance in the unit actually set
under host unit since the last zero setting.
TCVDV<TareWeightValue>V<Unit> Taring performed using an unstable (status “D” for
dynamic) tare value immediately after timeout.
The tare weight value returned corresponds to the
weight change on the balance in the unit actually set
under host unit since the last zero setting.
TCVI Command understood but currently not executable
(balance is currently executing another command,
e.g. zero setting, or timeout as stability was not
reached).
TCVL Command understood but not executable (incorrect
parameter).
TCV+ Upper limit of taring range exceeded.
TCV- Lower limit of taring range exceeded.
Parameters
Name Type Values Meaning
<Time> Integer 1 ...
65535 ms
Timeout in milliseconds [ms]
<TareWeightValue> Float Tare weight value
<Unit> String Currently displayed unit
Comments
The tare memory is overwritten by the new tare weight value.
will be rounded to the next possible interval (interval steps 8 ms).
The [M67 } Page 177 ] command does not apply for the TC command.
The criterion for the stability of the weight value is set by the [USTB } Page 240 ] command.
The tare value can be inquired by using the [TA } Page 226 ] command.
Clearing tare memory: see [TAC } Page 227 ].
The weight value is formatted as a right aligned string with 10 characters including the decimal point. For
details, please refer to chapter Format of responses with weight value.
Example
Ü TCV^500 Tare within a maximum time period of 500 ms.
Û TCVSVVVVV100.00Vg The balance is tarred and has a value of 100.00 g in
the tare memory.
or
MT-SICS Interface Command Commands and Responses​​ 229

Û TCVDVVVVV105.46Vg Taring performed upon timeout of 500 ms, an
unstable (status "D" for dynamic) tare value of
105.46 g is stored in the tare memory. The stability
criterion for taring was not met.
See also
2 TAC – Clear tare weight value } Page  227
230 Commands and Responses​​ MT-SICS Interface Command

TI – Tare immediately...................................................................................................
Description
Use TI to tare the balance immediately and independently of balance stability.
Syntax
Command
TI Tare immediately, i.e. store the current weight value,
which can be stable or non stable (dynamic), as tare
weight value.
Responses
TIVSV<WeightValue>V<Unit> Taring performed, stable tare value.
The new tare value corresponds to the weight change
on the balance since the last zero setting.
TIVDV<WeightValue>V<Unit> Taring performed, non-stable (dynamic) tare value.
TIVI Command understood but currently not executable
(balance is currently executing another command,
e.g. zero setting).
TIVL Command understood but not executable (e.g.
approved version of the balance).
TIV+ Upper limit of taring range exceeded.
TIV- Lower limit of taring range exceeded.
Parameters
Name Type Values Meaning
<WeightValue> Float Tare weight value
<Unit> String Currently displayed unit
Comments
This command is not supported by approved balances.
The tare memory will be overwritten by the new tare weight value.
After a non-stable (dynamic) stored tare weight value, a stable weight value can be determined. However,
the absolute value of the stable weight value determined in this manner is not accurate.
The taring range is specific to the balance type.
The weight value is formatted as a right aligned string with 10 characters including the decimal point. For
details, please refer to Format of responses with weight value.
The stored tare weight value is sent in the unit actually set under host unit.
Example
Ü TI Tare immediately.
Û TIVDVVVVV117.57Vg The tare memory holds a non-stable (dynamic) weight
value.
See also
2 TAC – Clear tare weight value } Page  227
MT-SICS Interface Command Commands and Responses​​ 231

TIM – Time..................................................................................................................
Description
Set the system time of the balance or query the current time.
Syntax
Commands
TIM Query of the current time of the balance.
TIMV<Hour>V<Minute>V<Second> Set the time of the balance.
Responses
TIMVAV<Hour>V<Minute>V<Second> Current time of the balance.
TIMVA Command understood and executed successfully.
TIMVI Command understood but currently not executable
(balance is currently executing another command).
TIMVL Command understood but not executable (incorrect
parameter, e.g. 22 V 67 V 25 ) or no clock is built in.
Parameters
Name Type Values Meaning
<Hour> Integer 00 ... 23 Hours
<Minute> Integer 00 ... 59 Minutes
<Second> Integer 00 ... 59 Seconds
Comments
The parameter setting will be saved and the only way to reset the default value will be via MT-SICS or by
means of a factory reset, [FSET } Page 84 ] or via terminal not [@ } Page 15 ].
Use [C2 } Page 26 ] to begin the adjustment procedure with the set weight.
Example
Ü TIM Query of the current time of the balance.
Û TIMVAV^09 V^56 V^11 The current time of the balance is 9 hours, 56 minutes
and 11 seconds.
See also
2 DAT – Date } Page  47
232 Commands and Responses​​ MT-SICS Interface Command

TST0 – Query/set test function settings............................................................................
Description
Use TST0 to query the current setting for testing the balance, or to specify the type of testing (internal or
external).
Syntax
Commands
TST0 Query of the setting for the test function.
TST0V<Test> Set the test configuration of the balance.
Responses
TST0VAV<Test>V<"WeightValue">V
<"Unit">
Current setting for the test function.
TST0VA Command understood and executed successfully.
TST0VI Command understood but currently not executable
(balance is currently executing another command).
TST0VL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
Integer (^0) Test with internal weight
(^1) Test with external weight
<"WeightValue"> String 10 chars Weight of the external test weight
<"Unit"> String Max 9
chars
Unit ot the external weight currently set
Comments

The current value of the external weight can be seen in the menu under "Test", see Reference Manual.
With an internal test, no weight value appears.
For additional information on testing the adjustment, see the Reference Manual of the balance.
The value of the external weight is set in the menu under "Test" or with [M20 } Page 151 ].
Example
Ü TST0 Query of the current setting for the test and the value of
the external test weight
Û TST0VAV^1 V"VVV2000.0Vg" The current setting corresponds to the test with an
external weight.
For a test initiated with the [TST2 } Page 235 ]
command, an external weight of 2000.0 g is needed.
See also
2 C0 – Adjustment setting } Page  22
MT-SICS Interface Command Commands and Responses​​ 233

TST1 – Test according to current settings........................................................................
Description
Use TST1 to start the balance test function using the preset parameter settings.
Syntax
Command
TST1 Start test function in the current setting
[TST0 } Page  232 ], [M20 } Page  151 ].
First Responses
TST1VB The test procedure has been started. Wait for next
response, see Comment.
TST1VAV<"Deviation"> Test completed, current difference is mention.
TST1VI Command understood but currently not executable
(balance is currently executing another command).
No second response follows.
TST1VL Command understood but not executable (incorrect
parameter). No second response follows.
Further Responses
TST1V<"TestWeight">V<"Unit"> Prompt to unload and load the balance (only with
external weight).
TST1VAV<"TestWeight">V<"Unit"> Test procedure completed successfully.
Weight value with unit corresponds to the deviation
from the specified value displayed after the test.
No unit is specified if the test has been performed with
the internal weight.
TST1VI The test procedure has been aborted as, e.g. stability
was not attained or wrong weights were loaded.
Parameters
Name Type Values Meaning
<"Deviation" String Current difference in definition unit
<"TestWeight"> String Weight value
<"Unit"> String Currently displayed unit
Comments
Commands sent to the balance during the test procedure are not processed and responded to in the appro-
priate manner until the test procedure is at an end.
Use [@ } Page 15 ] to abort a running test.
For additional information on testing the adjustment, see the Reference Manual of the balance.
Example
Ü TST1 Start test function in the current setting.
Û TST1VB The test procedure has been started.
Û TST1V"VVV0.00000Vg" Clear weighing pan.
Û TST1V"V100.00000Vg" Load 100 g external weight.
Û TST1V"VVV0.00000Vg" Unload weight.
Û TST1VAV"VVV0.00020Vg" Test completed, current difference is 0.00020 g.
234 Commands and Responses​​ MT-SICS Interface Command

See also
2 TST0 – Query/set test function settings } Page  232
2 M20 – Test weight } Page  151
2 C1 – Start adjustment according to current settings } Page  24
MT-SICS Interface Command Commands and Responses​​ 235

TST2 – Test with external weight....................................................................................
Description
Use TST2 to start the balance test function using external test weights.
Syntax
Command
TST2 Start test function with external weight.
First Responses
TST2VB The test procedure has been started. Wait for next
response, see Comment.
TST2VAV<"Deviation"> Test completed, current difference is mention.
TST2VI Command understood but currently not executable
(balance is currently executing another command).
No second response follows.
TST2VL Command understood but not executable (incorrect
parameter). No second response follows.
Further Responses
TST2V<"TestWeight">V<"Unit"> Prompt to unload and load the balance.
TST2VAV<"TestWeight">V<"Unit"> Test procedure completed successfully.
Weight value with unit corresponds to the deviation
from the specified value displayed in the top line after
the test.
TST2VI The test procedure has been aborted as, e.g. stability
was not attained or wrong weights were loaded.
Parameters
Name Type Values Meaning
<"Deviation" String Current difference in definition unit
<"TestWeight"> String Weight value
<"Unit"> String Currently displayed unit
Comments
Commands sent to the balance during the test procedure are not processed and responded to in the appro-
priate manner until the test procedure is at an end.
Use [@ } Page 15 ] to abort a running test.
For additional information on testing the adjustment, see the Reference Manual of the balance.
The value of the external weight is set in the menu under "Test" or with [M20 } Page 151 ].
Example
Ü TST2 Start test with external weight.
Û TST2VB The test procedure has been started.
Û TST2V"VVV0.00Vg" Prompt to unload the balance.
Û TST2V"V200.00Vg" Prompt to load the test weight.
Û TST2V"VVV0.00Vg" Prompt to unload the balance.
Û TST2VAV"VVV0.01Vg" External test completed successfully.
See also
2 M20 – Test weight } Page  151
2 C2 – Start adjustment with external weight } Page  26
236 Commands and Responses​​ MT-SICS Interface Command

TST3 – Test with internal weight.....................................................................................
Description
Use TST3 to start the sensitivity test function using internal test weights.
Syntax
Command
TST3 Start sensitivity test function with internal weight.
Responses
TST3VB The test procedure has been started. Wait for next
response, see Comments.
TST3VAV<"DeviationValue"> Test procedure completed successfully.
Weight value corresponds to the deviation from the
specified value displayed after the test.
TST3VI Command understood but currently not executable
(balance is currently executing another command).
No second response follows.
The test procedure has been aborted as, e.g. stability
was not attained or wrong weights were loaded.
TST3VL Command understood but not executable (incorrect
parameter). No second response follows.
Parameter
Name Type Values Meaning
<"DeviationValue"> String Current difference (deviation value is output without
unit)
Comments
The commands received immediately after the first response are not processed and responded to in the
appropriate manner until after the second response.
Use [@ } Page 15 ] to abort a running test.
For additional information on testing the adjustment, see the Reference Manual of the balance.
The unit is fixed to definition unit, no unit is output since the internal weight is used.
The result from the TST3 is in % on the display and in digit on the host interface.
Example
Ü TST3 Start sensitivity test with internal weight.
Û TST3VB The test procedure has been started.
Û TST3VAV"VVVVVV0.0002" Test with internal weight completed successfully. The
difference to the specified value is 0.0002 (= 2 digits
from a weigh module/balance with an increment of
0.1 mg).
See also
2 C3 – Start adjustment with internal weight } Page  28
MT-SICS Interface Command Commands and Responses​​ 237

TST5 – Module test with built-in weights (scale placement sensitivity test)..........................
Description
Start the module test function using built-in weights to verify the scale placement sensitivity adjustment. This
test does not return the overall sensitivity error of the weigh module, but it shows the sensitivity error after the
factory and scale placement adjustment stage in the signal path. The corrections of the signal, which are done
with the scale production and customer/user adjustment stage, are not taken into account in this test function.
This test function is used to verify the sensitivity adjustment done by command C9 (scale placement sensitivity
adjustment). Do not use this test function, to verify the sensitivity adjustment done by commands C1, C2, C3,
C6 and C8 (customer sensitivity adjustment).
Syntax
Commands
TST5 Starts the test procedure with built-in weights.
Responses
TST5VB Test procedure has been started.
TST5VAV<"DevPerMille"> Test completed, current difference is mentioned.
Parameters
Name Type Values Meaning
<"DevPerMille"> String Deviation of the measured signal when the built-in
weights are applied to the scale, relative to the exact
value of the built-in weights in per mille (‰). The
value is rounded to the resolution of the finest range
Comments
This test shows the sensitivity error after the factory/production adjustment and the scale placement
adjustment stage in the signal path using built-in weights. In certain scales (especially in hybrid scales) the
overall sensitivity error cannot be tested using built-in weights as these built-in weights cannot be applied
on the external lever system. The only thing what can be tested in this case is the sensitivity error of the load
cell itself, i.e. the signal before the corrections of the external lever system (which is typically done in the
scale production adjustment stage and the customer/user adjustment stage). However be careful that if the
adjustment of the external lever system or even the customer sensitivity or linearity adjustment is not done
correctly, the scale sensitivity error can be bad even if this test function shows a good result.
For example in hybrid scales, a sensitivity adjustment using built-in weights can only correct the span of the
load cell without external lever system. This is typically done using command C9 (scale placement sensi-
tivity adjustment). With this test function it can be determined if such a sensitivity adjustment using built-in
weights is necessary.
This test function is similar to TST3, but at a different place in the signal path. The output parameter
deviation is defined in per mille (different to TST3).
This adjustment can be canceled by the command @ or C.
Example
Ü TST5 Starts the test procedure.
Û TST5VB Test procedure has been started.
Û TST5VAV"0.23" Test completed; current difference is 0.23 per mille.
238 Commands and Responses​​ MT-SICS Interface Command

Command-specific error responses
Response
TST5VEV<Error> Current error code.
Parameter of command-specific error
Parameters
Name Type Values Meaning
Integer (^0) Timeout
(^1) Cancel
(^2) Built-in weight not supported
(^3) Test not available (e.g. unknown or disabled)
(^4) Calibration load error (e.g. load value of built-in
weights is too light or too heavy)
(^5) Busy (e.g. another adjustment or test is already
running)

MT-SICS Interface Command Commands and Responses​​ 239

UPD – Update rate of SIR and SIRU output on the host interface.........................................
Description
Use UPD to set the update rate of the host interface or query the current setting.
Syntax
Commands
UPD Query of the update rate of the host interface.
UPDV<CurrentUPD> Set the update rate of the host interface.
Responses
UPDVAV<CurrentUPD> Current setting of the update rate of the host interface.
UPDVA Command understood and executed successfully.
UPDVI Command understood but currently not executable
(balance is currently executing another command).
UPDVL Command understood but not executable (incorrect
parameter).
Parameter
Name Type Values Meaning
<UpdateRate> Float 1 ... 1000 Update rate in values per second
Terminal: 1 ... ..23, stand-alone bridge: 1 ... ..1000
Comments
The parameter setting will be saved and the only way to reset the default value will be via MT-SICS or by
means of a factory reset, [FSET } Page 84 ] or via terminal not [@ } Page 15 ].
Use [C2 } Page 26 ] to begin the adjustment procedure with the set weight.
Use UPD to configure the update rate of [SIR } Page 207 ] and [SIRU } Page 208 ].
The balance can not realize every arbitrary update rate. The specified update rate is therefore rounded to the
next realizable update rate. Use UPD without parameter to query the actually configured update rate.
An update rate less than 23 must be specified for weigh modules, balances with a terminal. Otherwise,
unpredictable behavior may occur.
Examples
Ü UPD Query of the update rate of the host interface.
Û UPDVAV20.2 The update rate of the interface is 20.2 values per
second.
Ü UPDV^20 Set the update rate of the host interface to 20 values
per second.
Û UPDVA Command executed successfully.
Û UPD Query of the exact update rate of the host interface.
Û UPDVAV18.311 The exact update rate is 18.311 values per second.
240 Commands and Responses​​ MT-SICS Interface Command

USTB – User stability criteria..........................................................................................
Description
Use USTB to define the stability criteria individually for weighing, taring, zero setting and adjustment functions..
Syntax
Commands
USTB Query the current stability criteria for all functions:
weighing, taring, and zero setting.
USTBV<Function>V<Crit>V<Time> Set the stability criteria.
Responses
USTBVBV<Function>V<Crit>V<Time>
USTBVB...
USTBVAV<Function>V<Crit>V<Time>
Current settings of the stability criteria.
USTBVA Command understood and executed successfully.
USTBVL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
Integer (^0) Stability criterion for weighing, see
"[S } Page 202]", "[SI } Page 204]",
"[SIR } Page 207]" ... commands
(^1) Stability criterion for taring, see
"[T } Page 225]", "[TI } Page 230]",
commands
(^2) Stability criterion for zero setting, see
"[Z } Page 244]", "[ZI } Page 246]",
commands
(^3) Stability criterion for adjustment, see
"[C1 } Page 24]" to "[C9 } Page 41]",
commands
Float 0.1 ... 1000 digit Specify tolerance in digits (smallest
weight increment) within which the value
must stay to be regarded as stable
Float 0.1 ... 4.0 seconds Specify the observation time in seconds
during which the value must stay within
tolerance in order to be regarded as stable
Comments

The observation time period is rolling.
It restarts every time the current weight value exceeds the tolerance. Therefore, the actual time for stability
determination depends on the current weight trend as well as on the history before sending an
[S } Page 202], [SR } Page 218]..., [T } Page 225], or [Z } Page 244] command. Ideally, taring or
zero setting can take just a few milliseconds, provided the weight value was stable for the observation time
period before sending the appropriate command.
During power up or restart, see [RDB } Page 201] command the zero point will only be determined if
stability for zero setting is achieved. Otherwise, an undefined weight value will appear after the start up
procedure is completed
The adjustment function parameter is not available on all product lines.
MT-SICS Interface Command Commands and Responses​​ 241

Examples
Ü USTB Query the current stability criteria for all functions:
weighing, taring, and zero setting.
Û USTBVBV^0 V^1 V^1 Stability criteria for weighing: 1 digit for at least 1
seconds.
Û USTBVBV^1 V0.5V^2 Stability criteria for taring: 0.5 digit for at least 2
seconds.
Û USTBVAV^2 V0.5V^2 Stability criteria for zeroing: 0.5 digit for at least 2
seconds.
Ü USTBV^0 V^1 V1.5 Set the stability criteria for weighing to 1 digit for at
least 1.5 seconds.
Û USTBVA Command understood and executed successfully.
242 Commands and Responses​​ MT-SICS Interface Command

WMCF – Configuration of the weight monitoring functions.................................................
Description
The WMCF command is used to configure a "Check weighing" or "Dispensing" function without a PC or PLC. The
digital outputs DOTV1...3 are used.
Syntax
Commands
WMCF Query the current configuration of the weight
monitoring functions.
WMCFV<Function> Set WMCF function.
WMCFV 1 V<TargetValue>V<Unit>V<Tol->V
<Unit>V<Tol+>V<Unit>
Set configuration for "Control Weighing" function.
The digital output will be set if a stable weight value is:
DOTV 1 : below <TargetValue> - <Tol->.
DOTV 2 : between <TargetValue> - <Tol-> and
<TargetValue> + <Tol+>.
DOTV 3 : over <TargetValue> + <Tol+>.
WMCFV 2 V<Limit1>V<Unit>V<Limit2>V<U-
nit>V<Limit3>V<Unit>
Set configuration for "Dispensing" function.
The digital output will be set if a any (stable and
unstable) weight value reach:
DOTV 1 : <Limit1>.
DOTV 2 : <Limit2>.
DOTV 3 : <Limit3>.
Responses
WMCFVAV 0
or
WMCFVAV 1 V<TargetValue>V<Unit>V<Tol->V
<Unit>V<Tol+>V<Unit>
or
WMCFVAV 2 V<Limit1>V<Unit>V<Limit2>V
<Unit>V<Limit3>V<Unit>
Current configurations for the weight monitor function.
WMCFVA Command understood and executed successfully.
WMCFVI Command understood but currently not executable.
WMCFVL Command understood but not executable (incorrect
parameter).
Parameters
Name Type Values Meaning
Integer (^0) Off
(^1) Control weighing
(^2) Dispensing
Float Target value
<Tol-> Float Minus tolerance
<Tol+> Float Plus tolerance
... Float Weight limit value
String Target, tolerance and limit unit, only
available units permitted
Comments

Digital output must be available.
Only one command [DOTC } Page 52 ] (n), DOTP (n) or WMCF can be configured for the same digital
output.
MT-SICS Interface Command Commands and Responses​​ 243

TargetValue and Limit1 ... Limit3 will be rounded to the defined resolution from the load cell.
Only allowed units are permitted, see [M21 } Page 152 ].
The weight value monitoring function works only with a weight value command (e.g. [SI } Page 204 ],
[SIR } Page 207 ]).
The weight value monitoring function works only on the interface 1 (RS422), see [COM } Page 44 ].
The update rate depends on the defined [UPD } Page 239 ] rate.
Tol- and Tol+ defined as % reference to the Target Value.
Duration and Delay from the digital output must be defined with the command [DOT } Page 51 ].
Examples
Ü WMCF Query the current configuration for the weight
monitoring function.
Û WMCFVAV^0 No weight monitoring function is activated.
or
Û WMCFVAV^1 V^100 VgV^3 VgV^5 V% The target weight for check weighing is 100 g.
Weights which are equal to or greater than 97 g and
less than or equal to 105 g (=100 g+5 %) are within
the tolerance.
The digital Output are TRUE, if weight value is stable
and:
DOTV 1 : < 97 g.
DOTV 2 : ≥ 97 g and ≤ 105 g.
DOTV 3 : > 105 g.
or
Û WMCFVAV^2 V^70 VgV^75 VgV^76 Vg The limits of the dispensing function are 70 g, 75 g,
and 76 g. The digital output are TRUE, if any (stable
and unstable) weight values are:
DOTV 1 : ≥ 70 g.
DOTV 2 : ≥ 75 g.
DOTV 3 : ≥ 76 g.
Ü WMCFVAV^1 Activate "Control Weighing" function with last used
parameters.
Û WMCFVAV^1 V^100 VgV^3 VgV^5 V% The last used parameters are activated, see example
above.
Ü WMCFV^1 V300.00V^30 VmgV0.1V% When check weighing, the target weight of 300 g may
be exceeded by a minimum of 299.70 g and by a
maximum of 300.30 g (= 300.00 g+ 0.1%).
Û WMCFVA Command understood and executed successfully.
Ü WMCFV^2 V^150 VgV^165 VgV^167 Vg When dosing, the first limit is 150 g, the second 165g
and the third 167 g.
Û WMCFVA Command understood and executed successfully.
See also
2 DOT – Configuration for digital outputs } Page  51
2 DOTC – Configurable digital outputs – Weight monitor } Page  52
244 Commands and Responses​​ MT-SICS Interface Command

Z – Zero......................................................................................................................
Description
Use Z to set a new zero; all weight values (including the tare weight) will be measured relative to this zero.
After zeroing has taken place, the following values apply: tare weight = 0; net weight (= gross weight) = 0.
Syntax
Command
Z Zero the balance.
Responses
ZVA Zero setting successfully performed. Gross, net and
tare = 0.
ZVI Command understood but currently not executable
(balance is currently executing another command,
e.g. taring, or timeout as stability was not reached).
ZV+ Upper limit of zero setting range exceeded.
ZV- Lower limit of zero setting range exceeded.
Comments
The zero point determined during switching on is not influenced by this command, the measurement ranges
remain unchanged.
The duration of the timeout depends on the balance type.
The tare memory is cleared after zero setting.
The draft shield closes with this command, when the "Door function" is set on "Automatic".
It opens after sending a stable weight.
Example
Ü Z Zero.
Û ZVA Zero setting performed.
MT-SICS Interface Command Commands and Responses​​ 245

ZC – Zero or zero immediately after timeout.....................................................................
Description
Use Z to set a new zero; all weight values (including the tare weight) will be measured relative to this zero.
After zeroing has taken place, the following values apply: tare weight = 0; net weight (= gross weight) = 0. The
command ZC with configurable timeout is used for processes with defined time cycles.
Syntax
Command
ZCV<Time> Set next stable weight value as new zero weight
(reference) point or set dynamic weight value
immediately after timeout as new zero weight point.
Timeout is specified in ms.
Responses
ZCVS Zero setting successfully performed. Gross, net and
tare = 0.
ZCVD Zero setting successfully performed with dynamic
weight value after timeout i.e. the stability criterion for
zero setting was not met. Gross, net and tare = 0.
ZCVI Command understood but currently not executable
(balance is currently executing another command,
e.g. taring, or timeout as stability was not reached).
ZCVL Command understood but not executable (incorrect
parameter).
ZCV+ Upper limit of zero setting range exceeded.
ZCV- Lower limit of zero setting range exceeded.
Parameter
Name Type Values Meaning
<Time> Integer 1 ... 65535 Timeout in milliseconds [ms]
Comments
The tare memory is cleared after zero setting.
will be rounded to the next possible interval (interval steps 8 ms).
Zero point set under unstable conditions may not be considered as a true reference for further
measurements.
The tare memory is cleared after zero setting.
The criterion that must be fulfilled to reach stability for zeroing can be set using the [USTB } Page 240 ]
command.
Example
Ü ZCV^500 Set new zero point within maximum 500 ms.
Û ZCVS Zero setting performed, stability criterion for zero
setting met.
or
Û ZCVD Zero setting performed upon timeout of 500 ms under
unstable conditions (stability criterion for zero setting
not fulfilled).
246 Commands and Responses​​ MT-SICS Interface Command

ZI – Zero immediately...................................................................................................
Description
Use ZI to set a new zero immediately, regardless of balance stability. All weight values (including the tare
weight) will be measured relative to this zero. After zeroing has taken place, the following values apply: tare
weight = 0; net weight (= gross weight) = 0.
Syntax
Command
ZI Zero the balance immediately regardless the stability
of balance.
Responses
ZIVD Re-zero performed under non-stable (dynamic)
conditions.
ZIVS Re-zero performed under stable conditions.
ZIVI Command understood but currently not executable
(balance is currently executing another command,
e.g. taring).
ZIV+ Upper limit of zero setting range exceeded.
ZIV- Lower limit of zero setting range exceeded.
Comments
This command is not supported by approved balances.
The zero point determined during switching on is not influenced by this command, the measurement ranges
remain unchanged.
The tare memory is cleared after zero setting.
Example
V ZI Zero immediately.
V ZIVD Re-zero performed under non-stable (dynamic)
conditions.
MT-SICS Interface Command What if...?​​ 247

4 What if...?
Tips from actual practice if the communication between the system (computer, PLC) and the balance is not
working.
Establishing the communication
Switch the weigh module/balance off / on.
The balance must now send identification string [I4 } Page  89 ], e.g. I4VAV"0123456789".
If this is not the case, check the following points.
Connection
For RS232 communication, at least three connecting lines are needed:
Data line from the weigh module/balance (TxD signal).
Data line to the weigh module/balance (RxD signal).
Signal ground line (GNDINT).
For RS422 communication, at least four connecting lines are needed:
Data line from the weigh module/balance (TX+ signal).
Data line from the weigh module/balance (TX- signal).
Data line to the weigh module/balance (RX+ signal).
Data line to the weigh module/balance (RX- signal).
Make sure that all these connections are in order. Check the connector pin assignment of the connection
cables.
Interface parameters
For the transmission to function properly, the settings of the following parameters must match at both the
computer and the balance:
Baud rate (send/receive rate)
Number of data bits
Parity bit
Check the settings at both devices.
Handshake
For control of the transmission, in part separate connection lines are used (CTS/DTR). If these lines are missing
or wrongly connected, the computer or balance can not send or receive data.
Check whether the weigh module/balance is prevented from transmitting by handshake lines (CTS or DTR). Set
the parameter "protocol" for the weigh module/balance and the peripheral device to "No Handshake" or "none".
The handshake lines now have no influence on the communication.
Characters are not displayed correctly
In order to display ASCII characters >127 dec., ensure that 8-bit communication is taking place.
248 Appendix​​ MT-SICS Interface Command

5 Appendix
5.1 Framed protocol..........................................................................................................
Introduction
With the command PROT a framed bus protocol (PROTV 2 ) that is derived from the DIN Measurement Bus
(DIN 66348) can be selected. This protocol may be used to make data transmission more reliable.
Nevertheless, full safety cannot be guaranteed since not all transmission errors may be detected or some errors
may compensate each other.
In this protocol, the data is enclosed by a set of control characters and a checksum is calculated. This
checksum enables the receiver to check whether the data was transmitted correctly or not.
In the following description, control characters are enclosed by angle brackets.
Used Control Characters
Character Hex Function
<STX> 02 FrameStart
This control character marks the begin of a frame
<ETX> 03 FrameEnd
This control character marks the end of a frame
<ACK> 06 Acknowledge
This control character will be sent by the receiver after a frame is transmitted
correctly
<NAK> 15 NegativeAcknowledgement
This control character will be sent by the receiver after a frame is transmitted incor-
rectly
<EOT> 04 EndOfTransmission
This control character terminates the transmission immediately
Frame Structure
A frame encloses the data that has to be transmitted. The control characters <STX> and <ETX> mark the begin
and the end of the frame. The Block Control Code (BCC) follows this frame.
<STX> Control character FrameStart
ADDR Weighing Module address
...
...
... Data
<ETX> Control character FrameEnd
BCC Block Control Code
BCC
Transmission errors may be detected by means of the Block Control Code. The BCC equals XOR (exclusive or)
over the data bytes and <ETX> (including ADDR, but excluding <STX>). Single 1-bit errors may be detected
whereas multiple errors may compensate each other and remain undetected.
Flow of Communication
After the transmission of a frame, the receiver has to reply with <ACK> or <NAK> within 200 ms. If the BCC and
the data don’t mach, a transmission error is detected and <NAK> has to be returned. This requests the sender
to transmit the frame again. The number of transmission trials is limited to three. After three erroneous trials, the
transmission is aborted with <EOT>. <EOT> may also be used to abort the transmission at any time unless the
BCC is expected (the BCC can take an arbitrary value including 03 hex which represents <EOT>).
MT-SICS Interface Command Appendix​​ 249

Example
The command SI is sent to the weigh module:
Character Hex Comment
<STX> 02 FrameStart
(^737) Weighing Module address
‚S’ 53 Data
‚I’ 49
03 FrameEnd
BCC 0E Block Control Code
The weigh module checks the frame by means of the BCC. If the Data was transmitted correctly, the weigh
module returns a . Subsequently, the weigh module sends the following reply:
Character Hex Comment
02 FrameStart
(^737) Weighing Module address
‚S’ 53 Data
‚V’ 20
‚D’ 44
‚V’ 20
‚V’ 20
‚V’ 20
‚V’ 20
‚V’ 20
‚V’ 20
‚V’ 20
‚3’ 33
‚V’ 2E
‚4’ 34
‚8’ 38
‚V’ 20
‚g’ 67
03 FrameEnd
BCC 75 Block Control Code
The PLC then checks the data with the BCC and acknowledges the successful transmission by sending .
Exception: SIR
A problem occurs if a SIR command is issued. It won’t be practicable to await an acknowledgement for
200 ms after each weighing result. Therefore, the weigh module doesn’t expect a or while
replying on a SIR command.

250 Appendix​​ MT-SICS Interface Command

MT-SICS Interface Command Index​​ 251

Index
A

Adjustment

A30  20
C0  22
C1  24
C2  26
C3  28
C4  29
C5  31
C6  32
C7  35
C8  38
C9  41
I50  108
I54  113
I71  124
M17  147
M18  149
M19  150
M27  157
M32  161
M33  162
M47  170
M48  172
Auto zero

I52  110
B

Balance ID

I10  91
Balance information

I0  85
I1  86
I10  91
I11  92
I14  93 , 117
I2  87
I26  98
I3  88
I4  89
I5  90
I51  109
I56  115
I65  120
I66  121
I67 122
LST 143
M31 160
Balance settings
C  21
I15  95
I27  99
I29  100
M21  152
M38  165
M43  167
M44  168
M67  177
M89  187
RDB  201
USTB  240
C
Cancel
@  15
DW  54
Change display resolution
M110  190
D
Data interface
COM  44
M45  169
M68  178
MONH  194
NID  195
NID2  196
PROT  197
UPD  239
Network configuration
M71  183
Diagnostics
I32  101
I76  128
I77  129
I78  131
I79  132
I80  133
I81  135
I82  136
Digital input
252 Index​​ MT-SICS Interface Command

DIN 48
DIS 49
Digital output
DOS  50
DOT  51
DOTC  52
WMCF  242
Display
D  46
DW  54
E01  55
E02  56
E03  58
K  140
M23  156
M39  166
PWR  199
Disply unit
I44  103
Network configuration
M72  185
Driver mode
M103  188
F
Factor weighing
M22  155
Factory setting
FSET  84
I43  102
I44  103
I45  104
I46  106
Filling
F01  59
F02  60
F03  61
F04  62
F05  63
F06  65
F07  67
F08  69
F09  70
F10  72
F11  74
F12  75
F13  77
F14 79
F15 80
F16 82
G
GEO code
I74  126
I75  127
H
Network configuration
M70  181
Host unit
I43  102
I
ID balance
I10  91
Initial zero range
I48  107
L

List of commands
I0  85
M

MinWeigh Application
M34  163
SIUM  213
SUM  224
Module test with built-in weights (scale placement sensi-
tivity test)
TST5  237
Monitoring
I32  101
N

Network configuration
M70  181
Network configuration
I53  111
M69  179
M7109  189
P

Percent weighing
SU  202 , 223
Percent weighing application
MT-SICS Interface Command Index​​ 253

A01 16
Piece counting

SU  202 , 223
Piece counting application

PW  198
Point of calibration

I74  126
Point of use

I75  127
R

Restart

R01  200
RS422

M103  188
RS485

M103  188
S

Service

I16  96
I62  119
I69  123
Software

I83  138
Status

DAT  47
I0  85
PWR  199
TIM  231
Switch off

I73  125
T

Taring

T  225
TA  226
TAC  227
TC  228
TI  230
Temperature

M28  158
Terminal

see Display  46
Test function

M20  151
M47  170
M48  172
M66 175
TST0 232
TST1 233
TST2 235
TST3 236
Timeout
I62  119
Tolerances
I21  97
U

User settings
LST  143
MOD  192
W
Weighing
S  202
SC  203
SI  204
SIR  207
SIRU  208
SIS  209
SIU  212
SIUM  213
SNR  214
SNRU  216
SR  218
SRU  220
ST  222
SU  223
SUM  224
Weighing application
A02  17
A03  18
Weighing filter setup
FCUT  83
I45  104
M01  144
M02  145
M03  146
M29  159
Weighing mode
I46  106
Weighing to a nominal value
A10  19
Weight value
254 Index​​ MT-SICS Interface Command

SIC1 205
SIC2 206
Z
Zeroing
M35  164
Z  244
ZC  245
ZI  246
Mettler-Toledo GmbH
Im Langacher 44
8606 Greifensee, Switzerland
http://www.mt.com/contact
Subject to technical changes.
© Mettler-Toledo GmbH  12/2018
11781363L en
For more information
http://www.mt.com/apw

11781363
11781363L 12/21/2018 11:55 AM - Schema ST4 PDF engine - Layout by Victor Mahler
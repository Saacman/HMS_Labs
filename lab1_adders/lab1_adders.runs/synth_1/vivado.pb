
|
Command: %s
53*	vivadotcl2K
7synth_design -top ripple_adder_tb -part xc7z020clg484-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
190092default:defaultZ8-7075h px? 
?
%s*synth2?
?Starting Synthesize : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 2492.254 ; gain = 0.000 ; free physical = 3725 ; free virtual = 12756
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2#
ripple_adder_tb2default:default2`
J/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/n_adder_tb.vhd2default:default2
122default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2
n_adder2default:default2]
G/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/n_adder.vhd2default:default2
422default:default8@Z8-638h px? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

full_adder2default:default2^
J/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/full_adder.vhd2default:default2
342default:default2
FA2default:default2

full_adder2default:default2]
G/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/n_adder.vhd2default:default2
582default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2

full_adder2default:default2`
J/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/full_adder.vhd2default:default2
392default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

half_adder2default:default2^
J/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/half_adder.vhd2default:default2
342default:default2
U12default:default2

half_adder2default:default2`
J/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/full_adder.vhd2default:default2
492default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2

half_adder2default:default2`
J/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/half_adder.vhd2default:default2
412default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
and22default:default2X
D/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/and2.vhd2default:default2
342default:default2
U12default:default2
and22default:default2`
J/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/half_adder.vhd2default:default2
552default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2'
xil_defaultlib_and22default:default2Z
D/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/and2.vhd2default:default2
402default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2'
xil_defaultlib_and22default:default2
12default:default2
12default:default2Z
D/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/and2.vhd2default:default2
402default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
xor22default:default2X
D/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/xor2.vhd2default:default2
342default:default2
U22default:default2
xor22default:default2`
J/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/half_adder.vhd2default:default2
562default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2'
xil_defaultlib_xor22default:default2Z
D/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/xor2.vhd2default:default2
402default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2'
xil_defaultlib_xor22default:default2
22default:default2
12default:default2Z
D/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/xor2.vhd2default:default2
402default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2

half_adder2default:default2
32default:default2
12default:default2`
J/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/half_adder.vhd2default:default2
412default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

half_adder2default:default2^
J/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/half_adder.vhd2default:default2
342default:default2
U22default:default2

half_adder2default:default2`
J/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/full_adder.vhd2default:default2
502default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2

full_adder2default:default2
42default:default2
12default:default2`
J/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/full_adder.vhd2default:default2
392default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

full_adder2default:default2^
J/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/full_adder.vhd2default:default2
342default:default2
FA2default:default2

full_adder2default:default2]
G/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/n_adder.vhd2default:default2
612default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

full_adder2default:default2^
J/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/full_adder.vhd2default:default2
342default:default2
FA2default:default2

full_adder2default:default2]
G/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/n_adder.vhd2default:default2
612default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

full_adder2default:default2^
J/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/full_adder.vhd2default:default2
342default:default2
FA2default:default2

full_adder2default:default2]
G/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/n_adder.vhd2default:default2
612default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

full_adder2default:default2^
J/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/full_adder.vhd2default:default2
342default:default2
FA2default:default2

full_adder2default:default2]
G/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/n_adder.vhd2default:default2
612default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

full_adder2default:default2^
J/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/full_adder.vhd2default:default2
342default:default2
FA2default:default2

full_adder2default:default2]
G/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/n_adder.vhd2default:default2
612default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

full_adder2default:default2^
J/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/full_adder.vhd2default:default2
342default:default2
FA2default:default2

full_adder2default:default2]
G/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/n_adder.vhd2default:default2
612default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

full_adder2default:default2^
J/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/full_adder.vhd2default:default2
342default:default2
FA2default:default2

full_adder2default:default2]
G/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/n_adder.vhd2default:default2
552default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
n_adder2default:default2
52default:default2
12default:default2]
G/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/n_adder.vhd2default:default2
422default:default8@Z8-256h px? 
?
&ignoring unsynthesizable construct: %s312*oasys23
wait statement with no conditon2default:default2`
J/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/n_adder_tb.vhd2default:default2
382default:default8@Z8-312h px? 
?
&ignoring unsynthesizable construct: %s312*oasys23
wait statement with no conditon2default:default2`
J/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/n_adder_tb.vhd2default:default2
422default:default8@Z8-312h px? 
?
&ignoring unsynthesizable construct: %s312*oasys23
wait statement with no conditon2default:default2`
J/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/n_adder_tb.vhd2default:default2
462default:default8@Z8-312h px? 
?
&ignoring unsynthesizable construct: %s312*oasys23
wait statement with no conditon2default:default2`
J/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/n_adder_tb.vhd2default:default2
502default:default8@Z8-312h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2#
ripple_adder_tb2default:default2
62default:default2
12default:default2`
J/home/saacman/Projects/vhdl_hms/vhdl_hms.srcs/sources_1/new/n_adder_tb.vhd2default:default2
122default:default8@Z8-256h px? 
?
%s*synth2?
?Finished Synthesize : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2492.254 ; gain = 0.000 ; free physical = 3088 ; free virtual = 12119
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Constraint Validation : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2492.254 ; gain = 0.000 ; free physical = 2862 ; free virtual = 11893
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7z020clg484-1
2default:defaulth p
x
? 
V
Loading part %s157*device2#
xc7z020clg484-12default:defaultZ21-403h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2500.184 ; gain = 7.930 ; free physical = 2853 ; free virtual = 11884
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2500.184 ; gain = 7.930 ; free physical = 2813 ; free virtual = 11846
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 16    
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2500.184 ; gain = 7.930 ; free physical = 3447 ; free virtual = 12484
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Timing Optimization : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2500.184 ; gain = 7.930 ; free physical = 3446 ; free virtual = 12483
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Technology Mapping : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2500.184 ; gain = 7.930 ; free physical = 3440 ; free virtual = 12478
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished IO Insertion : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2500.184 ; gain = 7.930 ; free physical = 3446 ; free virtual = 12484
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2500.184 ; gain = 7.930 ; free physical = 3446 ; free virtual = 12484
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2500.184 ; gain = 7.930 ; free physical = 3446 ; free virtual = 12484
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2500.184 ; gain = 7.930 ; free physical = 3446 ; free virtual = 12484
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2500.184 ; gain = 7.930 ; free physical = 3446 ; free virtual = 12484
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2500.184 ; gain = 7.930 ; free physical = 3446 ; free virtual = 12484
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
=
%s*synth2%
+-+-----+------+
2default:defaulth px? 
=
%s*synth2%
| |Cell |Count |
2default:defaulth px? 
=
%s*synth2%
+-+-----+------+
2default:defaulth px? 
=
%s*synth2%
+-+-----+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
N
%s
*synth26
"|      |Instance |Module |Cells |
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
N
%s
*synth26
"|1     |top      |       |     0|
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2500.184 ; gain = 7.930 ; free physical = 3446 ; free virtual = 12484
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 4 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Runtime : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2500.184 ; gain = 7.930 ; free physical = 3446 ; free virtual = 12484
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2500.191 ; gain = 7.930 ; free physical = 3446 ; free virtual = 12484
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2500.1912default:default2
0.0002default:default2
34432default:default2
124812default:defaultZ17-722h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2500.1912default:default2
0.0002default:default2
34292default:default2
124712default:defaultZ17-722h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
868ced0d2default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
342default:default2
42default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:132default:default2
00:00:102default:default2
2500.1912default:default2
8.0122default:default2
35662default:default2
126072default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2]
I/home/saacman/Projects/vhdl_hms/vhdl_hms.runs/synth_1/ripple_adder_tb.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
tExecuting : report_utilization -file ripple_adder_tb_utilization_synth.rpt -pb ripple_adder_tb_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Nov 13 19:29:46 20222default:defaultZ17-206h px? 


End Record
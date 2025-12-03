v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {code_shown.sym} -110 -30 0 0 {name=s1 only_toplevel="false" value=".include /home/harry/Work/ECE298A/diff_amp/diff_amp.spice
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

Vpower vdd gnd 1.8
VinA vin1 gnd pulse(1.02, 0.98, 7.5ns, 0.1ns, 0.1ns, 7.5ns, 15.2ns) AC 0.01
VinB vin2 gnd pulse(0.98, 1.02, 7.5ns, 0.1ns, 0.1ns, 7.5ns, 15.2ns) 
VinC vtail gnd 1.2
*VBase vBase gnd 0.3
*Vinv vinv gnd 0.9

.control
op
print I(Vpower)
tran 0.01ns, 50ns
plot v(vin1) v(vin2) v(vinv) v(vinv2) v(vout)
ac dec 50 1 1e9
plot db(v(vinv)/v(vin1))
dc VinA 0.9 1.0 0.001
plot V(vout) V(vin1)
.endc"}

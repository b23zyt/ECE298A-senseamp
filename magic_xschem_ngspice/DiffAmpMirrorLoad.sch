v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -80 100 -80 150 {
lab=vd5}
N -80 150 10 150 {
lab=vd5}
N 150 100 150 150 {
lab=vd5}
N 10 150 150 150 {
lab=vd5}
N 30 150 30 180 {
lab=vd5}
N -90 210 -10 210 {
lab=#net1}
N -90 270 -90 300 {
lab=GND}
N -90 300 30 300 {
lab=GND}
N 30 240 30 300 {
lab=GND}
N -300 70 -120 70 {
lab=vin1}
N -200 120 90 120 {
lab=#net2}
N 90 70 90 120 {
lab=#net2}
N -300 130 -300 300 {
lab=GND}
N -200 180 -200 300 {
lab=GND}
N -300 300 -200 300 {
lab=GND}
N -200 300 -90 300 {
lab=GND}
N -150 -100 -120 -100 {
lab=vg34}
N -150 -100 -150 -70 {
lab=vg34}
N -150 -70 -80 -70 {
lab=vg34}
N -80 -70 -80 40 {
lab=vg34}
N 150 -70 150 40 {
lab=vout}
N 110 -100 110 -70 {
lab=vg34}
N -80 -70 110 -70 {
lab=vg34}
N -240 -60 -240 300 {
lab=GND}
N -240 -150 -240 -120 {
lab=#net3}
N -240 -150 150 -150 {
lab=#net3}
N 150 -150 150 -130 {
lab=#net3}
N -80 -150 -80 -130 {
lab=#net3}
N 150 0 365 0 {
lab=vout}
N 365 0 365 110 {
lab=vout}
N 365 170 365 300 {
lab=GND}
N 30 300 365 300 {
lab=GND}
N 90 70 110 70 {
lab=#net2}
N -80 70 -30 70 {
lab=GND}
N 150 70 200 70 {
lab=GND}
N 30 210 70 210 {
lab=GND}
N 70 210 70 300 {
lab=GND}
N -30 70 -30 300 {lab=GND}
N 200 70 200 300 {lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -100 70 0 0 {name=M1
W=1
L=0.3
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 130 70 0 0 {name=M2
W=1
L=0.3
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 10 210 0 0 {name=M5
W=1.5
L=0.3
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {vsource.sym} -90 240 0 0 {name=V1 value="0.6" savecurrent=false}
C {gnd.sym} 30 300 0 0 {name=l1 lab=GND}
C {vsource.sym} -300 100 0 0 {name=V2 value="0.9 AC 0.01" savecurrent=false}
C {vsource.sym} -200 150 0 0 {name=V3 value=0.9 savecurrent=false}
C {vsource.sym} -240 -90 0 0 {name=V4 value=1.8 savecurrent=false}
C {capa.sym} 365 140 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/pfet3_01v8.sym} -100 -100 0 0 {name=M3
W=3
L=0.3
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 130 -100 0 0 {name=M4
W=3
L=0.3
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} -190 70 0 0 {name=p2 sig_type=std_logic lab=vin1}
C {lab_pin.sym} 230 0 0 0 {name=p3 sig_type=std_logic lab=vout}
C {code_shown.sym} -560 -50 0 0 {name=s1 only_toplevel="false" value=".control
set filetype=ascii
save all
ac dec 20 0.01 1G
plot 20*log10(v(vout)/v(vin1))
.endc"}
C {code_shown.sym} -420 -240 0 0 {name=s2 only_toplevel=false value=".lib /home/harry/.ciel/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {lab_pin.sym} 30 -70 0 0 {name=p1 sig_type=std_logic lab=vg34}
C {lab_pin.sym} 30 150 0 0 {name=p4 sig_type=std_logic lab=vd5}

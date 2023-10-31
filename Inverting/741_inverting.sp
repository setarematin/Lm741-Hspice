#741


Vcc 1 0 dc 15
Vee 0 2 dc 15
Vin Vsig 0 dc 0 ac 1 sin(0 1 1khz)

Q1 3 in_neg 4 QNPN
Q2 3 0 6 QNPN
Q3 8 7 4 QPNP
Q4 9 7 6 QPNP
Q5 8 10 11 QNPN
Q6 9 10 12 QNPN
Q7 1 8 10 QNPN
Q8 3 3 1 QPNP
Q9 7 3 1 QPNP
Q10 7 5 13 QNPN
Q11 5 5 2 QNPN
Q12 14 14 1 QPNP
Q13A 15 14 1 QPNP M=0.25
Q13B 16 14 1 QPNP M=0.75
Q14 1 15 17 QNPN14
Q15 15 17 out QNPN
Q16 1 9 18 QNPN
Q17 16 18 23 QNPN
Q18 15 19 20 QNPN
Q19 15 15 19 QNPN
Q20 2 20 21 QPNP20
Q21 22 21 out QPNP
Q22 9 22 2 QNPN
Q23 2 16 20 QPNP
Q24 22 22 2 QNPN

.model QNPN npn (Is=1e-14 BF=200)
.model QPNP pnp (Is=1e-14 BF=50)
.model QNPN14 npn (Is=3e-14 BF=200)
.model QPNP20 pnp (Is=3e-14 BF=50)

r1 11 2 1k
r2 12 2 1k
r3 10 2 50k
r4 13 2 5k
r5 14 5 39k
r6 17 out 27
r7 out 21 27
r8 23 2 100
r9 18 2 50k
r10 19 20 40k
r11 22 2 50k

rin Vsig in_neg 1k
rf in_neg out 2k

c1 9 16 30p

.op
.ac dec 5 10 10meg
.tran 10us 10ms
.option post
.END

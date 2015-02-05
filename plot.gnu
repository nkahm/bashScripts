set xrange [1:10.0]
set log x
set log y
FCC1(n) = sprintf("FCC.r.%d.dat", n)
FCC2(n) = sprintf("FCC.nr.%d.dat", n)
BCC1(n) = sprintf("BCC.r.%d.dat", n)
BCC2(n) = sprintf("BCC.nr.%d.dat", n)
cubic(n) = sprintf("Cubic.%d.dat", n)
hex(n) = sprintf("Hex.r.%d.dat", n)
rhomb(n) = sprintf("BCC.r.%d.dat", n)
CC1(n) = sprintf("CC.r.%d.dat", n)
CC2(n) = sprintf("CC.nr.%d.dat", n)
nema(n) = sprintf("Nema.r.%d.dat", n)
smec(n) = sprintf("Smect.%d.dat", n)
disc(n) = sprintf("Disc.%d.dat", n)
Glass(n) = sprintf("Glass.%d.dat", n)

plot \
for [i=1:51] FCC1(i) using 1:2 w l lt 1, \
for [i=1:1] FCC2(i) using 1:2 w l lt 1, \
for [i=1:7] BCC1(i) using 1:2 w l lt 2, \
for [i=1:5] BCC2(i) using 1:2 w l lt 2, \
for [i=1:5] cubic(i) using 1:2 w l lt 3, \
for [i=1:3] hex(i) using 1:2 w l lt 4, \
for [i=1:1] rhomb(i) using 1:2 w l lt 5, \
for [i=1:8] CC1(i) using 1:2 w l lt 6, \
for [i=1:10] CC2(i) using 1:2 w l lt 6, \
for [i=1:4] nema(i) using 1:2 w l lt 7, \
for [i=1:5] smec(i) using 1:2 w l lt 7, \
for [i=1:12] disc(i) using 1:2 w l lt 7, \
for [i=1:44] Glass(i) using 1:2 w l lt 7
pause -20

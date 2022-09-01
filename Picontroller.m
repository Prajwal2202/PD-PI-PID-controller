%PI controller
ki=
kp=
n=
d1=conv([],[])
d=conv(d1,[])
g=tf(n,d)
gc=tf([ki kp],1)
g0=series(g,gc)
figure(1)
bode(g0)
margin(g0)
figure(2)
steo(g0)
g1=feedback(g0,-1)
figure(3)
step(g1)
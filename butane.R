V=3.0
n=1.0
Vbar=V/n
T=370.
R=0.083145
a=16.44
b=0.07245
P=R*T/(Vbar-b) -a/(Vbar*(Vbar+b)+b*(Vbar-b))
cat(P,"\n")
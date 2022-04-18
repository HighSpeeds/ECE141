syms s

K=3.034;
G=K/(s*(s+2));
H=G/(1+G);

SystemUnitResponse=H*1/s;

Y=ilaplace(SystemUnitResponse);

t=0:0.01:10;

plot(t,y)
[M_p,t_p]=max(y);
t_p=t(t_p);
M_p=double(M_p-1);
yline(M_p+1, "-", sprintf("M_p=%d%%",round(M_p,3)*100));
xline(t_p, "-",sprintf("t_p=%gs",round(t_p,1)));
xlabel('t (in seconds)')
ylabel('y(t)')
title('Unit Step System Response with K=3.034')

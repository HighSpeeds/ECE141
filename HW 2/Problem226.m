J=600000;
B=20000;
syms K
syms s
t=0:400;
H=K/(J*s^2+B*s+K);


figure;
axs1=subplot(2,2,1);
H200=subs(H,K,200)
y=subs(ilaplace(H200*1/s),t);
plot(t,y)
[M_p,t_p]=max(y);
t_r=t(min(find(y>0.9)))-t(max(find(y<0.1)));
M_p=double(M_p-1);
yline(M_p+1, "-", sprintf("M_p=%d%%",round(M_p,3)*100));
text( 0.5, 0.1, sprintf("t_r=%gs",round(t_r,1)));
xlabel('t (in seconds)')
ylabel('y(t)')
title("Unit Step Response with K=200")

axs2=subplot(2,2,2)
H400=subs(H,K,400);
y=subs(ilaplace(H400*1/s),t);
plot(t,y)
[M_p,t_p]=max(y);
t_r=t(min(find(y>0.9)))-t(max(find(y<0.1)));
M_p=double(M_p-1);
yline(M_p+1, "-", sprintf("M_p=%g%%",round(M_p,3)*100));
text( 0.5, 0.1, sprintf("t_r=%gs",round(t_r,1)));
xlabel('t (in seconds)')
ylabel('y(t)')
title("Unit Step Response with K=400")

axs3=subplot(2,2,3)
H1000=subs(H,K,1000);
y=subs(ilaplace(H1000*1/s),t);
plot(t,y)
[M_p,t_p]=max(y);
t_r=t(min(find(y>0.9)))-t(max(find(y<0.1)));
M_p=double(M_p-1);
yline(M_p+1, "-", sprintf("M_p=%g%%",round(M_p,3)*100));
text( 0.5, 0.1, sprintf("t_r=%gs",round(t_r,1)));
xlabel('t (in seconds)')
ylabel('y(t)')
title("Unit Step Response with K=1000")

axs4=subplot(2,2,4)
H2000=subs(H,K,2000);
y=subs(ilaplace(H2000*1/s),t);
plot(t,y)
[M_p,t_p]=max(y);
t_r=t(min(find(y>0.9)))-t(max(find(y<0.1)));
M_p=double(M_p-1);
yline(M_p+1, "-", sprintf("M_p=%g%%",round(M_p,3)*100));
text( 0.5, 0.1, sprintf("t_r=%gs",round(t_r,1)));
xlabel('t (in seconds)')
ylabel('y(t)')
title("Unit Step Response with K=2000")

linkaxes([axs1 axs2 axs3 axs4],'xy')
axs1.YLim =[0 1.75];

v_target=15.6464;
y_target=0;
l_r=1.7;

k_p_v=1;
k_i_v=k_p_v^2/4;
k_d_v=0;
k_p_y=4/l_r;
t_final=20;
max_step_size=0.0001;

y_initial=0.1;
psi_initial=0.1;
v_initial=0;

a=sim("Problem5.slx");
t=a.tout;
y=a.yout.getElement("y").Values.Data;
v=a.yout.getElement("v").Values.Data;


plot(t,y)
hold on;

v_target=10;
a=sim("Problem5.slx");
t=a.tout;
y=a.yout.getElement("y").Values.Data;
v=a.yout.getElement("v").Values.Data;
 
plot(t,y)


v_target=20;
a=sim("Problem5.slx");
t=a.tout;
y=a.yout.getElement("y").Values.Data;
v=a.yout.getElement("v").Values.Data;

plot(t,y)

legend('Vtarget=15.6464m/s','Vtarget=10m/s', 'Vtarget=20m/s')
title("y response")
ylabel("y")
xlabel("t")
hold off;



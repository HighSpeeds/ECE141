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

subplot(2,2,1); 
plot(t,y)
title(["y response for psi initial=",num2str(psi_initial)])

subplot(2,2,2); 
plot(t,v)
title(["v response for psi initial=",num2str(psi_initial)])

psi_initial=pi/6;
a=sim("Problem5.slx");
t=a.tout;
y=a.yout.getElement("y").Values.Data;
v=a.yout.getElement("v").Values.Data;

subplot(2,2,3); 
plot(t,y)
title(["y response for psi initial=",num2str(psi_initial)])

subplot(2,2,4); 
plot(t,v)
title(["v response for psi initial=",num2str(psi_initial)])
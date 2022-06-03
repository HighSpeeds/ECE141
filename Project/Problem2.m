v=15.6464;
l_r=1.7;
k_p=2;

sys = tf([k_p*v*l_r k_p*v^2],[l_r  k_p*v*l_r k_p*v^2]);
h = pzplot(sys);
grid on
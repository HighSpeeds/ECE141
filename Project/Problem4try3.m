k_p=1;
k_i=k_p^2/4;

sys = tf([k_p k_i],[1 k_p k_i]);
h = pzplot(sys);
grid on
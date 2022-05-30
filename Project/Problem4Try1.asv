syms EPS;
k_d=1;
k_p=1;
k_i=1;
ra=routh([1+k_d k_p k_i],EPS)

sys = tf([k_d k_p k_i], [1+k_d k_p k_i]);
h = pzplot(sys);
grid on
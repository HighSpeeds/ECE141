l_r=1.7;
v=15.6464;
k_p=4/l_r;
psi_sweep=-pi/6:0.02:pi/6;
y_sweep=-2:0.05:-1;
t_final=40;
valid = zeros(length(psi_sweep),length(y_sweep));

for i=1:length(psi_sweep)
    psi_initial=psi_sweep(i);
    psi_initial
    for j=1:length(y_sweep)
        y_initial=10^(y_sweep(j));
        a=sim("Problem3.slx");

        data=a.yout.getElement("y");
        if max(abs(data.Values.Data))<=y_initial && min(data.Values.Data)>=0
            valid(i,j)=1;
        end
    end

end

imagesc(y_sweep,psi_sweep,valid)
colorbar
ylabel("\psi initial values")
xlabel("log(abs(y)) initial values")
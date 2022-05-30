psi_sweep=0:0.25:2*pi;
y_sweep=-3:0.1:-1;
t_final=40;
valid = zeros(length(psi_sweep),length(y_sweep));
for i=1:length(psi_sweep)
    psi_initial=psi_sweep(i);
    i
    psi_initial
    for j=1:length(y_sweep)
        y_initial=10^(y_sweep(j));
        a=sim("Problem3.slx");

        data=a.yout.getElement("y");
        
        if max(abs(data.Values.Data))<0.6
            valid(i,j)=1;
        end
    end

end

imagesc(y_sweep,psi_sweep,valid)
colorbar
ylabel("\psi initial values")
xlabel("log(abs(y)) initial values")
v_target=15.6464;
y_target=0;
l_r=1.7;

v_sweep=[0];
log_y_sweep=-3:0.1:-1;
psi_sweep=0:0.25:2*pi;


for i=1:length(v_sweep)
    v_initial=v_sweep(i)
    f = figure;
    valid = zeros(length(psi_sweep),length(log_y_sweep));
    for j=1:length(psi_sweep)
        psi_initial=psi_sweep(j);
        for k=1:length(log_y_sweep)
            y_initial=10^(log_y_sweep(k));

            a=sim("Problem3.slx");

            data=a.yout.getElement("y");
        
            if max(abs(data.Values.Data))<0.6
                valid(j,k)=1;
            end
        end
    
    end
    imagesc(log_y_sweep,psi_sweep,valid);
    colorbar
    ylabel("\psi initial values")
    xlabel("log(abs(y)) initial values")
    title(['v= ',num2str(v_initial),' m/s'])
end


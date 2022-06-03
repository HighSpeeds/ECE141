v_target=15.6464;
y_target=0;
l_r=1.7;

v_sweep=[0 15.6464 31];

psi_sweep=-pi/6:0.02:pi/6;
log_y_sweep=-2:0.05:-1;

k_p_v=1;
k_i_v=k_p_v^2/4;
k_p_y=4/l_r;
t_final=2;
max_step_size=0.0001;

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

        
            if max(abs(data.Values.Data))<=y_initial && min(data.Values.Data)>=0
                valid(i,j)=1;
            end
        end
    
    end
    imagesc(log_y_sweep,psi_sweep,valid);
    colorbar
    ylabel("\psi initial values")
    xlabel("log(abs(y)) initial values")
    title(['v= ',num2str(v_initial),' m/s'])
end


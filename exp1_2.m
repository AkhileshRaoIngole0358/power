clc;
clear;
time=1;
x{4}=[0 0 0 0];
for i=7:10
    Vg=i;
    sim("exp1_k_2.slx",time);
    ID=squeeze(Id.signals.values);
    VDS=squeeze(Vds.signals.values);
    plot(VDS,ID)
    x{i-6}=['Vgs = ',num2str(Vg),' V'];
    hold on
    axis([0 10 0 700])
end
title('V-I Characteristic');
ylabel('Id');
xlabel('Vds');
legend(x)
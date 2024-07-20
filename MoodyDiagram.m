clc;
clear all;
close all;

Re=600:1:2000;
f=64./Re;
loglog(Re,f,'*');hold on;

Ret=4000:100:100000;
roughness=0.0001:0.01:0.05;
for i=1:length(Ret)
    for j=1:length(roughness)
    fun=@(x)(1/sqrt(x)+2*log10(1/3.7*roughness(j)+2.51/Ret(i)/sqrt(x)));
    f=fzero(fun,0.05);
    loglog(Ret(i),f,'b*');hold on;
    end
end

function [RoC] = Credential()
n=1;
Pr=[0.85,0.10,0.05];
MNR=mnrnd(n,Pr,1);
[row,col]=find(MNR);
x=col
if x==1
    RoC=0.05;
elseif x==2
    RoC=0.70;
elseif x==3
    RoC=0.95;
end
end

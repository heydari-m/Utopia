function [Risk] = Location()
Risk=0;
Mu_x_1=200;
Mu_x_2=1000;
Mu_x_3=1400;
Mu_y_1=200;
Mu_y_2=600;
Mu_y_3=1400;
Sig_x_1=200;
Sig_x_2=500;
Sig_x_3=700;
Sig_y_1=150;
Sig_y_2=400;
Sig_y_3=600;
n=1;
Pr=[0.65,0.2,0.15];
MNR=mnrnd(n,Pr,1);
[row,col]=find(MNR);
G=col;
if G==1
    x=normrnd(Mu_x_1,Sig_x_1);
    y=normrnd(Mu_y_1,Sig_y_1);
elseif G==2
    x=normrnd(Mu_x_2,Sig_x_2);
    y=normrnd(Mu_y_2,Sig_y_2);
elseif G==3
    x=normrnd(Mu_x_3,Sig_x_3);
    y=normrnd(Mu_y_3,Sig_y_3);
end

if x>=0 & x<400 & y>=0 & y<400
    Risk=0.28;
elseif x>=400 & x<800 & y>=0 & y<400
    Risk=0.34;
elseif x>=800 & x<1200 & y>=0 & y<400
    Risk=0.46;
elseif x>=1200 & x<1600 & y>=0 & y<400
    Risk=0.56;
elseif x>=1600 & x<=2000 & y>=0 & y<400
    Risk=0.82;
elseif x>=0 & x<400 & y>=400 & y<800
    Risk=0.40;
elseif x>=400 & x<800 & y>=400 & y<800
    Risk=0.32;
elseif x>=800 & x<1200 & y>=400 & y<800
    Risk=0.38;
elseif x>=1200 & x<1600 & y>=400 & y<800
    Risk=0.56;
elseif x>=1600 & x<=2000 & y>=400 & y<800
    Risk=0.74;
elseif x>=0 & x<400 & y>=800 & y<1200
    Risk=0.52;
elseif x>=400 & x<800 & y>=800 & y<1200
    Risk=0.44;
elseif x>=800 & x<1200 & y>=800 & y<1200
    Risk=0.42;
elseif x>=1200 & x<1600 & y>=800 & y<1200
    Risk=0.54;
elseif x>=1600 & x<=2000 & y>=800 & y<1200
    Risk=0.72;
elseif x>=0 & x<400 & y>=1200 & y<1600
    Risk=0.64;
elseif x>=400 & x<800 & y>=1200 & y<1600
    Risk=0.62;
elseif x>=800 & x<1200 & y>=1200 & y<1600
    Risk=0.60;
elseif x>=1200 & x<1600 & y>=1200 & y<1600
    Risk=0.58;
elseif x>=1600 & x<=1200 & y>=0 & y<1600
    Risk=0.72;
elseif x>=0 & x<400 & y>=1600 & y<=2000
    Risk=0.82;
elseif x>=400 & x<800 & y>=1600 & y<=1200
    Risk=0.80;
elseif x>=800 & x<1200 & y>=1600 & y<=2000
    Risk=0.78;
elseif x>=1200 & x<1600 & y>=1600 & y<2000
    Risk=0.78;
elseif x>=1600 & x<=2000 & y>=1600 & y<=2000
    Risk=0.78;
end
end

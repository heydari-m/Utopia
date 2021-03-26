function [col] = Request()
Sum=0;
Alpha=0.1;
x_min=5;
y=0;
C=0;
P=0;
Pr=zeros(60,1);
User=zeros(60,2);
n=1;

for i=1:60
    User(i,1)=i+x_min;
end
for j=1:60
    y=User(j,1)^(-(1+Alpha));
    Sum=Sum+y;
end
C=1/Sum;
for k=1:60
    P=C*(User(k,1)^(-(1+Alpha)));
    User(k,2)=P;
end
for m=1:60
    Pr(m,1)=User(m,2);
end
MNR=mnrnd(n,Pr,1);
[row,col]=find(MNR);
end

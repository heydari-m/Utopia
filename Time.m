function [ToA]=Time()
n=1;
Pr=[0.005,0.006,0.01,0.04,0.35,0.10,0.40,0.06,0.02,0.007,0.002];
TPR=[1 4 0.800000000000000;5 2 0.750000000000000;7 1 0.600000000000000;8 1 0.500000000000000;9 3 0.100000000000000;12 1 0.200000000000000;13 4 0.100000000000000;17 1 0.400000000000000;18 1 0.500000000000000;19 4 0.700000000000000; 23 3 0.900000000000000];
MNR=mnrnd(n,Pr,1);
[row,col]=find(MNR);
x=col;
offset=TPR(x,2)*60;
rantime=randi([0 offset]);
if rantime>60
h=floor(rantime/60)+TPR(x,1);
m=rem(rantime,60);
else
h=TPR(x,1);
m=rantime;
end
if h>=1 & h<5
ToA=TPR(1,3);
elseif h>=5 & h<7
ToA=TPR(2,3);
elseif h>=7 & h<8
ToA=TPR(3,3);
elseif h>=8 & h<9
ToA=TPR(4,3);
elseif h>=9 & h<12
ToA=TPR(5,3)
elseif h>=12 & h<13
ToA=TPR(6,3)
elseif h>=13 & h<17
ToA=TPR(7,3);
elseif h>=17 & h<18
ToA=TPR(8,3);
elseif h>=18 & h<19
ToA=TPR(9,3);
elseif h>=19 & h<23
ToA=TPR(10,3);
else h>=23
ToA=TPR(11,3);
end
end
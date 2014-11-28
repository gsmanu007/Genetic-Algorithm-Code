%Genetic Algorithm
%Only for minimaization problems
function in= genetic_algorithm(lower_var_bound1, upper_var_bound1, bit_precision,~)
%Doubt- How to take variable input i.e. if only 1 input variable, then
%there is only 1 variable bound and if more than second input is var_bound2
x_l= lower_var_bound1;
x_u= upper_var_bound1;
l= bit_precision;
%Taking only 1 variable objective function and objective is to minimize 
%obj_func= (x^2);

diff= x_u - x_l;
max= 2^l - 1;
decimal= zeros(100,1);
%binary= zeros(100,1);
x=zeros(100,1);
y=zeros(100,1);
fitness=zeros(100,1);
total_fitness=0;
for i= 1:100
    decimal(i)= (2^l - 1)*rand();
    x(i)= x_l + ((diff/max)*decimal(i));
    y(i)=(x(i)^2);
    fitness(i)= 1/(1+y(i));
    total_fitness= total_fitness + fitness(i);
end
% disp(y);
% disp(fitness);
% disp(total_fitness);
binary= dec2bin(decimal);
disp(binary);
%column A
columnA=zeros(100,1);
columnB=zeros(100,1);
columnC=zeros(100,1);
columnD=zeros(100,1);
columnE=zeros(100,1);
columnF=zeros(100,1);
average=0;
for i=1:100
    columnA(i)= fitness(i)/total_fitness;
    average= average+ columnA(i);
end
for i=1:100
    columnB(i)=columnA(i)/average;
end
for i=2:100
    columnC(1)=columnB(1);
    columnC(i)=columnC(i-1)+columnB(i);
end
disp(columnC);
for j=1:100
    columnD(j)=rand();
end
disp(columnD);
%disp(binary);


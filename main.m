function main()
clear;
clc;
%种群大小
popsize=100;
%二进制编码长度
chromlength=10;
%交叉概率
pc=0.6;
%变异概率
pm=0.001;
%初始种群
pop = initpop(popsize,chromlength);
%迭代次数
time=300;
x=ones(time,1);
fitvalue1=ones(time,1);


for i=1:time
    %计算适应度值（函数值）
    objvalue=cal_objvalue(pop);
    fitvalue=objvalue;
    %选择操作
    newpop=selection(pop,fitvalue);
    %交叉操作
    newpop=crossover(newpop,pc);
    %变异操作
    newpop=mutation(newpop,pm);
    %更新种群
    pop=newpop;
    
    [bestindividual,bestfit]=best(pop,fitvalue);
    x(i)=binary2decimal(bestindividual);
    fitvalue1(i)=bestfit;
end
%寻找最优解
x1=binary2decimal(newpop);
y1=cal_objvalue(newpop);
%显示最终种群进化后的优解
figure;
fplot(@(x)10*sin(5*x)+7*abs(x-5)+10,[0 10]);
hold on
plot(x1,y1,'*');
title(['迭代次数为' num2str(time)]);
%显示每一代的最优解的迭代过程
figure
y=1:time;
plot(y,x,'.');
figure
plot(y,fitvalue1,'.');





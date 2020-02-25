function main()
clear;
clc;
%��Ⱥ��С
popsize=100;
%�����Ʊ��볤��
chromlength=10;
%�������
pc=0.6;
%�������
pm=0.001;
%��ʼ��Ⱥ
pop = initpop(popsize,chromlength);
%��������
time=300;
x=ones(time,1);
fitvalue1=ones(time,1);


for i=1:time
    %������Ӧ��ֵ������ֵ��
    objvalue=cal_objvalue(pop);
    fitvalue=objvalue;
    %ѡ�����
    newpop=selection(pop,fitvalue);
    %�������
    newpop=crossover(newpop,pc);
    %�������
    newpop=mutation(newpop,pm);
    %������Ⱥ
    pop=newpop;
    
    [bestindividual,bestfit]=best(pop,fitvalue);
    x(i)=binary2decimal(bestindividual);
    fitvalue1(i)=bestfit;
end
%Ѱ�����Ž�
x1=binary2decimal(newpop);
y1=cal_objvalue(newpop);
%��ʾ������Ⱥ��������Ž�
figure;
fplot(@(x)10*sin(5*x)+7*abs(x-5)+10,[0 10]);
hold on
plot(x1,y1,'*');
title(['��������Ϊ' num2str(time)]);
%��ʾÿһ�������Ž�ĵ�������
figure
y=1:time;
plot(y,x,'.');
figure
plot(y,fitvalue1,'.');





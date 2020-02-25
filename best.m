%求最优适应度函数
%输入变量：pop：种族，fitvalue：种群适应度
%输出变量：bestindividual：最佳个体，bestvalue：最佳适应度值
function [bestindividual,bestfit]=best(pop,fitvalue)
[px,py]=size(pop);
bestindividual=pop(1,:);
bestfit=fitvalue(1);
for i=2:px
    if bestfit<fitvalue(i)
        bestindividual=pop(i,:);
        bestfit=fitvalue(i);
    end
end
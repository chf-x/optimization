%��������Ӧ�Ⱥ���
%���������pop�����壬fitvalue����Ⱥ��Ӧ��
%���������bestindividual����Ѹ��壬bestvalue�������Ӧ��ֵ
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
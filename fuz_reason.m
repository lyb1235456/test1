%%%%ģ���������%%%%
clear all;
close all;%%%�����뵥���
A=[0.5;1;0.1];
B=[0.1,1,0.6];%�ؼ���ģ����ϵ����R,��������᷽��
C=[0.4,1];
for i=1:3
    for j=1:3
        AB(i,j)=min(A(i),B(j));
    end
end
%%%****������ת����������****
ABT=[];
for i=1:3
    ABT=[ABT,AB(i,:)];
end
%******�����R******%
for i=1:9
    for j=1:2
        R(i,j)=min(ABT(i),C(:,j))%%%%���ϵ����R
    end
end
%%%%%����A1,B1,��C1
A1=[1,0.5,0.1],B1=[0.1,0.5,1];
for i=1:size(A1,2)
    for j=1:size(B1,2)
        AB1(i,j)=min(A1(i),B1(j));
    end
end
%*****������ת����������******%
AB1T=[];
for i=1:size(AB1,2)
    AB1T=[AB1T,AB1(i,:)];
end

%***������������кϳ�***%
C1=comp_fu(AB1T,R);

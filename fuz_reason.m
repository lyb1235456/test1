%%%%模糊推理仿真%%%%
clear all;
close all;%%%多输入单输出
A=[0.5;1;0.1];
B=[0.1,1,0.6];%关键求模糊关系矩阵R,采用马达尼方法
C=[0.4,1];
for i=1:3
    for j=1:3
        AB(i,j)=min(A(i),B(j));
    end
end
%%%****将矩阵转换成行向量****
ABT=[];
for i=1:3
    ABT=[ABT,AB(i,:)];
end
%******求矩阵R******%
for i=1:9
    for j=1:2
        R(i,j)=min(ABT(i),C(:,j))%%%%求关系矩阵R
    end
end
%%%%%给出A1,B1,求C1
A1=[1,0.5,0.1],B1=[0.1,0.5,1];
for i=1:size(A1,2)
    for j=1:size(B1,2)
        AB1(i,j)=min(A1(i),B1(j));
    end
end
%*****将矩阵转化成行向量******%
AB1T=[];
for i=1:size(AB1,2)
    AB1T=[AB1T,AB1(i,:)];
end

%***将两个矩阵进行合成***%
C1=comp_fu(AB1T,R);

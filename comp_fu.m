%%����ϳ�
function re=comp_fu(A,B)
    for i=1:size(A,1)   %%%ģ������ϳ��㷨 A.B
        for j=1:size(B,2)
            AB(i,j)=max(min(A(i,:),B(:,j)'));
        end
    end
    re=AB;
end
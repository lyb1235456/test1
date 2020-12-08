%%矩阵合成
function re=comp_fu(A,B)
    for i=1:size(A,1)   %%%模糊矩阵合成算法 A.B
        for j=1:size(B,2)
            AB(i,j)=max(min(A(i,:),B(:,j)'));
        end
    end
    re=AB;
end
30
60

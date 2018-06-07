
function hasil=gaussjordan(A,b)
    M=[A b];
    j=1;
    [n,m]=size(M);
    x(n)=0
    
    for i=1:n-1
        M(i,:)=M(i,:)/M(i,i);
        for j=i+1:n 
            M(j,:)=(M(j,:)/M(j,i))-M(i,:);
        end
    end
    M(i+1,:)=M(i+1,:)/M(i+1,i+1);
    
    
    hasil=M;
    
endfunction

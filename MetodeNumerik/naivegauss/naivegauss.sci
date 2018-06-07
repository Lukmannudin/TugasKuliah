function sol=naivegauss(A,b)
    M=[A b];
    [n m]=size(M);
    
    for j=1:n-1
        for i = j+1:n
            M(i,:)=-M(i,j)/M(j,j)*M(j,:)+M(i,:);
        end,
    end
    nA=M(1:n,1:n);
    nB=M(:,n+1);
    sol=subbalik(nA,nB);
endfunction

function nilai=subbalik(A,b)
    [m,n]=size(A);
    x(n)=b(n)/A(n,n);
    
    for k=n-1:-1:1
        jum=0;
        for j=k+1:n
            jum=jum+A(k,j)*x(j);
         end,  
        x(k)=(b(k)-jum)/A(k,k); 
    end
    
    nilai=x;
endfunction

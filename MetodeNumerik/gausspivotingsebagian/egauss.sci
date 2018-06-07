
function egauss(A,b)
    M=[A b];
    [n m]=size(M);
    j=2;
    for j=1:n
        kolom=abs(M(:,j));
        [nilai,ind]=max(kolom(j:n));   
        indeks=ind+j-1;
        if kolom(j) < nilai then
            M=tukar(M,indeks,j);
        end, 
        
        for i=j+1:n
            M(i,:)=-M(i,j)/M(j,j)*M(j,:)+M(i,:);
        end,    
    end
    nA=M(1:n,1:n);
    nB=M(:,n+1);
    solusix=subbalik(nA,nB);
    disp('Matriks M');disp(M);
    disp('Solusi X');disp(x);
endfunction

function hasil=tukar(M,indeks,j)
    sementara=M(j,:);
    M(j,:)=M(indeks,:);
    M(indeks,:)=sementara;
    hasil=M;
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

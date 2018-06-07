
function hasil=gausnaif(A,b)
    [m n]=size(A);
    M=[A b];
    for j=1:n-1
        for i = j+1:n
            M(i,:)=-M(i,j)/M(j,j)*M(j,:)+M(i,:);
        end
    end
    hasil=M;
   // nA=M(1:n,1:n);
    //nB=M(:,n+1);
   // hasil=sbalik(nA,nB);
endfunction

function hasil = sbalik(A,b)
    [m n]=size(A);   
    x(n)=b(n)/A(n,n);
     for k=n-1:-1:1
          jum =0;
          for j=k+1:n
              jum=jum+A(k,j)*x(j);
          end,
          x(k)=(b(k)-jum)/A(k,k);    
     end
     hasil=x;
endfunction

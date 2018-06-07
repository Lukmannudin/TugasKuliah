
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

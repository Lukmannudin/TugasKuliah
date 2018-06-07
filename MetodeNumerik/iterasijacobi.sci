function ijacobi(A,b,xo,tol)
    M=[A b];
    [m,n]=size(M);
    x(1)=0;i=1;
    g=1;
    //Inisialisasi Nilai Galat
    galat=%T;
    jum=0;
    
    while galat==%T
        for k=1:n-1
            jum=0;
            for j=1:n-1
                if k~=j then
                    jum=jum+A(k,j)*xo(j);
                end,
             end,  
            x(k)=(b(k)-jum)/A(k,k);
           // disp(x);
        end,
        i=i+1;
        //Pemasukan Nilai Galat
        for i=1:n-1
            g(i)=abs( ( x(i)-xo(i) )/x(i) ); 
        end 
        galat=Cgalat(g,tol)
               
        xo=x;       
        
    end//end while
    disp('Nilai Hampiran X = ');disp(xo);
endfunction

function hasil=Cgalat(g,tol)
    c=g>tol;
    [m,n]=size(c);i=1;
   
    for i=1:m
        if c(i)==%T then
            hasil=%T;
            break;
        else
            hasil=%F;
        end    
    end
    
    
endfunction


function hasil=nGregoryMaju(x,fx,xtaksir)
    //x matriks 1 x n
    //fx matriks 1 x n
    
    i=1;L=0;Lt=0;b=1;
    [n,m]=size(x);
    [ny,my]=size(fx);
    A(m,m)=0;//initialisasi matriks
    mt=m;
    j=1;xs=mt;
  
   //memasukan nilai fx ke matriks   
   for i=1:m
       A(i,1)=fx(1,i);
   end
   
   for i=2:m
       for j=1:mt-1
          A(j,i)=A(j+1,i-1)-A(j,i-1); 
       end,
      mt= mt-1;           
   end
  L=0;
  h=abs(x(1,2)-x(1,1));
  //s=(xtaksir-x(1,1))/h;
  s=(xtaksir-x(1,1))/h;
  Lt=1;
   for i=1:m
       if i<=1 then
         L=L+A(1,1);
         else
          s=(xtaksir-x(1,b))/h;
          Lt=Lt*s;
          L=L+(A(1,i)*Lt)/factorial(b);
          b=b+1;
        end,
   end
   disp(A);
   hasil=L;
endfunction




function nilai=cari(xo,tol)
   x(1)=xo;
   g(1)=1;
   r=1;
   while g(r)>tol
       x(r+1)=x(r)*f(x(r))/faksen(x(r));
       g(r+1)=abs(x(r+1)-x(r));
       r=r+1;
   end
   nilai=[x g];
endfunction

function nf=f(x)
    nf=x^3+5*x^2-10*x-5;
endfunction

function nf=faksen(x)
    nf=3*x^2+10*x-10;
endfunction


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

function nf=fcos(x,i)
    nf=3^i * cosd(3*x+180*i/2)
endfunction

//function y=turunan(x,i)
    
//endfunction
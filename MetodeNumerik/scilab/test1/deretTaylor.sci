function nilai=deret_taylor_sin3x(x,xo,tol)
    h=x-xo;g=0;i=1;jum=0;temp=0;
    
    
    
    
    h=turunan(x,0);
    nilai=h;
endfunction

function nf=sin2(x,i)
    nf=3^i * sind(3*x+180*i/2)
endfunction

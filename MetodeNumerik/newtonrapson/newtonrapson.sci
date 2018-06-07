
function newtonrapson(xo,tol)
    i=1;g(i)=1;r(1)=1;k(1)=0;
    x(i)=xo;
    fb(i)=f(xo);
    fak(i)=faksen(xo);
    if konvergensi(xo) < 1 then
       if faksen(x)~=0 then
        while (g(i)>tol)
            x(i+1)=x(i)-( f(x(i))/faksen(x(i)) );
            g(i+1)=abs( (x(i+1)-x(i))/x(i+1) );
            fb(i+1)=f(x(i+1));
            fak(i+1)=faksen(x(i+1));
            r(i+1)=i+1;
          i=i+1;
        end,
        mprintf("Suku ke\t  x(akar)\t   f(x)\t\t  galat\n");
        mprintf('   %d\t %f\t %f\t %f\n', r, x, fb, g);
        else
            disp("f''(xr) tidak boleh sama dengan 0");
       end,
   else
        disp("Tebakan awal yang dipilih tidak dapat menemukan akar(Tidak Konvergen)");
   end   
   
    
endfunction

function nf=f(x)
    nf= x*cos(x)-0.1;
endfunction

function nf=faksen(x)
    nf= x*cos(x)-x*sin(x);
endfunction

function nf=faksen2(x)
    nf= -2*sin(x)-x*cos(x);
endfunction

function nf=konvergensi(x)
    nf=abs( (f(x)*faksen2(x))/(faksen(x))^2 );
endfunction



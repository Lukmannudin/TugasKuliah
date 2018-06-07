
function secant(a,b,tol)
   g=1;x(1)=a;x(2)=b;i=2;j=1;
   mprintf("suku ke\t   Xn-1\t\t    Xn\t\t   Xn+1\t\t  galat\n");
   //mprintf('  %d\t%f\t %f\t %f\t %f\n',i,a,b,c,fc);
    while g>tol 
        x(i+1)=x(i)-( (f(x(i)) * (x(i)-x(i-1)))/(f(x(i)) -f(x(i-1))) );
        g = abs( (x(i+1)-x(i))/x(i+1) );
        
        mprintf('%d\t %f\t %f\t %f\t %f\n', j, x(i-1),x(i),x(i+1),g);
        i=i+1;
        j=j+1;
    end

endfunction

function nilai=f(x)
    nilai = x*cos(x)-0.1;
endfunction

function g=galat_relatif(Cbr,Clm)
    g=abs((Cbr-Clm)/Cbr);
endfunction

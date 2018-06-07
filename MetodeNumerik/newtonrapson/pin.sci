function nilai=newtonrapson(xo,tol)
    i=1;
    x(1)=xo;g(1)=1;r(1)=1;fx=0;
    while g(r)>tol
        x(r+1)=x(r)-f(x(r))/faksen(x(r));
        g(r+1)=abs(x(r+1)-x(r));
        r=r+1;
        i=i+1;
        fx=f(x);
        disp(i);
    end
    nilai=[x g];
endfunction

function nf=f(x)
    //nf= x^3+5*x^2-10*x-5;
    nf=4*x^3-15*x^2+17*x-6;
endfunction

function nf=faksen(x)
    //nf=3*x^2+10*x-10;
    nf=12*x^2-30*x+17;
endfunction

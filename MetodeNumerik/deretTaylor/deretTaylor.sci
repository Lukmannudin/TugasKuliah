function deret_taylor_sin3x(x,xo,tol)
    y=0;i=0;
    h=x-xo;
    g=1;
    t=0;i=0;
    mprintf("Suku ke\t Nilai Hampiran f(x)\tGalat eksak |f(x)-f_(x)|\n");
    while (g>tol)
    y=y+fsin(xo,i,t)*h^i/factorial(i);
    g=abs(0.14112-y);
    mprintf('%d\t %f\t\t %f\n', i, y, g);
    i=i+1;
    t=t+1;
     if t==4 then
            t=0;
        end,  
   end
  
endfunction

function nf=fsin(x,i,t)
    select t
    case 0 then 
        nf=3^i*sin(3*x);
    case 1 then
        nf=3^i*cos(3*x);
    case 2 then
        nf=-3^i*sin(3*x);
    case 3 then
        nf=-3^i*cos(3*x);
    else
    break
  end
    
endfunction

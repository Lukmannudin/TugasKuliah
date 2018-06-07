function deret_taylor_sin3x(x,xo,tol    )
    y=0;i=0;
    h=x-xo;
    g=1;
    t=0;i=0;
    mprintf("Suku ke\t   f(x)\t\t Galat eksak\n");
    while (g>tol)
    y=y+fsin(xo,i,t)*h^i/factorial(i);
    //g=abs(sin(3*x)-y);
    g=abs(%e^x-y);
    mprintf('   %d\t %f\t  %f\n', i, y, g);
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
        //nf=3^i*sin(3*x);
        nf=%e^x;
    case 1 then
       // nf=3^i*cos(3*x);
        nf=%e^x;
    case 2 then
        ///nf=-3^i*sin(3*x);
        nf=%e^x;
    case 3 then
        //nf=-3^i*cos(3*x);
        nf=%e^x;
    else
    break
  end
    
endfunction

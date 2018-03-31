function hasil = deret_taylor_sin3x(x,xo,tol)
    y=0;i=0;
    h=x-xo;
    g=1;
    //trigonometri
    t=0;i=0;
   while (g>tol)|| i<15
    y=y+fsin(xo,i,t)*h^i/factorial(i);
    g=abs(y)-0.14112;
    disp(g);
    i=i+1;
    t=t+1;
     if t==4 then
            t=0;
        end,  
   end
   //g=fsin(xo,i,t)*h^i/factorial(i);
   disp(i);
    hasil = g;
   
endfunction

function nf=fsin(x,i,t)
    //nf=3^i * sind(3*x+180*i/2)
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

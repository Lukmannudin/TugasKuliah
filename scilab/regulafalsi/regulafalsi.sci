
function regulafalsi(a,b,tol)
   g=1;i=0;
   fa=f(a);
   fb=f(b);
   cl=0;
    c=3-((fb*(b-a))/(fb-fa));
   fc=f(c); 
   cl=c;
   mprintf("suku ke\t    a\t\t      b\t\t     c\t\t    f(c)\t  galat\n");
   mprintf('  %d\t%f\t %f\t %f\t %f\n',i,a,b,c,fc);
    while g>tol
        if (fa*fc) < 0 then
            b=cl;
        else
            a=cl;
        end,  
        fa=f(a);fb=f(b);   
        c=3-((fb*(b-a))/(fb-fa));
        fc=f(c);
        g=galat_relatif(c,cl);
        cl=c;
        i=i+1;
     mprintf('  %d\t%f\t %f\t %f\t %f\t %f\n',i,a,b,c,fc,g); 
    end
endfunction

function nilai=f(x)
    nilai = x*cos(x)-0.1;
endfunction

function g=galat_relatif(Cbr,Clm)
    g=abs((Cbr-Clm)/Cbr);
endfunction


function metode_bagi2(a,b,kt)
    i=0;g=1;clam=0;
    cb=1;
      
      c=ntengah(a,b);r=renggang(a,b);  
      
      fa=f(a);
      fb=f(b);
      fc=f(c);
      cb=c;
      mprintf("suku ke\t    a\t\t      b\t\t     c\t\t    f(c)\t  galat\n");
      mprintf('  %d\t%f\t %f\t %f\t %f\n',i,a,b,cb,fc);
     while (g>kt) 
         
         if fa*fc<0 then
            b=cb;
         else
            a=cb;
         end,  
        
         c=ntengah(a,b);r=renggang(a,b);  
         fa=f(a);fb=f(b);fc=f(c);
         g=abs(galat_relatif(c,cb));
         cb=c;
         i=i+1;
         mprintf('  %d\t%f\t %f\t %f\t %f\t %f\n',i,a,b,c,fc,g);
     end
endfunction

function nf=f(x)
        nf= x*cos(x)-0.1;
endfunction
function c=ntengah(a,b)
    c=(a+b)/2
endfunction

function r=renggang(a,b)
    r=abs(a-b);
endfunction
function g=galat_relatif(Cbr,Clm)
    g=(Cbr-Clm)/Cbr;
endfunction

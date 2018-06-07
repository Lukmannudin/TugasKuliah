function metode_bagi2(a,b,kt)
    i=0;g=1;clam=0;
    cb=1;
      
      c=ntengah(a,b);r=renggang(a,b);  
      
      fa=selang(a);
      fb=selang(b);
      fc=selang(c);
      cb=c;
      disp([fa fc fb ]);
     while (g>kt) 
         
         if fc<0 then
            a=cb;
         else
            b=cb;
         end,  
        
         c=ntengah(a,b);r=renggang(a,b);  
         fa=selang(a);fb=selang(b);fc=selang(c);
         g=abs(galat_relatif(c,cb));
         cb=c;
         i=i+1;
         disp([fa fc fb g]);
     end
endfunction

function f=selang(x)
    f=x^3+5*x^2-10*x-5;
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

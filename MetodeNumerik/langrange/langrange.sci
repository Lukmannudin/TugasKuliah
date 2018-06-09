

function langrange(x,fx,xtaksir,jp);
    //x matriks 1 x n
    //fx matriks 1 x n
    
    i=0;j=0;L=0;Li=0;pen=0;
    [n,m]=size(x);
    [ny,my]=size(fx);
    
    if m==my then
       if jp~=m-1 then
           disp ('Polinom berderajat '+string(jp)+' tidak sesuai dengan jumlah titik '+string(m));
       else  
            if (xtaksir>x(1,1)) & (xtaksir<x(1,m)) then
             pi=1;
                for i=1:m
                    pi=1;
                    for j=1:m
                        if i<> j then
                            pi=pi*( (xtaksir-x(1,j)) / (x(1,i)-x(1,j)) );
                        end,//end if       
                    end,//endfor
                    disp('L('+string(pen)+') = '+string(pi));
                    L=L+fx(1,i)*pi;
                    pen=pen+1;
                end//endfor 
                hasil=L;
                disp('Nilai taksiran = '+string(hasil));
            else 
                disp('x taksir = '+string(xtaksir)+' diluar dari nilai x yang dihitung');
             end, //end cek xtaksir diluar x masukan    
            end, //end inner if
    else
        disp('Jumlah data antara x dan f(x) tidak sama');          
    end //endmainif
    
    
    
endfunction


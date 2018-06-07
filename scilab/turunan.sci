
function hasil=turunan()
    x(1)=0;
    j(1)=0;
    for i=1:13
        j(i)=i;
        x(i)=3^i;
    end
    
    hasil = [j x];
endfunction

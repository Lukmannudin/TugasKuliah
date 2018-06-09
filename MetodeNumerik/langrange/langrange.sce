
function hasil=langrange(x,fx,xtaksir);
    i=0;j=0;L=0;
    [n,m]=size(x);
    [ny,my]=size(fx);
    pi=1;
    for i=1:m
        pi=1;
        for j=1:m
            if i<> j then
                pi=pi*( (xtaksir-x(1,j)) / (x(1,i)-x(1,j)) );
                disp(pi);
            end,//end if       
        end,//endfor
        L=L+fx(1,i)*pi;
    end//endfor 
    hasil=L;
endfunction


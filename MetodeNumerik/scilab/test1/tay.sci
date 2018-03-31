function taylor()
    dx=1e-3*[1;1;-1];
[J,H]=derivative(F,x);
F(x+dx)
F(x+dx)-F(x)
F(x+dx)-F(x)-J*dx
F(x+dx)-F(x)-J*dx-1/2*H*(dx .*. dx)
endfunction

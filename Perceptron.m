clc, clear all, close all
%%Creación de matriz para trabajar el perceptron.
x=[0 0 0 1; 1 0 0 0];
t=[1 0 0 1];                %AQUI SE CAMBIAN LOS VALORES DE T POR SI SE QUIEREN MÁS DATOS
%-------------------------------------------------
w=[0 0];       %Variables - AQUI SE CAMBIAA EL VALOR DE LOS PESOS Y DEL BIAS, COUNT NO SE MUEVE PORQUE ES PARA EL CICLO FOR
b=0;
count=0;
%-------------------------------------------------
%Epoch para ciclos (aun por definir)
        sum=0;
for Epoch=1:50
    count=count+1;
    for r=1:length(x)
        a=hardlim(w*x(:,r)+b);
        e(:,r)=t(:,r)-a;
        w=w+e(:,r)*x(:,r)';
        b=b+e(:,r);
        if e==0
           sum=sum+1; 
        end
        if sum==4
            e
            w
            b
            return
        end    
    end
    disp('iteracion');
    e
    w
    b
    disp('fin iteracion');
end  
%-------------------------------------------------
plot(x(1,1),x(2,1),'bo', x(1,2),x(2,2),'bo'), axis([-1 2 -1 2])
hold on;
grid on;
plot(x(1,3),x(2,3),'bo', x(1,4),x(2,4),'bx')
%-------------------------------------------------
2p´ds

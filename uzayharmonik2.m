clear all
clc
% fx=sym(zeros(5,1));
% x=sym(zeros(1,6));
% dfx=sym(zeros(5,5));
x0=[0.13 0.42 0.72 2 5];

syms F1 F2 a1 a2 a3;
dur=0;
h=0;
hata=0;

fx(1,1)=vpa((4/(5*pi))*(F1*(cos(5*a1)-cos(5*a2))+F2*(cos(5*a2)-cos(5*a3))+14*(cos(5*a3))));
fx(2,1)=vpa((4/(7*pi))*(F1*(cos(7*a1)-cos(7*a2))+F2*(cos(7*a2)-cos(7*a3))+14*(cos(7*a3))));
fx(3,1)=vpa((4/(11*pi))*(F1*(cos(11*a1)-cos(11*a2))+F2*(cos(11*a2)-cos(11*a3))+14*(cos(11*a3))));
fx(4,1)=vpa((4/(13*pi))*(F1*(cos(13*a1)-cos(13*a2))+F2*(cos(13*a2)-cos(13*a3))+14*(cos(13*a3))));
fx(5,1)=vpa((4/(17*pi))*(F1*(cos(17*a1)-cos(17*a2))+F2*(cos(17*a2)-cos(17*a3))+14*(cos(17*a3))));
x=[a1 a2 a3 F1 F2];

for i=1:5;
    for o=1:5;
    dfx(i,o)=diff(fx(i,1),x(1,o));
    end
end

for h=1:200;
% while dur==0
    h=h+1;
    for m=1:5;
        fx0(m,1)=vpa(subs(fx(m,1),x,x0));
        for n=1:5;
            dfx0(m,n)=vpa(subs(dfx(m,n),x,x0));
        end
    end

    dx=(-1)*inv(dfx0)*fx0;
    x0=x0+dx';
    
%     for g=1:3;
%         if x0(1,g)<x0(1,g+1) || x0(1,1)<0 || x0(1,3)>pi/2 ;
%         hata=hata+1;
%         end
%     end
%     
%     if hata>0;
%         dur=1;
%         fprintf('Kısıtlar saglanmıyor ilk degerleri degistirin.')
% else
    if abs(dx)<0.000001
%         dur=dur+1;
        disp( sprintf('\nIterasyon sayısı: %.f \n',double(h)))
        disp( sprintf('\nCozumler: \n %0.3f \n %0.3f \n %0.3f \n %0.3f \n %0.3f ',double(x0(1,1)),double(x0(1,2)),double(x0(1,3)),double(x0(1,4)),double(x0(1,5))))
        break
    end
end



% xy=[a1*180/pi a2*180/pi a3*180/pi F1 F2];


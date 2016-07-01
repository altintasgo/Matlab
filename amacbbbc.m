function z=amacbbbc(x)

    z=(sqrt((4/(5*pi)*(x(4)*(cosd(5*x(1))-cosd(5*x(2)))+x(5)*(cosd(5*x(2))-cosd(5*x(3)))+100*(cosd(5*x(3)))))^2 + (4/(7*pi)*(x(4)*(cosd(7*x(1))-cosd(7*x(2)))+x(5)*(cosd(7*x(2))-cosd(7*x(3)))+100*(cosd(7*x(3)))))^2 + (4/(11*pi)*(x(4)*(cosd(11*x(1))-cosd(11*x(2)))+x(5)*(cosd(11*x(2))-cosd(11*x(3)))+100*(cosd(11*x(3)))))^2 + (4/(13*pi)*(x(4)*(cosd(13*x(1))-cosd(13*x(2)))+x(5)*(cosd(13*x(2))-cosd(13*x(3)))+100*(cosd(13*x(3)))))^2 + (4/(17*pi)*(x(4)*(cosd(17*x(1))-cosd(17*x(2)))+x(5)*(cosd(17*x(2))-cosd(17*x(3)))+100*(cosd(17*x(3)))))^2) / (4/(pi)*(x(4)*(cosd(x(1))-cosd(x(2)))+x(5)*(cosd(x(2))-cosd(x(3)))+100*(cosd(x(3)))))^2);

end

% h0= stagnation pressure
%hinf=static pressure
%hx= height of manometer liquid at each ports
%X_c= distance of ports from tip of wing
%X_C1,X_C2,X_C3= distance of ports from tip of wing at root, mid and tip
%CP= coefficient of pressure
%C_pu=coeffient of pressure at upper side 
%C_pl=coeffient of pressure at below
%V=velocity
%Re=reynold's no

%% initial input
h0=input("h0:");
hinf=input("hinf:");
code_1()
%% calculation
X_C1=XC1;
X_C2=XC2;
X_C3=XC3;
% calculation of CP 
CP=(hinf-hx)./(hinf-h0);
% chord at root, mid,tip
chord=[18.5*10^-2;14.4*10^-2;10.3*10^-2];
%input
D_L=789;%density_manometer_liquid
D_FS=1.2;%density_free_stream
viscosity=1.81*10^-5;

%% plotting the C_pu and C_pl

% plot at root
figure;
plot(X_C1(1:11),CP(1:11),'-o')
hold on
plot(X_C1(12:16),CP(12:16),'-o')
hold off
title("ROOT")
legend("C_pu","C_pl")
xlabel("XC")
ylabel("CP")

% plot at mid
figure;
plot(X_C2(1:11),CP(17:27),'-o')
hold on
plot(X_C2(12:16),CP(28:32),'-o')
hold off
title("MID")
legend("C_pu","C_pl")
xlabel("XC")
ylabel("CP")

%plot at tip
figure;
plot(X_C3(1:10),CP(33:42),'-o')
hold on
plot(X_C3(12:16),CP(43:47),'-o')
hold off
title("TIP")
legend("C_pu","C_pl")
xlabel("XC")
ylabel("CP")

%% calculation of velocity and reynold's number
V=sqrt((2*D_L.*(hinf-h0))/D_FS)
Re=(D_FS*V.*chord)/(viscosity)


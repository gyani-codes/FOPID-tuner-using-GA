function [J] = pid_optim(x)

s = fotf('s');
j = 0.01;
b = 0.1;
K = 0.01;
R = 1;
L = 0.5;

P_motor = K/((j*s+b)*(L*s+R)+K^2);




Kp = x(1);
Ki = x(2);
Ld = x(3);
Kd = x(4);
Mu = x(5);

cont = fracpid(Kp,Ki,Ld,Kd,Mu);

step(feedback(P_motor*cont,1));

dt = 0.01;
t = 0:dt:1;

e = 1 - step(feedback(plant*cont,1),t);

J = sum(t'.*abs(e)*dt);


function [J] = pid_optim(x)

s = fotf('s');

plant = 1 / (s^2 + 10*s + 20);

Kp = x(1);
Ki = x(2);
Ld = x(3);
Kd = x(4);
Mu = x(5);

cont = fracpid(Kp,Ki,Ld,Kd,Mu);

step(feedback(plant*cont,1));

dt = 0.01;
t = 0:dt:1;

e = 1 - step(feedback(plant*cont,1),t);

J = sum(t'.*abs(e)*dt);


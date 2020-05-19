

s = fotf('s');
j = 0.01;
b = 0.1;
K = 0.01;
R = 1;
L = 0.5;

P_motor = K/((j*s+b)*(L*s+R)+K^2);


plant = 1 / (s^2 + 10*s + 20);

Kp = 493.861;
Ki = 458.386;
Ld = 0.654;
Kd = 453.474;
Mu = 0.338;

cont = fracpid(Kp,Ki,Ld,Kd,Mu);

step(feedback(P_motor*cont,1));



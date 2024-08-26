theta1   = 0;
theta2   = (35*pi)/180;
theta1_d = 0;
theta2_d = 0;

[t,x] = ode45(@DobleP,[0 10], [theta1 theta2 theta1_d theta2_d]);

figure(1)
subplot(2,1,1)
sgtitle("Pendulo"); 
plot(t,x(:,1)) % First state: theta1
grid on
xlabel("Tiempo");ylabel("rad");legend('Theta1')

subplot(2,1,2)
plot(t,x(:,2),'r') % Second state: theta2
grid on
xlabel("Tiempo");ylabel("rad");legend('Theta2')

%% Plotting A2 Q2
figure()

% form array containins true parameter values
t1 = 2.*ones(size(theta(:,1),1),1);
t2 = 2.*ones(size(theta(:,2),1),1);
t3 = -0.5.*ones(size(theta(:,3),1),1);
t4 = -1.*ones(size(theta(:,4),1),1);
t5 = 0.5.*ones(size(theta(:,5),1),1);

%% plot zhat vs. z and xhat1 vs. x1 (what is measured)
subplot(4,1,1)
plot(t, zhat, t, z)
ylabel('zhat');
%ylim([-50 50]);
title('zhat vs. z');
legend('zhat', 'z');

subplot(4,1,2)
plot(t, xhat(:,1) ,'r')
hold on;
plot(t, x1 ,'k--')
ylabel('State');
%ylim([-50 50]);
title('Estimated State vs. State');
legend('xhat_1','x_1');

subplot(4,1,3)
plot(t, xhat(:,2), 'm')
hold on;
plot(t, x2, 'k--')
ylabel('State');
%ylim([-50 50]);
legend('xhat_2','x_2');

subplot(4,1,4)
plot(t, xhat(:,2), 'g')
hold on;
plot(t, x3, 'k--')
ylabel('State');
%ylim([-50 50]);
legend('xhat_3','x_3');

xlabel('t');

%% parameter estimates....

figure()
plot(t, theta(:,1),'r',t, theta(:,2),'b',t, theta(:,3),'g',t, theta(:,4),'c',t, theta(:,5),'k')
hold on;
plot(t, t1,'r--',t, t2,'b--',t, t3,'g--',t, t4,'c--',t, t5,'k--')
ylabel('theta');
%ylim([-10 10]);
title('Parameter Estimates (theta)');
legend('b2','b1','a2','a1','a0');
xlabel('t');

%% plotting the input signal

figure()
plot(t,u)
ylabel('u');
title('Input Signal (u)');
xlabel('t');
close all
clc

fig = openfig('final_model_gain1.0_with_step_0.5.fig');

dataObjs = findobj(fig, '-property', 'YData');
xObjs = findobj(fig, '-property', 'XData');

cart = dataObjs(1).YData;
tac = dataObjs(2).YData;
motor = dataObjs(3).YData;
time = xObjs(1).XData;

figure (2)
plot(time, cart, 'DisplayName', 'Cart Angle', 'LineWidth', 2)
hold on
plot(time, tac, 'DisplayName', 'Pendelum Angle', 'LineWidth', 2)
hold on
plot(time, motor, 'DisplayName', 'Motor Voltage', 'LineWidth', 2)
hold off


xlim([0 30])
ylim([-2 2])
ylabel("Voltage (Vdc)")
xlabel("Time (seconds)")
title("Final Model with 100% Power (With Added Step = 0.5)")
legend
grid on;
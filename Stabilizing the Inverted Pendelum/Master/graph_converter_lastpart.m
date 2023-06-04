close all
clc

fig = openfig('swing_up_part2_without_conversion.fig');

dataObjs = findobj(fig, '-property', 'YData');
xObjs = findobj(fig, '-property', 'XData');

time = dataObjs(1).XData;
theta = dataObjs(4).YData;
thetazero = dataObjs(5).YData;
poten = dataObjs(6).YData;
mv = dataObjs(7).YData;


figure (2)
plot(time, theta, 'DisplayName', 'Theta (Radians)', 'LineWidth', 2)
hold on
plot(time, thetazero, 'DisplayName', 'Theta after Zeroing (Radians)', 'LineWidth', 2)
hold on
plot(time, poten, 'DisplayName', 'Potentiometer (Angle) (Phi)', 'LineWidth', 2)
hold on
plot(time, mv, 'DisplayName', 'Motor Voltage (Volts)', 'LineWidth', 2)
hold off

xlim([0 30])
ylim([-16 16])
ylabel("Voltage (Vdc)")
xlabel("Time (seconds)")
title("Swing-Up controller without Conversion")
legend
grid on;

%% With Conversion
close all
clc

fig = openfig('swing_up_part2_with_conversion');

dataObjs = findobj(fig, '-property', 'YData');
xObjs = findobj(fig, '-property', 'XData');

time = dataObjs(1).XData;
sr = dataObjs(1).YData;
dtheta = dataObjs(2).YData;
theta = dataObjs(3).YData;
dphi = dataObjs(4).YData;
phi = dataObjs(5).YData;
mv = dataObjs(6).YData;

figure (2)
plot(time, sr, 'DisplayName', 'S and R Flip Flop Output', 'LineWidth', 2)
hold on
plot(time, dtheta, 'DisplayName', 'Derivative of Theta (Rads/Counts)', 'LineWidth', 2)
hold on
plot(time, theta, 'DisplayName', 'Theta (Rads/Counts)', 'LineWidth', 2)
hold on
plot(time, dphi, 'DisplayName', 'Derivative of Phi (Rads/Volts)', 'LineWidth', 2)
hold on
plot(time, phi, 'DisplayName', 'Phi (Rads/Volts)', 'LineWidth', 2)
hold on
plot(time, mv, 'DisplayName', 'Motor Voltage (Volts)', 'LineWidth', 2)

hold off



xlim([0 30])
ylim([-60 60])
ylabel("Voltage (Vdc)")
xlabel("Time (seconds)")
title("Swing-Up controller with Conversion")
legend
grid on;
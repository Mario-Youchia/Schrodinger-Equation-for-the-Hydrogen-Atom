%% Plot hydrogen atom energy levels
clc;
clear;
close all;

E1 = -13.6;      % Ground-state energy in electron volts
nMax = 10;       % Number of energy levels to display

figure('Color', 'w');
hold on;
grid on;

for n = 1:nMax
    En = E1 / n^2;
    plot([0 1], [En En], 'LineWidth', 1.3);
end

text(1.03, E1, 'n = 1', 'FontSize', 9);
text(1.03, E1/4, 'n = 2', 'FontSize', 9);
text(1.03, E1/9, 'n = 3', 'FontSize', 9);
text(1.03, -0.35, 'n > 3', 'FontSize', 9);

xlim([0 1.2]);
ylim([E1 - 1, 0.5]);
set(gca, 'XTick', []);
ylabel('Energy (eV)');
title('Hydrogen Atom Energy Levels');

%% Plot selected spherical harmonics
clc;
clear;
close all;

figure('Color', 'w');
quantumNumbers = [
    0 0;
    1 0;
    1 1;
    2 0;
    2 1;
    2 2
];

for k = 1:size(quantumNumbers, 1)
    subplot(2, 3, k);
    L = quantumNumbers(k, 1);
    M = quantumNumbers(k, 2);
    sphericalHarmonics(L, M);
    axis equal;
    shading interp;
end

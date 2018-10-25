clear all;
clc;

a = [1 2 3; 4 5 6; 7 8 9];
b = [0 1 0]';
c = a * b;

fprintf('The Output is:\n');
fprintf('\t%d\n', c);
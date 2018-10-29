%% Examples of skipping remainder of iterations

%% Example 1
% Skipping is accomplished in the while condition.
ii = 1;
while ii < length(readings) && readings(ii) <= 100
    readings(ii) = 0;
    ii = ii + 1;
end

%% Example 2
% Skipping is acomplished with a break statement.
for ii = 1:length(readings)
    if readings(ii) > 100
        break;
    else
        readings(ii) = 0;
    end
end

%% Example 3
% Shows that for-loop index retains is last value
% after the loop is exited. It's similar to Example 2,
% but omits the setting of values to 0 and prints the
% index of the first reading above 100.
for ii = 1:length(readings)
    if readings(ii) > 100
        break;
    end
end
fprintf('First reading above 100 is at index %d.\n', ii);

function guess_my_number(x)
if x == 42
	fprintf('Congrats! You guessed my number!\n');
elseif x < 42
	fprintf('Too small. Try again\n');
else
    fprintf('Too big. Try again.\n')
end




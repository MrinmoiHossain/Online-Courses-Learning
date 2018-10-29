clear w;
tic;
w = v(v>0);
fprintf('Time for logical version = %f\n',toc)
clear w
tic;
w = [];
jj = 0;
for ii = 1:length(v)
   if v(ii) >= 0
      jj = jj + 1;
      w(jj) = v(ii);
   end
end
fprintf('Time for for-loop version = %f\n',toc)

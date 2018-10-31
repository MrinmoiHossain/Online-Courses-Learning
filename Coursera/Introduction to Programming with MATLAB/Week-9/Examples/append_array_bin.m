function append_array_bin(A,filename,data_type)
fid = fopen(filename,'a');
if fid < 0
   fprintf('error opening file\n');
   return;
end
fwrite(fid,A,data_type);
fclose(fid);


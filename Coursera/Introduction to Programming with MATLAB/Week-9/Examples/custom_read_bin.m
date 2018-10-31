function [o1,o2,o3,o4] = custom_read_bin(filename)
fid = fopen(filename,'r');
if fid < 0
   fprintf('error opening file\n');
   return;
end
nums = fread(fid,3,'int16');
o1 = char(fread(fid,nums(1),'char'))';
o2 = fread(fid,nums(2),'single');
o3 = fread(fid,nums(3),'int32');
o4 = fread(fid,'single');
fclose(fid);


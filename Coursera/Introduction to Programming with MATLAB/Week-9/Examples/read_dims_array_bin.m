function A = read_dims_array_bin(filename)
%READ_DIMS_ARRAY_BIN   Read dimensioned array in binary
%   A = READ_DIMS_ARRAY_BIN('FNAME',N) reads from 
%   a file of doubles named 'fname' into an array. The 
%   file must contain the number of dimensions of the 
%   array, then the dimensions, and then the elements.
fid = fopen(filename,'r');
if fid < 0
    error('error opening file %s\n',filename);
end
n = fread(fid,1,'double');
dims = fread(fid,n,'double');
A = fread(fid,'double');
A = reshape(A,dims');
fclose(fid);
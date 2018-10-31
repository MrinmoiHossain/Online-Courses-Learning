function write_dims_array_bin(A,filename)
%WRITE_DIMS_ARRAY_BIN   Write dimensioned array in binary
%   WRITE_DIMS_ARRAY_BIN(A,'FNAME') writes the number of
%   dimensions of A, then a list of the dimensions, 
%   and then the elements of A into the file named
%   'fname', encoded as a doubles.
fid = fopen(filename,'w+');
if fid < 0
    error('error opening file %s\n', filename);
end
dims = size(A);
fwrite(fid,length(dims),'double');
fwrite(fid,dims,'double');
fwrite(fid,A,'double');
fclose(fid);
function view_text_file(filename)
fid = fopen(filename,'rt');
if fid < 0
    error('error opening file %s\n', filename);
end

% Read file as a set of strings, one string per line:
oneline = fgets(fid);
while ischar(oneline)
    fprintf('%s',oneline) % display one line
    oneline = fgets(fid);
end
fprintf('\n');
fclose(fid);
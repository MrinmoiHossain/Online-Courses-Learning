function write_temp_precip_txt(filename)
Title_1 = 'Climate Data for Nashville, TN';
Title_2 = '(Average highs (F), lows (F), and precip (in)';
Label_1 = ' High ';
Label_2 = ' Low  ';
Label_3 = 'Precip';
Mo_1 = {'Jan','Feb','March','April','May','June'};
Mo_2 = {'July','Aug','Sep','Oct','Nov','Dec'};  
Data_1 = [
   46	28	3.98
   51	31	3.7
   61	39	4.88
   70	47	3.94
   78	57	5.08
   85	65	4.09];
Data_2 = [
   89	69	3.78
   88	68	3.27
   82	61	3.58
   71	49	2.87
   59	40	4.45
   49	31	4.53];
fid = fopen(filename,'w+t');
if fid < 0
   fprintf('error opening file\n');
   return;
end
fprintf(fid,'%s\n',Title_1);
fprintf(fid,'%s\n',Title_2);
fprintf(fid,'\n');
fprintf(fid,'       %s%s%s\n',Label_1,Label_2,Label_3);
for ii = 1:6
   fprintf(fid,'%5s: ',Mo_1{ii});
   fprintf(fid,'%5.2f,%5.2f,%5.2f\n',Data_1(ii,:));  
end
fprintf(fid,'\n');
fprintf(fid,'       %s%s%s\n',Label_1,Label_2,Label_3);
for ii = 1:6
   fprintf(fid,'%5s: ',Mo_2{ii});
   fprintf(fid,'%5.2f,%5.2f,%5.2f\n',Data_2(ii,:));  
end
fclose(fid);
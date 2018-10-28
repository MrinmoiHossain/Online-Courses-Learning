function a = order3(x,y,z)
if x <= y && y <= z
a = 1;
elseif x >= y && y >= z
a = -1;
else
a = 0;
end

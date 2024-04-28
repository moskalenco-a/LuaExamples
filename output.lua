local a = 3;
local b = 4;
print('1. Print with string concatenation');
print('(' .. a .. '; ' .. b .. ')');
print();

print('2. io.stdout.write');
io.stdout.write(io.stdout, '(', a, '; ', b, ')\n');
print();

local write = function (...)
  local arg = { ... }
  io.stdout.write(io.stdout, table.unpack(arg));
end

print('3. Own function based on io.stdout.write');
write('(', a, '; ', b, ')\n');
write ('a + b = ', 'c');
print();

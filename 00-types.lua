-- Running code:
-- lua 00-types.lua

-- Demonstating Lua types
-- 'a .. b' is used to concat strings (like in PHP) instead of 'a + b'
-- returning value of function 'type' is string

-- Type: nil
-- looks like null / undefined in JS
-- nil must be converted to string explicitly
local nil_value = nil
print(' Type: ' .. type(nil_value));
print('Value: ' .. tostring(nil_value));
print();

-----------------------------------------------------------------------

-- Type: boolean, like in JS
-- boolean must be converted to string explicitly
local flag = false;
print(' Type: ' .. type(flag));
print('Value: ' .. tostring(flag));
print();

flag = true;
print(' Type: ' .. type(flag));
print('Value: ' .. tostring(flag));
print();

-----------------------------------------------------------------------

-- Type: number, like in JS
-- one type for both int and real numbers
local int_num = 100;
print(' Type: ' .. type(int_num));
print('Value: ' .. int_num);
print();

local real_num = 2.18281828;
print(' Type: ' .. type(real_num));
print('Value: ' .. real_num);
print();

-----------------------------------------------------------------------

-- Type: string
-- Both '' and "" can be used in string literals
local str = 'string1';
print(' Type: ' .. type(str));
print('Value: ' .. str);
print();

str = "string2";
print(' Type: ' .. type(str));
print('Value: ' .. str);
print();

-----------------------------------------------------------------------

-- Type: table
-- like JS 'object' with properties / fields
-- but 'key = value' is used instead of 'key: value'
local table = { login = 'admin', password = '12345678' };
print(' Type: ' .. type(table));
-- something like address will be printed
-- Value: table: 0x56227cba1a30 (for example)
print('Value: ' .. tostring(table));
-- like in JS, two ways of accessing fields
-- object.field_name & obj['field_name'] both can be used
--    Login is: admin
-- Password is: 12345678
print('   Login is: ' .. table.login);
local field = 'password';
print('Password is: ' .. table[field]);
print();

-----------------------------------------------------------------------

-- Type: function
local f = function (x)
  return x * x
end
print(' Type: ' .. type(f));
-- something like address will be printed
-- Value: function: 0x5611c14e3c80 (for example)
print('Value: ' .. tostring(f));
print(' f(9): ' .. f(9));
print();

-- Demonstating Lua types
-- Running code: lua filename.lua

local function print_value(value)
  -- returning value of function 'type' is string
  -- 'a .. b' is string concatenation like 'a + b' in JS
  print(' Type: ' .. type(value))
  -- most of types must be converted to string explicitly
  -- only number can be converted to string implicitly
  print('Value: ' .. tostring(value) .. '\n')
end

-----------------------------------------------------------------------

-- Type: nil
-- looks like null / undefined in JS
-- nil must be converted to string explicitly
local nil_value = nil
print_value(nil_value)

-----------------------------------------------------------------------

-- Type: boolean, like in JS
-- boolean must be converted to string explicitly
local flag = false
print_value(flag)
flag = true
print_value(flag)

-----------------------------------------------------------------------

-- Type: number, like in JS
-- one type for both int and real numbers
local int_num = 100
print_value(int_num)
local real_num = 2.18281828
print_value(real_num)

-----------------------------------------------------------------------

-- Type: string
-- Both '' and "" can be used in string literals
local str = 'string1'
print_value(str)
str = "string2"
print_value(str)

-----------------------------------------------------------------------

-- Type: table
-- like JS 'object' with properties / fields
-- but 'key = value' is used instead of 'key: value'
local user = {
  login = 'admin',
  password = '12345678'
}
-- something like address will be printed
-- Value: table: 0x56227cba1a30 (for example)
print_value(user)
-- two ways of accessing fields, like in JS
-- object.field_name & object[field_name_value]
local pass = 'pass'
print('   Login is: ' .. user.login)           -- admin
print('Password is: ' .. user[pass .. 'word']) -- 12345678
print()

-----------------------------------------------------------------------

-- Type: function
local f = function (x)
  return x * x
end
-- something like address will be printed
-- Value: function: 0x5611c14e3c80 (for example)
print_value(f)
print(' f(9): ' .. f(9))
print()

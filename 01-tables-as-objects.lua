-- Tables are like objects in JS, but
-- 'key = value' instead of 'key: value'
-- Tables can be nested as objects in JS
-- Tables can be empty, {} is empty table

local prog = 'prog'
local person = {
  Name = 'Andrey',
  Location = 'Kyiv',
  -- field name can be dynamic as in JS, using []
  -- '..' is used as '+' in JS, for concatenation
  [prog .. 'ramming'] = {
    editor = 'NeoVim',
    language = 'Lua',
  },
  fun = {}
}

-- Tables are mutable
-- new fields can be added
person.Location = 'Ukraine'
person.OS = 'Fedora'

-- Two ways of accessing values, like JS
-- 'table.key_name' and 'table[some_string]'
print('OS: ' .. person.OS)
print('Lang: ' .. person['programming'].language)
print('Editor: ' .. person.programming['editor'])
print()

-- Printing all key-value pairs of object
for key, value in pairs(person) do
  -- printing all key-values
  -- if value is not table, '~=' is 'not equal'
  if type(value) ~= 'table' and key ~= 'OS' then
    print(key .. ': ' .. value)
  end
end

-- replacing 'fun' with 'Fun' makes error
-- because .Fun is nil, so we can't access fields
if person.fun.non_existing == nil then
  print('Field ".fun.non_existing" not found')
end

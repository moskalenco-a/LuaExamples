-- Tables can also be used as arrays
local langs = { 'Go', 'Lua', 'Python' }

-- same as
-- local langs = {
--   [1] = 'Go',
--   [2] = 'Lua',
--   [3] = 'Bash'
-- }
-- so Lua "arrays" are indexed from 1

-- langs[4] = 'Haskell'        -- this is same
table.insert(langs, 'Haskell') -- insert at the end
table.insert(langs, 1, 'C')    -- insert by index

-- local list = ''
-- for index, lang in ipairs(langs) do
--   if index ~= 1 then
--     list = list .. ', '
--   end
--   list = list .. lang
-- end

-- #table_name is number of items, 5
print('Items count: ' .. tostring(#langs))
-- 'C, Go, Lua, Python, Haskell'
-- table.concat works like arr.join(sep) in JS
print('Items: ' .. table.concat(langs, ', '))
print('Items from 2 to 4: ' .. table.concat(langs, ', ', 2, 4))

print('\nRemoving first & last')
table.remove(langs, 1)      -- removing 'C'
table.remove(langs, #langs) -- removing 'Haskell'
-- 1. Go; 2. Lua; 3. Python
-- ipairs used instead of pairs
-- when iterating table as array
for index, lang in pairs(langs) do
  print(index .. '. ' .. lang)
end

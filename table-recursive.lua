-- Tables as objects

local function print_table(table, indent)
  -- repeat ' ' indent times
  local indent_str = string.rep(' ', indent)
  -- iterating key-values of table
  for key, value in pairs(table) do
    if type(value) == 'table' then
      -- concat, like indent_str + key + ':'
      print(indent_str .. key .. ':')
      print_table(value, indent + 2)
    else
      print(indent_str .. key .. ': ' .. tostring(value))
    end
  end
end

-- note = instead of :
local person = {
  name = 'Andrey',
  location = 'Ukraine',
  programming = {
    editor = 'NeoVim',
    language = 'Lua',
  },
  developer = true
}

print_table(person, 0)

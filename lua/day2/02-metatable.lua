-- Metatables are table behind the tables
-- Can use this data structure to 
-- Override default behavior, for example you want to supply a default value other than nil to unrecoganized keys
-- Add custom behaviour, for example log all read/write to a purticular table

-- Metatables are like prototype in javascript


-- Every table in lua has metatable, containing functions for read/write keys, iterating content and overload operators
-- But most tables set thier metatable to nil
local greek_numbers = {
    ena = "One",
    dyo = "two",
    tria = "three"
}

local greek_numbers_meta_table = getmetatable(greek_numbers)
-- print(greek_numbers_meta_table) -- nil

-- Printing tables like this
--print(greek_numbers) -- table: 0x560b41dfef70
-- This behaviour can be override by metatable

local function table_to_string(t)
    -- stores each keyvalue pairs in list and concatinate to string at the end
    -- must faster than adding to strin one by one
    local result = {}
    for k, v in pairs(t) do
        result[#result + 1] = k .. ": " .. v
    end
    return table.concat(result, ",")
end

-- create metatable
local mt = {
    -- override tostring method of table
    __tostring = table_to_string
}

-- set metatable to table
setmetatable(greek_numbers, mt)

--  print(greek_numbers) -- tria: three,dyo: two,ena: One

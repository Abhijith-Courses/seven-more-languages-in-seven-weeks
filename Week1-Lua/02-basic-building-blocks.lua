-- Lua is dynamically typed language
-- While variables in a program don't have type but runtime values do.

-- Lua has basic types Numbers, Boolean and Strings
-- Numbers are 64-bit floating point numbers
PI = 32.14
print(PI)

-- Strings can be enclosed in single or double quotes
name = 'Abhijith Jayan'
country = "India"
print(name, country)

separated_by_tabs = "Separated\tby\ttabs"
print(separated_by_tabs)

-- Can concatinate strings by .. operator
bio = name .. ' is from ' .. country
print(bio)

-- Find length of string by # operator
bio_length = #bio
print(bio_length)

-- nil is a type in lua, represents 'not found' or 'does not exist'
print(some_variable) -- nil
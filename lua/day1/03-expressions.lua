-- Arithametic is similar to other programming languages
-- Multiplication and Division take precedence over addition and substraction
value = 6 + 5 * 4 - 3 / 2
--print(value) -- 24.5

-- Can group expression with parentheses
value = (6 + 5) * (4 - 3) / 2
--print(value) -- 5.5

-- Lua has built in operator for exponentiation ^
exponentiation = 2 ^ 4
--print(exponentiation) -- 16.0

-- Instead of boolean operators, Lua has and, or not keywords
value = not ((true or false) and false)
--print(value) -- true

-- logical expressions short-circuit, meaning that Lua evaluates bothhalves of an expression only if it needs to.
-- spill_antidote() is not defined here, so below code won't throw error
expression_value = true or spill_antidote()
--print(expression_value) -- true

-- But here both values need to be evaluated and throws error - [ attempt to call a nil value (global 'spill_antidote') ]
-- expression_value = true and spill_antidote()

-- Can compare equality == and inequality ~= with any values
value = true ~= false
--print(value) -- true

-- Relative comparisons are only usable with string or numbers, < , <=, > , >=
value = 'cobra' < 'rat'
-- print(value) -- true

value = #'cobra' < #'rat'
-- print(value) -- false

-- value = 42 < '43' -- Error : attempt to compare number with string

-- value = true < false -- Error : attempt to compare two boolean values
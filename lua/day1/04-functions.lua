-- Functions in Lua look like those in any programming language
function triple(num)
    return 3 * num
end

value = triple(6)
-- print(value) -- 18

-- The function name isn't necessary
value = (function(num) return 3 * num end)(6)
-- print(value) -- 18


-- In Lua, functions are first-class values
-- They can be treated like any other value
-- They can be assigned to variables, passed as parameters to another functions, and stored in datastructures
function call_twice(f)
    inner_function = function(num)
        return f(f(num))
    end
    return inner_function
end

times_nine = call_twice(triple);

value = times_nine(5)
-- print(value) -- 45

---- Flixibile arguments ----
-- If you call function with few arguments, Lua simply assign a nil value unassigend parameters
function print_characters(friend, foe)
    print('* Friend and Foe *') 
    print(friend)
    print(foe)
end

-- print_characters('Joe', 'Alice')
-- * Friend and Foe *
-- Joe
-- Alice

-- print_characters('Bob')
-- * Friend and Foe *
-- Bob
-- nil

-- Any extra parameters are just ignored
-- print_characters('Joe', 'Alice', 'Bob')
-- * Friend and Foe *
-- Joe
-- Alice

-- Can explicitly create variadic functions,
-- Function with arbitary number of variables
-- Make the last parameter in function declaration an elipses ...
function print_characters(friend, ...)
    print('* Friend *')
    print(friend)

    foes = {...}
    print('* Foes *')
    print(foes[1])
    print(foes[2])
end

-- print_characters('Joe', 'Alice', 'Bob')
-- * Friend *
-- Joe
-- * Foes *
-- Alice
-- Bob

---- Tail calls ----
-- Lua has tail call optimization,
-- when you have recursive function whose recursive call is the very last thing it does
-- In many scripting languages this may cause stack error, but
-- Lua optimize recursive call into simple goto and complete the calculation
function reverse(s, t)
    if #s < 1 then return t end
    first = string.sub(s, 1, 1)
    rest = string.sub(s, 2, -1)
    return reverse(rest, first .. t)
end
large = string.rep('hello ', 10) -- concatinate string by 10 times
-- print(large) -- hello hello hello hello hello hello hello hello hello hello
-- print(reverse(large, '')) --  olleh olleh olleh olleh olleh olleh olleh olleh olleh olleh

---- Multiple return values ----
-- In Lua, function can return multiple values
function weapons()
    return "bullship", "revolver"
end

w1, w2 = weapons()
-- print(w1, w2) -- bullship        revolver

w1, w2, w3 = weapons()
-- print(w1, w2, w3) -- bullship        revolver        nil
-- Lua variables are gloabl by default.

function hypotenuse(a, b)
    a2 = a * a
    b2 = b * b
    return math.sqrt(a2 + b2)
end

-- hypotenuse(10, 15)

-- Variables declared inside function are vailable outside.
-- print(a2) -- 100

-- Create local variables to not leak variables outside

function hypotenuse(a, b)
    local a2 = a * a
    local b2 = b * b
    return math.sqrt(a2 + b2)
end

-- hypotenuse(10, 15)
-- print(a2) -- nil
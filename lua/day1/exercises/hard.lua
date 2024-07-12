function reduce(max, init, f)
    local intermediate = init
    for i = 1, max  do
        intermediate = f(intermediate, i)
    end
    return intermediate
end


function factorial(num)
    return reduce(num, 1, function (prev, next) return next * prev end)   
end
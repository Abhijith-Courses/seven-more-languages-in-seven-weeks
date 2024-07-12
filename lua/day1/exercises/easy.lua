function ends_in_3(num)
    return num % 10 == 3
end

function is_prime(num)
    if num <= 1 then
        return false
    elseif num <= 3 then
        return true
    elseif num % 2 == 0 or num % 3 == 0 then
        return false
    end
    
    local i = 5
    while i * i <= num do
        if num % i == 0 or num % (i + 2) == 0 then
            return false
        end
        i = i + 6
    end
    
    return true
end



function find_primes_ending_in_3(n)
    local count = 0
    local num = 3  -- Start checking from the first number ending in 3
    
    while count < n do
        if ends_in_3(num) and is_prime(num) then
            print(num)
            count = count + 1
        end
        num = num + 10  -- Check the next number ending in 3
    end
end
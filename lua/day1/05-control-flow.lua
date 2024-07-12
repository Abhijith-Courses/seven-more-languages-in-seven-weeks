---- if statement ----
-- if statement may have an else and one or more elseif
-- Lua doesn't return a value from if statement, you have store it to variables

film = "Skull"

if film == "Raiders" then
    print('Good')
elseif film == 'Temple' then
    print('Average')
elseif film == 'Crusade' then
    print('Great')
else
    print('Huh?')
end -- Huh?

---- For loop ----
-- for loop work over a series of numbers
for i= 1,10 do
    print(i)
end

-- With optional step argument
for i = 1, 10, 2 do
    print(i)
end
-- 1
-- 3
-- 5
-- 7
-- 9

-- for loop can be used for collections

--- While loop ----
while math.random(100) < 50  do
    print("Tails, flipping again")
end

---- repeat ----
-- Repeat the body unti condition is true
-- The test is run after body, so that body is executed atleast once
num = 10;
repeat
    print("From repeat body")
until num == 10
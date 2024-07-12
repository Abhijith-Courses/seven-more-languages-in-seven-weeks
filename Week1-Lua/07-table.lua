-- Tables are collection of keys with associated values
local book = {
    title = "Grail Diary",
    author = "Henry Johnes",
    pages = 100
}

-- use dot operator to get or set values of table
local title = book.title
-- print(title) -- Grail Diary

-- Add new item
book.stars = 4.5

-- Modify item
book.author = "Henry Jones Sr."

-- dot opertor cannot be used if keys have spaces or decimal points in them
-- use square brackets that time.
local author = book["author"]
-- print(author); -- Henry Jones Sr.

-- Table keys can be any datatype, booleans, numbers, functions or even other tables
-- Mostly string or numbers are used

-- Set nil value to key to remove and item
book.stars = nil

-- Loop through table
-- paris() is built in function in Lua.It's an iterator
-- paris() returns a new function which the for loop calls again and again unti it return nil
for key, value in pairs(book) do
    print(key, value)
end
-- author  Henry Jones Sr.
-- pages   100
-- title   Grail Diary
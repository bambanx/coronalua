-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
foo = "foo"; -- variable global es accesible en toda la app pero es mas lenta.

local bar = "bar"; -- mas rapidas que las globales

local fooBar = foo .. bar;

print( fooBar );

local one = 1;
local two = 2;
local three = one + two;
print(three);
local fooNess = fooBar .. three;
print(fooNess);


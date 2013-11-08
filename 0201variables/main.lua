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

foo = nil;
---------TABLES (ARRAYS)
local t = {"foo", "bar"};
print(t[2]); -- start from 1
print(#t); -- lenght
print(tostring(t)); -- name 
local hash = {
	foo = "foo",
	bar = "bar"
};

local hash = {}; -- other method 
hash.foo = "foo";
hash.bar = "bar";

print(hash["foo"]);
print(hash.foo);

local t = {
	{"Foo", "Bar"}, -- multidimentional
	{"hello", "there", "everyone"},
	foo = {							--ascoaiative
		bar = "nested barness!",
		vintage = 75
		}
};

print(t[1][2]); --Bar
print(t[2][2] .. ", " .. t[2][3]); --there, everyone
print(t.foo.vintage); -- asociative and return: 75

t = nil;  -- garbage

---------------------Functions
function doIt()
	print("Hello World");
end

function doIt(what)
	print(what);
end
doIt("Hello Men");

function sayHello(name,hello)
	print(name .. hello);
end

sayHello("Ivan"," Hello brother");

local foo = sayHello;
foo("Yenny", " Hello");

local two = function(what,where)
	print(what .. ", "..where)
end

two("Again", "and again");


local function lotsOfArgs(...)
	print(arg[1] .. " " .. arg[2]);
end
lotsOfArgs("Hmm..","I see");

local t = {};
t.doIt = function(what,where)
	print(what .. ", " .. where);
end
t.doIt("Corona","for apps");


t.addIt = function(uno,dos)
	return uno + dos; 
end
local tres = t.addIt(1,2);
print(tres);
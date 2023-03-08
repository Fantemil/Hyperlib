local Promise = loadstring(game:HttpGet("https://soggy-ware.cf/Modules/Promise.lua"))()

local variable = nil
local variable2 = 50

Promise:run(function()
 print(123 + 77 + variable)
end):catch(warn):andThen(function()
    print("Catching Error")
    variable = 50
    variable2 = nil
end):andThen(function()
    print(123 + 77 + variable)
end):andThen(function()
    print(variable2 + 19)
end):catch(warn):andThen(function()
    print("Catching Error 2")
    variable2 = 50
end):andThen(function()
    print(variable2 + 19)
end)

local function Hello()
    print("Hello")
end

local function Bye()
    print("Bye")
end

Promise:all({
    Hello(),
    Hello(),
    Bye()
}):andThen(function()
    print("Done1")
end):andThen(function()
    print("Done2")
end):andThen(function()
    print("Done3")
end)
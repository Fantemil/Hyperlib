--[[
Usage :

local clonefunction;
getgenv().clonefunction = function(new)
    local clonedFunction = function(...)
        return new(...)
    end
    return clonedFunction
end

a = clonefunction(print)
a("hi")

output : hi

]]

local clonefunction;
getgenv().clonefunction = function(new)
    local clonedFunction = function(...)
        return new(...)
    end
    return clonedFunction
end

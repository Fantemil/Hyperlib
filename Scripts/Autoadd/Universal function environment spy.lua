setfenv(1, setmetatable({}, {
    __index = function(t, ...)
        print("Function Indexed: "..(...))
        return getfenv()[...]
    end,
    __newindex = function(t, index, value)
        print("Function Created: " .. table.concat({index, tostring(value)}, ", "))
        return rawset(getfenv(), index, value)
    end
}))

function Players()
    return "Hi"
end

print(Players())
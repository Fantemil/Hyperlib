local length = 0
local old; old = hookfunction(ipairs, function(...)
    length = #{...}
    return old(...)
end)

local count = 0
local after = ""
local old; old = hookfunction(string.char, function(x)
    count = count + 1
    if count >= length then
        after = after .. old(x)
    end
    return old(x)
end)

-- loadstring here

repeat task.wait(0.1) until after ~= ""
local Box = game:GetService("CoreGui").VortexKey.KeySystem.TextBox
Box.ClearTextOnFocus = false
Box.Text = after
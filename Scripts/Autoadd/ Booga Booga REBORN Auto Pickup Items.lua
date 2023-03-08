local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local Toggled = false

-- Settings
local Keybind = "v" -- keybind to toggle


-- stuff
Mouse.KeyDown:Connect(function(Key)
    if Key == Keybind then
        if Toggled then
            Toggled = false
        else
            Toggled = true
            while Toggled and wait() do
                keypress(0x46)
                wait()
                keyrelease(0x46)
                wait()
            end
        end
    end
end)
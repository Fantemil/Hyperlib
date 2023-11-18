loadstring(game:HttpGet("https://gist.githubusercontent.com/Pstrw/3c489bebb942ad2bdeb8fd75c2fa4ed2/raw/2307aac0e78094b6a343c4c4afe9aac5b54ef269/ur"))();

local UserInputService = game:GetService("UserInputService")
local gui

repeat
    gui = game.CoreGui:FindFirstChild("dark_UI")
    wait()
until gui

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.LeftShift and game:GetService("Players").LocalPlayer then
        local currentEnabledValue = gui.Enabled
        gui.Enabled = not currentEnabledValue
    end
end)





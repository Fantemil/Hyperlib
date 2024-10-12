local Players = game:GetService("Players")
local player = Players.LocalPlayer
local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")

StarterGui:SetCore("SendNotification", {
    Title = "Notification Title"; -- your notification title
    Text = "Do you want to proceed?"; -- your text
    Icon = "rbxassetid://123456789"; -- icon image
    Duration = 10; -- how long in seconds it will be visible
    Button1 = "Yes";
    Button2 = "No";
})


UserInputService.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
    end
end)
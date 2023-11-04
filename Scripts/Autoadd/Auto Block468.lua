--PLEASE READ BIO FIRST!!!!
--working fine (9/7/2023)

local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

local keyState = false
local thing1 = game.Players.LocalPlayer.Character.HumanoidRootPart
local dis = 0

local slowMessage = {Title = "AutoBlock", Description = "Enabled Slow (Range 47), Press E for fast, "..thing1.Name}
local fastMessage = {Title = "AutoBlock", Description = "Enabled Fast (Range 80), Press E for slow, "..thing1.Name}

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.E then
        if keyState then
        	dis=90
        	thing1 = game.Players.LocalPlayer.Character.HumanoidRootPart
            Notification:Notify(fastMessage, {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 5, Type = "image"}, {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)})
        else
        	dis=47
        	thing1 = game.Players.LocalPlayer.Character.HumanoidRootPart
            Notification:Notify(slowMessage, {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 5, Type = "image"}, {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)})
        end
        keyState = not keyState
    end
end)

Notification:Notify({Title = "AutoBlock", Description = "Executed but not enabled, Press E"}, {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 5, Type = "image"}, {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)})
while true do
    wait()
while true do
    wait()
    local thing2 = game:GetService("Workspace").Balls
    for i,v in pairs(thing2:GetChildren()) do
        if v:IsA("Part") or v:IsA("MeshPart") then
           local distance = (v.Position - thing1.Position).magnitude 
           if distance <= dis then
               mouse1click()
           end
        end
	end
end
end
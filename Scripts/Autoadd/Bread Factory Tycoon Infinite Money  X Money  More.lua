local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

getgenv().autoUpgrade = false;

local w = library:CreateWindow("Bread Factory Tycoon") -- Creates the window
local b = w:CreateFolder("Main")

local x2multiplier = 9e9 -- amount of x2multiplier time, change this if u want more or less, dont change it into math.huge
local money = math.huge -- amount of cash u get, change this if u want more or less


b:Button("Infite Money",function()
game:GetService("ReplicatedStorage").RemoteEvents.ClaimReward:FireServer(x2multiplier,money,"fbjXcLN8NQk9ExFJH?x&&TkE3!xjxM")
end)

b:Toggle("Auto Upgrade",function(bool)
    getgenv().autoUpgrade = bool
    print("Auto Upgrade is: ", bool);
    if bool then
        autoUpgrade();

        end
end)



b:DestroyGui()

function autoUpgrade()
    spawn(function()
        while getgenv().autoUpgrade == true do
game:GetService("ReplicatedStorage").RemoteEvents.BuyModifier:FireServer("BakingModifiersBaking Speed")
wait()
game:GetService("ReplicatedStorage").RemoteEvents.BuyModifier:FireServer("BakingModifiersBaking Value")
wait()
game:GetService("ReplicatedStorage").RemoteEvents.BuyModifier:FireServer("BakingModifiersBaking Multiplier")
wait()
game:GetService("ReplicatedStorage").RemoteEvents.BuyModifier:FireServer("WrappingModifiersWrapping Speed")
wait()
game:GetService("ReplicatedStorage").RemoteEvents.BuyModifier:FireServer("WrappingModifiersWrapping Multiplier")
wait()
game:GetService("ReplicatedStorage").RemoteEvents.BuyModifier:FireServer("CollectorModifiersTray Limit")
wait()
game:GetService("ReplicatedStorage").RemoteEvents.BuyModifier:FireServer("Windmill1ModifiersDrop Speed")
wait()
game:GetService("ReplicatedStorage").RemoteEvents.BuyModifier:FireServer("Windmill1ModifiersWheat Value")
wait()
game:GetService("ReplicatedStorage").RemoteEvents.BuyModifier:FireServer("KneadingModifiersKneading Speed")
wait()
game:GetService("ReplicatedStorage").RemoteEvents.BuyModifier:FireServer("KneadingModifiersKneading Automation")
wait()
end
end)
end
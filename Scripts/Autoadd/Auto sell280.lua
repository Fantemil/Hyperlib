local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Auto Sell Script", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local MainTab = Window:MakeTab({
Name = "Main",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})
local Section = MainTab:AddSection({
Name = "Auto Sell"
})
-- Auto Sell Function
local function autoSell()
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Sell"):FireServer()
end
-- Auto Sell Toggle
local autoSellEnabled = false
local autoSellLoop
MainTab:AddToggle({
Name = "Auto Sell",
Default = false,
Callback = function(Value)
autoSellEnabled = Value
if autoSellEnabled then
autoSellLoop = spawn(function()
while autoSellEnabled do
autoSell()
wait(1) -- Adjust this delay as needed
end
end)
else
if autoSellLoop then
coroutine.close(autoSellLoop)
end
end
end
})
-- Sell Button (for testing)
MainTab:AddButton({
Name = "Sell Once",
Callback = function()
autoSell()
print("Sell function executed!")
print("Sell event fired: " .. game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Sell"):FireServer())
end
})
OrionLib:Init()
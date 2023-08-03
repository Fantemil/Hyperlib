local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local window = library.CreateLib("Novaz#5792", "BloodTheme")
local main = window:NewTab("Auto Farm")
local section = main:NewSection("Auto Farm")
local plr = game.Players.LocalPlayer
local cha = plr.Character
local hrp = cha.HumanoidRootPart

section:NewButton("Redeem Codes", "", function()
local args = {[1] = {[1] = "FREESTRENGTH"}}
game:GetService("ReplicatedStorage").Framework.Modules.Shared.Internal.Modules:FindFirstChild("2 | Network").Remotes.s_controller_redeemcode:InvokeServer(unpack(args))
wait()
local args = {[1] = {[1] = "HELL"}}
game:GetService("ReplicatedStorage").Framework.Modules.Shared.Internal.Modules:FindFirstChild("2 | Network").Remotes.s_controller_redeemcode:InvokeServer(unpack(args))
wait()
local args = {[1] = {[1] = "HEAVEN"}}
game:GetService("ReplicatedStorage").Framework.Modules.Shared.Internal.Modules:FindFirstChild("2 | Network").Remotes.s_controller_redeemcode:InvokeServer(unpack(args))
wait()
local args = {[1] = {[1] = "BELUGA"}}
game:GetService("ReplicatedStorage").Framework.Modules.Shared.Internal.Modules:FindFirstChild("2 | Network").Remotes.s_controller_redeemcode:InvokeServer(unpack(args))
end)

section:NewToggle("Auto Attack", "", function(a)
b = a 
while b and task.wait() do 
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do 
    if v:IsA("Tool") then 
        v:Activate()
    end 
end 
end 
end)

section:NewToggle("Auto Rebirth", "", function(lor)
por = lor 
while por and task.wait() do 
game:GetService("ReplicatedStorage").Framework.Modules.Shared.Internal.Modules:FindFirstChild("2 | Network").Remotes.s_controller_rebirth:InvokeServer({})
plr.PlayerGui.Main:FindFirstChild("Rebirth").Visible = false
end 
end)

section:NewToggle("Auto Egg", "", function(lpr)
lit = lpr 
while lit and task.wait() do
local args = {
    [1] = {
        [1] = p
    }
}
game:GetService("ReplicatedStorage").Framework.Modules.Shared.Internal.Modules:FindFirstChild("2 | Network").Remotes.s_controller_buyegg:InvokeServer(unpack(args))
end 
end)

section:NewDropdown("Select Egg", "", {"Beach Egg", "Forest Egg", "Dominus Egg", "Dragon Egg", "Alien Egg"}, function(l)
p = l
end)

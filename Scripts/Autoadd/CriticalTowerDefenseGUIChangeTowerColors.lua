--- Hi, I don't know why you're here but you've found me, good job, now please send help.

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "CTD - GUI", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
 Name = "Home",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})
OrionLib:MakeNotification({
 Name = "DeadTired Scripts",
 Content = "GUI Successfully Loaded!",
 Image = "rbxassetid://4483345998",
 Time = 5
})
print("life is better without you in it")
Tab:AddButton({
 Name = "Claim Daily Reward",
 Callback = function()
 game:GetService("Players").LocalPlayer.PlayerGui.Misc.DailyReward.RemoteFunction:InvokeServer()
   end    
})

Tab:AddButton({
 Name = "Change Tower Colors",
 Callback = function()
 game:GetService("Players").LocalPlayer.PlayerGui.Menu.OtherFrame.ColorsFrame.Mainframe.ColorsMain.RemoteEvent:FireServer("TowerColors")
 game:GetService("Players").LocalPlayer.PlayerGui.Menu.OtherFrame.Visible = true
 game:GetService("Players").LocalPlayer.PlayerGui.Menu.OtherFrame.ColorsFrame.Visible = true
   end    
})

local Secrets = Window:MakeTab({
 Name = "Secrets",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})
Secrets:AddButton({
 Name = "Hotrash",
 Callback = function()
 game:GetService("Players").LocalPlayer.PlayerGui.Misc.SecretLol["Hot Rash"].Value.Value.RemoteEvent:FireServer()
   end    
})
Secrets:AddButton({
 Name = "Ducky",
 Callback = function()
   local oh1 = CFrame.new(-3.13802170753479, -87.24002075195312, -42.540706634521484)
   local oh2 = game:GetService("Players")
   local oh3 = oh2.LocalPlayer.Character.HumanoidRootPart
   oh3.CFrame = oh1
   end    
})
local Teleport = Window:MakeTab({
 Name = "Teleport",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})
Teleport:AddButton({
 Name = "The Black Ordeal",
 Callback = function()
        local oh1 = CFrame.new(-10.736005783081055, 136.42710876464844, 226.3617401123047)
   local oh2 = game:GetService("Players")
   local oh3 = oh2.LocalPlayer.Character.HumanoidRootPart
   oh3.CFrame = oh1
 end    
})
Teleport:AddButton({
 Name = "Level 20+ Zone",
 Callback = function()
   local oh1 = CFrame.new(21.63866424560547, 8.7629976272583, 5.871577739715576)
   local oh2 = game:GetService("Players")
   local oh3 = oh2.LocalPlayer.Character.HumanoidRootPart
   oh3.CFrame = oh1
   end    
})

OrionLib:Init()
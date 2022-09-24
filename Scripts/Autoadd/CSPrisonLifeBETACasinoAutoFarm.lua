local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "CS Prison Life", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
 Name = "Main",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "Autofarm"
})

local Players = game:GetService("Players")
local Client = Players.LocalPlayer
     local function GetTool(Name)
      local Tool = Client.Backpack:FindFirstChild(Name)
      return Tool or Client.Character:FindFirstChild(Name)
   end
   local function TeleportChar(TeleportLocation)
      -- // Vars
      local Character = Client.Character
      local HumanoidRootPart = Character.HumanoidRootPart
      local Humanoid = Character.Humanoid

      -- // Credits to Stefanuk12
      for i = 1, 3 do
         HumanoidRootPart.CFrame = TeleportLocation
         wait(0.25)
         Humanoid:EquipTool(GetTool("Fists"))
      end
   end
   
Tab:AddToggle({
 Name = "Casino Autofarm!",
 Default = false,
 Callback = function(Value)
getgenv().AutoFarm = Value
if getgenv().AutoFarm then


OrionLib:MakeNotification({
 Name = "Info!",
 Content = "Autofarm is now on",
 Image = "rbxassetid://4483345998",
 Time = 3
})

end

while getgenv().AutoFarm do
for i,v in pairs(game:GetService("Workspace").Map.Casino:GetChildren()) do
if v.Main.Screen.Attachment:FindFirstChild("ProximityPrompt") and getgenv().AutoFarm then

TeleportChar(v.Main.Screen.CFrame  + v.Main.Screen.CFrame.LookVector *2)
wait()
fireproximityprompt(v.Main.Screen.Attachment:FindFirstChild("ProximityPrompt"))
wait(1)
if v.Main:FindFirstChild("SlotCash") and getgenv().AutoFarm then
TeleportChar(v.Main.Screen.CFrame  + v.Main.Screen.CFrame.LookVector *2)
repeat wait() 
for z,x in pairs(v.Main.SlotCash:GetDescendants()) do
pcall(function()
if x.Parent.Name == "SlotCash" then
fireproximityprompt(x.Attachment.ProximityPrompt)
wait(0.1)
end
end)
end
until v.Main:FindFirstChild("SlotCash") == nil or getgenv().AutoFarm == false
end

end
end

wait()

end
 end    
})
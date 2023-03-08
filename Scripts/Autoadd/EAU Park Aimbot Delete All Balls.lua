_G.Deleting = false
_G.NoTravel = false

local plr = game.Players.LocalPlayer
local rs = game:GetService("RunService")
local orion = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local eau = "rbxassetid://10172429528"
local window = orion:MakeWindow({
   Name = "EAU Park GUI",
   HidePremium = true,
   IntroEnabled = true,
   IntroText = "Welcome to the EAU Park GUI, by m_gnet",
   IntroIcon = eau,
   Icon = eau
})
local main = window:MakeTab({
   Name = "Main"
})
local aimbot = main:AddToggle({
   Name = "Aimbot",
   Default = false,
   Callback = function(v)
       _G.Aimbotting = v
   end
})
local loopDelete = main:AddToggle({
   Name = "Loop Delete All Balls",
   Default = false,
   Callback = function(v)
       _G.Deleting = v
   end
})
local nt = main:AddToggle({
   Name = "No Travel",
   Default = false,
   Callback = function(v)
       _G.NoTravel = v
   end
})
local ws = main:AddSlider({
   Name = "WalkSpeed",
   Min = 0,
   Max = 100,
   Default = 16,
   Color = Color3.fromRGB(255, 200, 255),
   Increment = 1,
   Callback = function(v)
       if plr.Character and plr.Character:FindFirstChild("Humanoid") then
           plr.Character.Humanoid.WalkSpeed = v
       end
   end
})
local jp = main:AddSlider({
   Name = "JumpPower",
   Min = 0,
   Max = 250,
   Default = 50,
   Color = Color3.fromRGB(255, 200, 255),
   Increment = 1,
   Callback = function(v)
       if plr.Character and plr.Character:FindFirstChild("Humanoid") then
           plr.Character.Humanoid.JumpPower = v
       end
   end
})
local delete = main:AddButton({
   Name = "Delete All Balls",
   Callback = function()
       for i,v in pairs(workspace:GetDescendants()) do
           if v.Name == "Basketball" then
               v.shoot_event:FireServer(
                   Vector3.new(9e9, 9e9, 9e9),
                   Vector3.new(9e9, 9e9, 9e9),
                   "\240\159\148\165\240\159\148\165"
               )
           end
       end
   end
})
local rws = main:AddButton({
   Name = "Reset WalkSpeed",
   Callback = function()
       if plr.Character and plr.Character:FindFirstChild("Humanoid") then
           plr.Character.Humanoid.WalkSpeed = 16
           ws:Set(16)
       end
   end
})
local rjp = main:AddButton({
   Name = "Reset JumpPower",
   Callback = function()
       if plr.Character and plr.Character:FindFirstChild("Humanoid") then
           plr.Character.Humanoid.JumpPower = 50
           jp:Set(50)
       end
   end
})

local hook; hook = hookmetamethod(game, "__index", newcclosure(function(self, idx)
   if self:IsA("Humanoid") and idx == "WalkSpeed" then
       return 16
   elseif self:IsA("Humanoid") and idx == "JumpPower" then
       return 50
   end
   return hook(self, idx)
end))
local hook2; hook2 = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
   if tostring(self):lower() == "travel" and _G.NoTravel then
       return
   end
   return hook2(self, ...)
end))
rs.Stepped:Connect(function()
   if _G.Deleting then
       for i,v in pairs(game.Players:GetPlayers()) do
           if v.Name ~= plr.Name and v.Character and v.Character:FindFirstChild("Basketball") then
               local ball = v.Character.Basketball
               ball.shoot_event:FireServer(
                   Vector3.new(9e9, 9e9, 9e9),
                   Vector3.new(9e9, 9e9, 9e9),
                   "\240\159\148\165\240\159\148\165"
               )
           end
       end
       for i,v in pairs(workspace:GetChildren()) do
           if v.Name == "Basketball" then
               v.shoot_event:FireServer(
                   Vector3.new(9e9, 9e9, 9e9),
                   Vector3.new(9e9, 9e9, 9e9),
                   "\240\159\148\165\240\159\148\165"
               )
           end
       end
   end
end)
orion:Init()
loadstring(game:HttpGet("https://pastebin.com/raw/8YZFEwBv"))()
local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local humrp = char.HumanoidRootPart

if game.GameId == 3057370181 then 
local Window = Library:CreateWindow({
    Title = "Script Owner : mxkxkks | RB World 4", Center  = true, AutoShow = true
})



local Tabs = {Main = Window:AddTab("Main"), Misc = Window:AddTab("Misc"),   ['UI Settings'] = Window:AddTab('UI Settings')}

local MiscBox = Tabs.Misc:AddLeftGroupbox("Misc")

local AimbotBox = Tabs.Main:AddLeftGroupbox("Aimbot")
local Blocking = Tabs.Main:AddRightGroupbox("Auto-Blocking")
local Other = Tabs.Main:AddLeftGroupbox("Other")

---- 
--Misc 


MiscBox:AddButton("Rejoin",function()
    local ts = game:GetService("TeleportService")
ts:Teleport(game.PlaceId, plr)
    end)
----------

local AimbotSettings = {toggled,meter,AimbotLoop}
local BlockSettings = {db,BlockLoop}
local MagLoop 
local RS = game.RunService
local Remote = game:GetService("ReplicatedStorage").GameEvents.ClientAction or nil
----------------- 
-- functions
local function block(bool)
 local plrs = game.Players
    if not BlockSettings.BlockLoop and not bool then return end
 BlockSettings.BlockLoop = RS.Stepped:Connect(function()
  char:SetAttribute("CanPickUp",true)
  for i,v in pairs(plrs:GetChildren()) do 
   if v:IsA("Player") then
   local vchar = v.Character
   if not BlockSettings.db and (v.Character.HumanoidRootPart.Position-humrp.Position).Magnitude <= 9 and vchar:GetAttribute("Shooting") or (v.Character.HumanoidRootPart.Position-humrp.Position).Magnitude <= 3 and vchar:GetAttribute("Passing") then  
            BlockSettings.db = true
   Remote:FireServer("Jump")
   task.wait(3)
   BlockSettings.db = false
   end
   end
  end
 end)
end 

local function shoot(bool)
    if not AimbotSettings.AimbotLoop and not bool then return end
 if not bool then AimbotSettings.AimbotLoop:Disconnect() return end 
 
 AimbotSettings.AimbotLoop = RS.Stepped:Connect(function()
  if char:GetAttribute("ShotMeter") >= AimbotSettings.meter and char:GetAttribute("ShotMeter") ~= 2 then 
   Remote:FireServer("Shoot",false)
    end
       
 end)
 
end 

local function ballmag(bool)
    if not MagLOOP and not bool then return end
 if not bool then MagLOOP:Disconnect() return end 
 local hb = char.HitBox 
 
 MagLOOP = RS.Stepped:Connect(function()
        char:SetAttribute("TouchDebounce",true)
 for i,v in pairs(workspace:GetChildren()) do 
  if v.Name == "Basketball" and v:IsA("Part") then 
   firetouchinterest(humrp,v,0)
   firetouchinterest(humrp,v,1)
   firetouchinterest(hb,v,0)
   firetouchinterest(hb,v,1)
  end
 end
 end)
end 

---------------
-- AimbotBox
AimbotBox:AddToggle("Aimbot",{
    Text = "Auto-Aim", Default = false, Tooltip = "Stop Meter at..(works with no meter)"
})

Toggles.Aimbot:OnChanged(function()
    print(12333)
    shoot(Toggles.Aimbot.Value)
 end)

AimbotBox:AddSlider("AimbotMeter",{
    Text = "Shot Meter % (Rec. 50-60 Ping 70%",
    Default = 70,
    Min = 0, 
    Max = 100, 
    Rounding = 0,
    Compact  = false
})

Options.AimbotMeter:OnChanged(function()
AimbotSettings.meter = Options.AimbotMeter.Value*.01
    end)
------ 
Other:AddToggle("Hitbox",{Text = "Show Hitbox",Default = false, Tooltip = "Shows your bump hitbox"})

Toggles.Hitbox:OnChanged(function()
    local bool = Toggles.Hitbox.Value
    if bool then
  char:WaitForChild("HitBox",10).Color = Color3.fromRGB(116, 134, 157)
  char:WaitForChild("HitBox",10).Material = "ForceField"
 char:WaitForChild("HitBox",10).Transparency = 0
 else
  char:WaitForChild("HitBox",10).Transparency = 1 
 end
end)


Other:AddToggle("Contest",{Text = "Show Contested",Default = false, Tooltip = "Shows your Contested Range"})

Toggles.Contest:OnChanged(function()
    local bool = Toggles.Contest.Value
    if bool then
  char:WaitForChild("Pad",10).Color = Color3.fromRGB(116, 134, 157)
 char:WaitForChild("Pad",10).Transparency = 0
 else
  char:WaitForChild("Pad",10).Transparency = 1 
 end
end)


Other:AddToggle("BallMag",{Text = "Ball Mag",Default = false, Tooltip = "Small Ball Mag for rebounding"})

Toggles.BallMag:OnChanged(function()
    local bool = Toggles.BallMag.Value
    ballmag(bool)
end)
-----
Blocking:AddToggle("AutoBlock",{Text = "Auto-Block",Default = false,Tooltip = "Auto Block and the meter level to jump at"})

Toggles.AutoBlock:OnChanged(function()
    local bool = Toggles.AutoBlock.Value
    block(bool)
end)

Blocking:AddSlider("BlockMeter",{Text = "Block Meter",Default = 0, Min =0,Max = 100, Rounding = 0, Compact = false})

Options.BlockMeter:OnChanged(function()
    BlockSettings.BlockMeter = Options.BlockMeter.Value
end)
else

end 
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/cerberus.lua"))()

local window = Library.new("CheckerHub V5")

local tab = window:Tab("Main")

local section = tab:Section("Sliders")

section:Slider("Speed", function(val)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val
end)

section:Slider("JumpPower", function(val)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = val
end)

section:Slider("Gravity", function(val)
   game.Players.LocalPlayer.Character.Humanoid.Gravity = val
end)

local section = tab:Section("ESP")

section:Button("ESP - white", function()
   local FillColor = Color3.fromRGB(255,255,255)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineColor = Color3.fromRGB(255,255,255)
local OutlineTransparency = 0

local CoreGui = game:FindService("CoreGui")
local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local function Highlight(plr)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = plr.Name
    Highlight.FillColor = FillColor
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = 0
    Highlight.Parent = Storage
    
    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
    end

    connections[plr] = plr.CharacterAdded:Connect(function(char)
        Highlight.Adornee = char
    end)
end

Players.PlayerAdded:Connect(Highlight)
for i,v in next, Players:GetPlayers() do
    Highlight(v)
end

Players.PlayerRemoving:Connect(function(plr)
    local plrname = plr.Name
    if Storage[plrname] then
        Storage[plrname]:Destroy()
    end
    if connections[plr] then
        connections[plr]:Disconnect()
    end
end)
end)

section:Button("ESP - green", function()
   local FillColor = Color3.fromRGB(12,240,73)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineColor = Color3.fromRGB(12,240,73)
local OutlineTransparency = 0

local CoreGui = game:FindService("CoreGui")
local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local function Highlight(plr)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = plr.Name
    Highlight.FillColor = FillColor
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = 0
    Highlight.Parent = Storage
    
    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
    end

    connections[plr] = plr.CharacterAdded:Connect(function(char)
        Highlight.Adornee = char
    end)
end

Players.PlayerAdded:Connect(Highlight)
for i,v in next, Players:GetPlayers() do
    Highlight(v)
end

Players.PlayerRemoving:Connect(function(plr)
    local plrname = plr.Name
    if Storage[plrname] then
        Storage[plrname]:Destroy()
    end
    if connections[plr] then
        connections[plr]:Disconnect()
    end
end)
end)

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/cerberus.lua"))()

local window = Library.new("CheckerHub V5")

local tab = window:Tab("Main")

local section = tab:Section("Sliders")

section:Slider("Speed", function(val)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val
end)

section:Slider("JumpPower", function(val)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = val
end)

section:Slider("Gravity", function(val)
   game.Players.LocalPlayer.Character.Humanoid.Gravity = val
end)

local section = tab:Section("AimBots")

section:Button("KAT", function()
   getgenv().silentaim_settings = {
   fov = 150,
   hitbox = "Head",
   fovcircle = true,
}
-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
 
-- Player
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()
local CurrentCamera = workspace.CurrentCamera
 
local function GetClosest(Fov)
   local Target, Closest = nil, Fov or math.huge
 
   for i,v in pairs(Players:GetPlayers()) do
       if (v.Character and v ~= Player and v.Character:FindFirstChild(getgenv().silentaim_settings.hitbox)) then
           local Position, OnScreen = CurrentCamera:WorldToScreenPoint(v.Character[getgenv().silentaim_settings.hitbox].Position)
           local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
 
           if (Distance < Closest and OnScreen) then
               Closest = Distance
               Target = v
           end
       end
   end
 
   return Target
end
 
local Target
local CircleInline = Drawing.new("Circle")
local CircleOutline = Drawing.new("Circle")
RunService.Stepped:Connect(function()
   CircleInline.Radius = getgenv().silentaim_settings.fov
   CircleInline.Thickness = 2
   CircleInline.Position = Vector2.new(Mouse.X, Mouse.Y + 36)
   CircleInline.Transparency = 1
   CircleInline.Color = Color3.fromRGB(255, 255, 255)
   CircleInline.Visible = getgenv().silentaim_settings.fovcircle
   CircleInline.ZIndex = 2
 
   CircleOutline.Radius = getgenv().silentaim_settings.fov
   CircleOutline.Thickness = 4
   CircleOutline.Position = Vector2.new(Mouse.X, Mouse.Y + 36)
   CircleOutline.Transparency = 1
   CircleOutline.Color = Color3.new()
   CircleOutline.Visible = getgenv().silentaim_settings.fovcircle
   CircleOutline.ZIndex = 1
 
   Target = GetClosest(getgenv().silentaim_settings.fov)
end)
 
local Old; Old = hookmetamethod(game, "__namecall", function(Self, ...)
   local Args = {...}
 
   if (not checkcaller() and getnamecallmethod() == "FindPartOnRayWithIgnoreList") then
       if (table.find(Args[2], workspace.WorldIgnore.Ignore) and Target and Target.Character) then
           local Origin = Args[1].Origin
 
           Args[1] = Ray.new(Origin, Target.Character[getgenv().silentaim_settings.hitbox].Position - Origin)
       end
   end
 
   return Old(Self, unpack(Args))
end)
end)

window:LockScreenBoundaries(true)
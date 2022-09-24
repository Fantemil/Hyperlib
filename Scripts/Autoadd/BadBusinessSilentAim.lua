getgenv().silentaim_settings = {
   fov = 150,
   hitbox = "Head",
   fovcircle = true
}

-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Modules
local Ts = require(ReplicatedStorage.TS)

-- Player
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()
local CurrentCamera = workspace.CurrentCamera

-- Get Closest
local function GetClosest(Fov)
   local Target, Closest = nil, Fov or math.huge

   for i,v in pairs(Players:GetPlayers()) do
       local Character = Ts.Characters:GetCharacter(v)

       if (v and Character and v ~= Player and Character.Hitbox and Character.Hitbox:FindFirstChild(getgenv().silentaim_settings.hitbox)) then
           local Position, OnScreen = CurrentCamera:WorldToScreenPoint(Character.Hitbox[getgenv().silentaim_settings.hitbox].Position)
           local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude

           if (Distance < Closest and OnScreen) then
               Closest = Distance
               Target = v
           end
       end
   end

   return Target
end

-- Define target and draw circle
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

-- Main hooking
local Old; Old = hookmetamethod(game, "__namecall", function(Self, ...)
   local Args = {...}

   if (not checkcaller() and Target and Self.Name == "Projectiles") then
       Character = Ts.Characters:GetCharacter(Target)

       if (Character and Character.Hitbox and Character.Hitbox[getgenv().silentaim_settings.hitbox] and Args[1] == "__Hit") then
           Args[3] = Character.Hitbox[getgenv().silentaim_settings.hitbox].Position
           Args[4] = Character.Hitbox[getgenv().silentaim_settings.hitbox]
       end
   end

   return Old(Self, unpack(Args))
end)
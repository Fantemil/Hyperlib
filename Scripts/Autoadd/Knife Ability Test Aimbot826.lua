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

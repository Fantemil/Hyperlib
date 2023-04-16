--[[
   Made by Rileyy#0808
   Not many people play this but I found it fun
   D-DAY Silent Aim.lua
]]


--// Variables
local Players = game:GetService('Players')
local RunService = game:GetService('RunService')
local UserInputService = game:GetService('UserInputService')

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local CurrentCamera = workspace.CurrentCamera

local framework = require(game:GetService('ReplicatedStorage'):WaitForChild('Modules'):WaitForChild('Universal'):WaitForChild('Framework'))
local old

--// Tables
local Client = {}
local Drawings = {
   Drawing.new('Circle'),
   Drawing.new('Circle')
}

--// FOV
Drawings[1].Color = Color3.fromRGB(248, 200, 220)
Drawings[1].Thickness = 2
Drawings[1].Visible = true
Drawings[1].Radius = 150

Drawings[2].Thickness = 4
Drawings[2].Visible = true
Drawings[2].Radius = 150
Drawings[2].ZIndex = -1

UserInputService.InputChanged:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseMovement then
       Drawings[1].Position = UserInputService:GetMouseLocation()
       Drawings[2].Position = UserInputService:GetMouseLocation()
   end
end)

--// Functions
local hooked = function(...)
   local args = {...}
   if Client.Target ~= nil and Client.Target:FindFirstChild('Head') and LocalPlayer.Character then
       print(args[3], 'Old')
       args[3] = CFrame.new(LocalPlayer.Character.Head.Position, Client.Target.Head.Position).LookVector
       print(args[3])
   end

   return old(unpack(args))
end

--// Loops

RunService.PostSimulation:Connect(function()
   local MousePosition = UserInputService:GetMouseLocation()
   Client.Target = nil
   Client.TargetDistance = Drawings[1].Radius

   for _, player in next, Players:GetChildren() do

       local character = player.Character
       local Humanoid = character and character:FindFirstChildWhichIsA('Humanoid')
       local HumanoidRootPart = character and character:FindFirstChild('HumanoidRootPart')

       if not Humanoid or not HumanoidRootPart then
           continue
       end

       if Humanoid.Health <= 0 then
           continue
       end

       if player.Team == LocalPlayer.Team then
           continue
       end

       local ScreenPosition, ScreenVisible = CurrentCamera:WorldToViewportPoint(HumanoidRootPart.Position)
       local MouseDistance = (MousePosition - Vector2.new(ScreenPosition.X, ScreenPosition.Y)).magnitude

       if MouseDistance < Client.TargetDistance then
           Client.Target = character
           Client.TargetDistance = MouseDistance
       end
   end
end)

old = hookfunction(framework.modules.Raycast, function(...)
   return hooked(...)
end)
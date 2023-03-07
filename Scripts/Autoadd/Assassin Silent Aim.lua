--[[
   Assassin Silent Aim.lua
   Made by Rileyy#0808
]]

--// Variables
local Players = game:GetService('Players')
local RunService = game:GetService('RunService')
local UserInputService = game:GetService('UserInputService')

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local CurrentCamera = workspace.CurrentCamera

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
function IsVisible(position, model)
   local ray = Ray.new(CurrentCamera.CFrame.p, CFrame.new(CurrentCamera.CFrame.p, position).LookVector * 10000)
   local hit, position, normal = workspace:FindPartOnRayWithIgnoreList(ray, {LocalPlayer.Character, CurrentCamera})
   if not hit then
       return false
   end
   return hit:IsDescendantOf(model), hit, position, normal
end

--// Loops

RunService.PostSimulation:Connect(function()
   local MousePosition = UserInputService:GetMouseLocation()
   Client.Target = nil
   Client.TargetDistance = Drawings[1].Radius

   for _, player in next, Players:GetChildren() do

       local character = workspace:FindFirstChild(player.Name)
       local Humanoid = character and character:FindFirstChildWhichIsA('Humanoid')
       local HumanoidRootPart = character and character:FindFirstChild('HumanoidRootPart')

       if not Humanoid or not HumanoidRootPart then
           continue
       end

       if Humanoid.Health <= 0 then
           continue
       end

       -- if not IsVisible(HumanoidRootPart.Position, player.Character) then
       --     continue
       -- end

       local ScreenPosition, ScreenVisible = CurrentCamera:WorldToViewportPoint(HumanoidRootPart.Position)
       local MouseDistance = (MousePosition - Vector2.new(ScreenPosition.X, ScreenPosition.Y)).magnitude

       if MouseDistance < Client.TargetDistance then
           Client.Target = character
           Client.TargetDistance = MouseDistance
       end
   end
end)

--// Hooks

local index ; index = hookmetamethod(game, '__index', function(obj, idx)

   if idx:lower() == 'unitray' and Client.Target then
       local origin = index(obj, idx)
       return {
           Origin = origin.Origin,
           Direction = CFrame.new(origin.Origin, Client.Target.HumanoidRootPart.Position).LookVector
       }
   end

   return index(obj, idx)
end)

--// Notify :3
game.StarterGui:SetCore('SendNotification', {
   Title = 'Loaded';
   Text = 'Made by Rileyy#0808';
   Duration = 3;
})
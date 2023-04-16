--[[
   Made by Rileyy#0808
   FiveDuels silent aim.lua
   as for prediction, use basic velocity prediction sets, 0.1377 works pretty well though
]]

getgenv().user_settings = {
   enabled = true,
   hitbox = 'HumanoidRootPart',

   fov_radius = 200,
   prediction = 0.1377 -- you can use this or 0,
}

--// VARIABLES
local players = game:GetService('Players')
local runservice = game:GetService('RunService')
local userinputservice = game:GetService('UserInputService')

local current_camera = workspace.CurrentCamera
local local_player = players.LocalPlayer
local mouse = local_player:GetMouse()

local client = {}

local fov_circle = Drawing.new('Circle')
fov_circle.Visible = true
fov_circle.Color = Color3.new(1, 1, 1)
fov_circle.Thickness = 1



runservice.PostSimulation:Connect(function()
   local mouse_position = userinputservice:GetMouseLocation()
   
   fov_circle.Radius = user_settings.fov_radius
   fov_circle.Position = mouse_position

   client.target = nil
   client.target_distance = fov_circle.Radius

   for _, player in next, players:GetChildren() do
       local humanoidrootpart = player.Character and player.Character:FindFirstChild('HumanoidRootPart')
       local humanoid = player.Character and player.Character:FindFirstChildWhichIsA('Humanoid')

       if not humanoidrootpart or not humanoid then
           continue
       end

       if humanoid.Health <= 0 then
           continue
       end

       local screen_position, screen_visible = current_camera:WorldToViewportPoint(humanoidrootpart.Position); screen_position = Vector2.new(screen_position.X, screen_position.Y)
       local mouse_distance = (screen_position - mouse_position).magnitude

       if not screen_visible then
           continue
       end

       if mouse_distance < client.target_distance then
           client.target = player
           client.target_distance = mouse_distance
       end
   end
end)

local namecall; namecall = hookmetamethod(game, '__namecall', function(obj, ...)
   local args = {...}
   local method = getnamecallmethod()

   if method == 'FireServer' and obj.Name == 'RemoteEvent' and args[1] == 'shoot' and client.target and client.target.Character[user_settings.hitbox] then
       args[2][1] = client.target.Character[user_settings.hitbox].Position + (client.target.Character.HumanoidRootPart.Velocity * user_settings.prediction)
   end

   return namecall(obj, unpack(args))
end)
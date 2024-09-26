-- this netless script is not mine it's made by others I don't know how to code netless
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(-30,0,0)
end)
end
end

game:GetService("StarterGui"):SetCore("SendNotification", { 
    Title = "Notification";
    Text = "Netless Ran";
    Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 16;

local Terrain = workspace.Terrain
local Lighting = game:GetService("Lighting")

Terrain.WaterWaveSize = 0
Terrain.WaterWaveSpeed = 0
Terrain.WaterReflectance = 0
Terrain.WaterTransparency = 0

Lighting.GlobalShadows = false
Lighting.FogEnd = 9e9 -- Maksymalna wartoÅÄ mgÅy
Lighting.Brightness = 0 

for _, child in pairs(workspace:GetDescendants()) do
    if child:IsA("BasePart") and child.Name ~= "Terrain" then
        child.Material = Enum.Material.Plastic
        child.Reflectance = 0
    elseif child:IsA("Decal") or child:IsA("Texture") then
        child:Destroy()
    elseif child:IsA("ParticleEmitter") or child:IsA("Fire") or child:IsA("Smoke") then
        child.Enabled = false
    elseif child:IsA("Explosion") then
        child.Visible = false
    end
end
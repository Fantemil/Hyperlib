local opath = game:GetService("Workspace").Ores
local loc = opath.Prairie --Desert, Forest, Savanna, PrairieCave, ForestCave, DeepDesertCave, VolcanoQuarry, MountainUpper, DeepDesert, BearIsland, Underground, MountainLower...

function addESP(part, text, color)
gui = Instance.new("BillboardGui", part)
esp = Instance.new("TextLabel", gui)
gui.Name = "Esp"
gui.ResetOnSpawn = false
gui.AlwaysOnTop = true;
gui.LightInfluence = 0;
gui.Size = UDim2.new(1.75, 0, 1.75, 0)
gui.MaxDistance = -1

esp.Text = text
esp.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
esp.BorderSizePixel = 4
esp.BorderColor3 = Color3.new(0, 255, 255)
esp.BorderSizePixel = 0
esp.Font = "GothamSemibold"
esp.TextSize = 8
esp.TextColor3 = color
end
_G.espEnabled = true
while _G.espEnabled do
for i,v in pairs(loc:GetDescendants()) do
if v:IsA("Part") and v.Name ~= "Part" and v.Name ~= "Base"  then
        if v:FindFirstChild("Esp") == nil then
            addESP(v, v.Name, v.Color)
            else
   distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude
 
   v.Esp.TextLabel.Text = v.Name .. " (" .. math.floor(distance) .. ")   "
end
end
end
wait()
end
if _G.espEnabled == false then
   ores = game:GetService("Workspace").Ores.Prairie:GetDescendants()
   for i,v in pairs(ores) do
       if v:IsA("Part") then
           if v:FindFirstChild("Esp") then v:FindFirstChild("Esp"):Destroy()
               
           end
       end
   end
end
while wait do
   wait()
for i, v in pairs(game:GetService("Workspace").Map.Warp.WarpRoom:GetChildren()) do
if v.Name == "Warp" then

local ohBoolean2 = false
local ohString3 = "I am second"
local ohString4 = "This pops up before the other one"

game:GetService("ReplicatedStorage").Remote.CreateRoom:FireServer(v, ohBoolean2, ohString3, ohString4)
end
end
end
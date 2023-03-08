_G.Run = true -- set this to false to stop auto farm
local ws = game.Workspace
local player = game.Players.LocalPlayer
local Character = char
local cone = game:GetService("Workspace")["Traffic Cone"]

function GoToGold()
while _G.Run == true do
for i, v in pairs(ws.Coins:GetDescendants()) do
   wait(0.001)
   if v.Name == "Coin" then
       if v:IsA("Part") then
           player.Character.HumanoidRootPart.CFrame = v.CFrame
       end
   end
end
player.Character.HumanoidRootPart.CFrame = cone.CFrame
wait(1)
end
end

game.Players.LocalPlayer.CharacterAdded:connect(function(char)
if _G.Run == true then
wait(2)
GoToGold()
end
end)

GoToGold()
local plr = game.Players.LocalPlayer
local rs = game:GetService("ReplicatedStorage")

function clone()
    local rifle = rs.Config.M40A5.M40A5:Clone()
    rifle.Parent = rs.Config.M40A5

    local pistol = rs.Config.ChimanoSubcompact.ChimanoSubcompact:Clone()
    pistol.Parent = rs.Config.ChimanoSubcompact
end

clone()

rs.Config.ChimanoSubcompact.ChimanoSubcompact.Parent = game:GetService("Players").LocalPlayer.Backpack
task.wait()
rs.Config.M40A5.M40A5.Parent = game:GetService("Players").LocalPlayer.Backpack

while true do -- inf ammo
for _,v in pairs(game:GetService("Workspace").AmmoReserveFillers:GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(plr.Character.HumanoidRootPart, v.Parent, 0)
wait(1)
firetouchinterest(plr.Character.HumanoidRootPart, v.Parent, 1)
end
end
task.wait(0.03)
end
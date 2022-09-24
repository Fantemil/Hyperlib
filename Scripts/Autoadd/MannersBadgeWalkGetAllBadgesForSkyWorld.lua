local time_wait = 0.00001 --wait time each badge
local Plr = game:GetService("Players").LocalPlayer
local todo = game:GetService("Workspace").Badges2:GetChildren()
for i,v in pairs(todo) do
    local Pos = todo[i].Position
    Plr.character.HumanoidRootPart.CFrame = CFrame.new(Pos)
    wait(time_wait)
end
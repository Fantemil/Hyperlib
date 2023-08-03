local steps = {}
local lp = game.Players.LocalPlayer
local function getroot()
    if lp.Character then
        return lp.Character:WaitForChild'HumanoidRootPart'
    else
        lp.CharacterAdded:wait()
        return lp.Character:WaitForChild'HumanoidRootPart'
    end
end
-- get stair steps
for i,v in pairs(game:GetService("Workspace").Stairs:GetDescendants()) do
    if v.Name == "TouchInterest" then
        table.insert(steps,v.Parent)
    end
end

local function touch(part)
    firetouchinterest(getroot(),part,1)
    firetouchinterest(getroot(),part,0)
end
while wait() do
    for i,v in pairs(steps) do
        touch(v)
    end
end
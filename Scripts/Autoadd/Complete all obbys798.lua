local lp = game.Players.LocalPlayer
local function getroot()
    if lp.Character then
        return lp.Character:WaitForChild'HumanoidRootPart'
    else
        lp.CharacterAdded:wait()
        return lp.Character:WaitForChild'HumanoidRootPart'
    end
end
local function touch(part)
    firetouchinterest(getroot(),part,1)
    firetouchinterest(getroot(),part,0)
end
touch(game:GetService("Workspace").Easy:FindFirstChild("TouchInterest",true).Parent)
touch(game:GetService("Workspace").MediumObby:FindFirstChild("TouchInterest",true).Parent)
touch(game:GetService("Workspace").HardObby:GetChildren()[28])
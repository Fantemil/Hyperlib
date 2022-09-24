repeat wait() until game:IsLoaded()

local Character = game:GetService("Players").LocalPlayer.Character
local RootPart = Character:WaitForChild("HumanoidRootPart", 10)

for i = 1, 700 do
    if RootPart then
        RootPart.CFrame = game:GetService("Workspace")[i].CFrame
        task.wait(0.19)
    end
end
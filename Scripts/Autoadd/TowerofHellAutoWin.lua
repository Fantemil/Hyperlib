local P = game:GetService'Players'
local HRP = P.LocalPlayer.Character.HumanoidRootPart
local Sections = game:GetService("Workspace").tower.sections

for _, Child in next, Sections:GetChildren() do
    if Child.Name ~= "start" then
        HRP.CFrame = Child.start.CFrame + Vector3.new(1,2,1)
        task.wait()
    end
end
HRP.CFrame = Sections.finish.FinishGlow.CFrame
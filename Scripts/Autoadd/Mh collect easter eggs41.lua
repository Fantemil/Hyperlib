local Workspace = game:GetService("Workspace")
local Easter = Workspace.Easter
local easterthing = Easter:FindFirstChild("EASTER ISLAND EGG SPAWNS")
local mapthing = Workspace.Map:FindFirstChild("EGG_SPAWNS")

if easterthing then
    for i, v in ipairs(easterthing:GetChildren()) do
        if #v:GetChildren() > 0 then
            for _, child in ipairs(v:GetChildren()) do
                print(child.Name)
                child:FindFirstChild("ProximityPrompt")
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = child.CFrame
                task.wait(.5)
                fireproximityprompt(child.ProximityPrompt)
                wait(.5)
            end
        end
    end
end

if mapthing then
    for i, v in ipairs(mapthing:GetChildren()) do
        if #v:GetChildren() > 0 then
            for _, child in ipairs(v:GetChildren()) do
                print(child.Name)
                child:FindFirstChild("ProximityPrompt")
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = child.CFrame
                task.wait(.5)
                fireproximityprompt(child.ProximityPrompt)
                wait(.5)
            end
        end
    end
end
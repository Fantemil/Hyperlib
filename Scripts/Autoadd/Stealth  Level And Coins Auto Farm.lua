--variables
local me = game.Players.LocalPlayer
local you = game:GetService("Workspace").Towns.Cascano.Civilians.Civilian
local multiplier = 20

--crowd blend
me.Character.CrowdBlend:FireServer(true)

--pickpocket
for _,v in pairs(you:GetChildren()) do
    if v.Name == 'UpperTorso' and v.ClassName == 'MeshPart' then        
        for i = 1, multiplier do
            spawn(function()
                while task.wait() do
                    fireproximityprompt(v.LootPart.PickpocketPrompt)
                end
            end)
        end
    end
end

--tp
while task.wait() do
    me.Character.HumanoidRootPart.CFrame = you.HumanoidRootPart.CFrame
end
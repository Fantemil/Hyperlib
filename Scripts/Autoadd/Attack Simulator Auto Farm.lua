_G.Toggle = true -- Set this to true or false, If you need help with this I lost hope in you
_G.Areas = "Spawn" -- Spawn, GetService
_G.Hp = 100 -- Put your Hp Of the Mob YOu Wish To Farm (Must Be Real Numbers)
_G.Delay = 3 -- Recommend a high number since this is a shitty type farm
while _G.Toggle do wait(0)
for i,v in pairs(game:GetService("Workspace")["__AREAS"][_G.Areas]:GetDescendants()) do
    if v.ClassName == "MeshPart" then
        if v.Health.Value < _G.Hp then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            wait(_G.Delay)
        end
    end
end
end
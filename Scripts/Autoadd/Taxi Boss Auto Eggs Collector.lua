_G.eggs = true
while _G.eggs do
    wait()
    pcall(function()
for i,v in pairs(game:GetService("Workspace").Easter.EggHunt:GetDescendants()) do
    if v.Name == "EggPrompt"  then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
wait(5)
        fireproximityprompt(v)
        wait(0.1)
    end
end
end)
end
if _G.toggle == true then
    _G.toggle = false
    return
end
_G.toggle = true
while _G.toggle do wait()
    game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 200
    for i,v in pairs(game:GetService("Workspace"):WaitForChild("Gems"):GetChildren()) do
        v:PivotTo(game:GetService("Players").LocalPlayer.Character:GetPivot())
    end
end
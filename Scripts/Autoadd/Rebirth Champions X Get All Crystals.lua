for i,v in pairs(game.workspace.Scripts.Amulets.Collect.Forest:GetChildren()) do
    if v.ClassName ~= "MeshPart" or "WeldConstraint" or "Folder" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.main.CFrame
    wait(2)
    game.Players.LocalPlayer.Character.Head.Anchored = true
    fireproximityprompt(v.ProximityPrompt, 1, true)
    game.Players.LocalPlayer.Character.Head.Anchored = false
    wait()
    end
    end

for i,v in pairs(game.workspace.Scripts.Amulets.Collect.Space:GetChildren()) do
    if v.ClassName ~= "MeshPart" or "WeldConstraint" or "Folder" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v["Meshes/mars1 (1)"].CFrame
    wait(2)
    game.Players.LocalPlayer.Character.Head.Anchored = true
    fireproximityprompt(v.ProximityPrompt, 1, true)
    game.Players.LocalPlayer.Character.Head.Anchored = false
    wait()
    end
    end
wait(3)

for i,v in pairs(game.workspace.Scripts.Amulets.Collect.Aqua:GetChildren()) do
    if v.ClassName ~= "MeshPart" or "WeldConstraint" or "Folder" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.main.CFrame
    wait(2)
    game.Players.LocalPlayer.Character.Head.Anchored = true
    fireproximityprompt(v.ProximityPrompt, 1, true)
    game.Players.LocalPlayer.Character.Head.Anchored = false
    wait()
    end
    end
wait(3)

for i,v in pairs(game.workspace.Scripts.Amulets.Collect:GetChildren()) do
    game:GetService("ReplicatedStorage").Events.CraftAmulet:FireServer(v.Name)
    end

-- Max world boost script
game:GetService("ReplicatedStorage").Events.WorldBoost:FireServer("Aqua")
game:GetService("ReplicatedStorage").Events.WorldBoost:Destroy()

--sets your world boost to 20M then destroys the remote, this will give you a perma 20M world boost
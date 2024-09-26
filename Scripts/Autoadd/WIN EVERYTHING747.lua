local avoid = {"100MF","100MC","100MT","100MR","TT","ToBT","ToC","ToCA","ToDC","ToDT","ToEH","ToFaCT","ToHA","ToIB","ToIF","ToMB","ToPZ","ToRER","ToTL","ToUH","ToAAA","ToAE","ToBK","ToEI","ToFM","ToHH","ToSM","ToSO","ToTB","ToTDA","ToWF","ToAR","ToFN","ToI","ToIM","ToMM","ToNS","ToUA","ToAM","ToCP","ToCR","ToDIE","ToER","ToGF"}
for i,v in pairs(game.Workspace.Towers:GetChildren()) do
    if not table.find(avoid,v.Name) then
    local tp = game.Workspace.Teleporters:FindFirstChild(v.Name).Teleporter.TPFRAME
    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(tp.CFrame)
    task.wait(0.75)
    local tool1 = Instance.new("Tool")
    tool1.Name = "Toxic Wings"
    tool1.Parent = game.Players.LocalPlayer.Character
    task.wait(0.2)
    local tool2 = Instance.new("Tool")
    tool2.Name = "Heavenly Orb"
    tool2.Parent = game.Players.LocalPlayer.Character
    task.wait(0.2)
    local tool3 = Instance.new("Tool")
    tool3.Name = "Candy Cane Grappling Hook"
    tool3.Parent = game.Players.LocalPlayer.Character
    task.wait(0.2)
    local tool4 = Instance.new("Tool")
    tool4.Name = "Heavenly Coil"
    tool4.Parent = game.Players.LocalPlayer.Character
    task.wait(1)
    local winpad
    for _,w in pairs(game.Workspace:FindFirstChild("WinPads",true):GetChildren()) do
        if w:IsA("BasePart") then
            if tostring(w.TowerId.Value) == tostring(v.Name) then
                winpad = w
            end
        end
    end
    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(winpad.CFrame)
    task.wait(1)
    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.Workspace:FindFirstChild("RestartBrick",true).CFrame)
    game.Players.LocalPlayer.CharacterAdded:Wait()
    task.wait(0.5)
    end
end
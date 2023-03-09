_G.Farming = true

while _G.Farming == true do
    wait(.1)
   
    -- // Label the function so it's a bit easier.

    function TP(P)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
    end

    -- // Collect The Iron

    for i = 1,25 do
        local ohInstance1 = workspace.Resources.Iron
        local ohNumber2 = 8
        game:GetService("ReplicatedStorage").Remotes.DamageResource:FireServer(ohInstance1, ohNumber2)
    end

    TP(workspace.Resources.Iron.Base.CFrame)

    local ohInstance1 = workspace.Objects.ResourcePile
    game:GetService("ReplicatedStorage").Remotes.RequestCarry:InvokeServer(ohInstance1)

    -- // Sell the iron

    for i,v in pairs(workspace.Objects:GetChildren()) do
        if v.Name == "Trader" then
            if v.Base.WantItem.Value == "Iron" then
                TP(v.Base.CFrame + Vector3.new(-3,0,0))
            end
        end
    end

    local ohInstance1 = workspace.Objects.ResourcePile
    local ohCFrame2 = game.Players.LocalPlayer.Character["Left Leg"].CFrame
    game:GetService("ReplicatedStorage").Remotes.RequestPlacement:InvokeServer(ohInstance1, ohCFrame2)

    wait(.1)

    for i,v in pairs(workspace.Objects:GetChildren()) do
        if v.Name == "Trader" then
            if v.Base.WantItem.Value == "Iron" then
                TP(v.Base.CFrame)
            end
        end
    end

    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.F, false, game)
end
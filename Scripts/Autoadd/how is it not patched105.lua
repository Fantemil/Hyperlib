while wait() do
    pcall(function()
        a = workspace.map.titans:GetChildren()
        for i = 1, #a do
            v = a[i]
            if (v.Nape.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 100 then
                local A_1 = math.huge * math.huge
                local A_2 = v.Nape
                local A_3 = math.huge - math.huge
                local A_4 = "bakuretsu la~ la~ la~ explosion"
                local Event = game:GetService("Workspace").GameScript.DamageTitan
                Event:FireServer(A_1, A_2, A_3, A_4)
            end
        end
    end)
end
for _,v in pairs(workspace:GetChildren()) do
        if string.find(v.Name, game.Players.LocalPlayer.Name) and v ~= game.Players.LocalPlayer.Character then
        for _,i in pairs(v:GetDescendants()) do -- the devs suck
                if i:IsA("ProximityPrompt") then
                repeat wait() fireproximityprompt(i)
                until not i.Enabled
                print("Ignited "..string.gsub(v.Name, game.Players.LocalPlayer.Name, ""))
            end
        end
    end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
    if v.Name == "Root" or v.Name == "RootJoint" then
        v:Destroy()
    end
end
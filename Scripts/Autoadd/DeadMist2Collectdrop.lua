-- Grab Care Package
for i,v in pairs(game.Workspace.Drops:GetChildren()) do
    if v.Name == "Drop Package" then
        v:MoveTo(game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(-7.24,7.24),1,math.random(-7.24,7.24)))
        wait()
    end
end
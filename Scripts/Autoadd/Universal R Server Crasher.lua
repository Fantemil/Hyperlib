-- be R15 and wear layered clothing
for _,s in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
    if s:IsA("Motor6D") and s.Name ~= "Neck" then
        local fard = s.Parent
        s:Destroy()
        fard.CFrame = CFrame.new(9e9 * _,9e9* _,9e9*_)
        wait()
    end
end
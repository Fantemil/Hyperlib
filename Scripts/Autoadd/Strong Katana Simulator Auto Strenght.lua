_G.strenght = true
while _G.strenght == true do
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Tool") and v then
            game:GetService("Players").LocalPlayer.Character[v.Name].Animation.Slash:FireServer()
        end
    end
wait(0.1)
end
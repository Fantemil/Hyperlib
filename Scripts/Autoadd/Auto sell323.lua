_G.lol = not _G.lol
while _G.lol do wait(5)
    game:GetService("ReplicatedStorage").Events.AreaSell:FireServer()
end
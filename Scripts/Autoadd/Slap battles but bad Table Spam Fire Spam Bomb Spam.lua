local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()
local e = game.Players.LocalPlayer

local s = VLib:Window("Nextix hub", "Slap battles but bad", "Pro")

local Main = s:Tab("Main")



Main:Button('Table',function()
game:GetService("ReplicatedStorage").TableThrowEvent:FireServer();

end)



Main:Button('bomb',function()
game:GetService("ReplicatedStorage").BombProjectileEvent:FireServer();

end)

Main:Button('Fire',function()
game:GetService("ReplicatedStorage").YellowBallRemote:FireServer();

end)

Main:Button('bubble',function()
game:GetService("ReplicatedStorage").StrayRemote:FireServer();

end)

Main:Button('you get bubble',function()
game:GetService("ReplicatedStorage").BubbleRemote:FireServer();

end)

Main:Button('TableSpam',function()
    while true do
        wait(0.2)
game:GetService("ReplicatedStorage").TableThrowEvent:FireServer();
end
end)

Main:Button('bubbleSpam',function()
    while true do
        wait(0.2)
game:GetService("ReplicatedStorage").StrayRemote:FireServer();
end
end)

Main:Button('bombSpam',function()
    while true do
        wait(0.2)
game:GetService("ReplicatedStorage").BombProjectileEvent:FireServer();
end
end)


Main:Button('FireSpam',function()
    while true do
        wait(0.2)
game:GetService("ReplicatedStorage").YellowBallRemote:FireServer();
end
end)

    
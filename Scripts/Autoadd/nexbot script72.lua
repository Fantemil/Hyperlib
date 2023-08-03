--Made by : https://v3rmillion.net/member.php?action=profile&uid=507120
--Go vouch release thread : https://v3rmillion.net/showthread.php?tid=1040650

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Become a nextbot script by zuny") -- Creates the window

local t = w:CreateFolder("Teleport") -- Creates the folder(U will put here your buttons,etc)

local m = w:CreateFolder("Main") -- Creates the folder(U will put here your buttons,etc)

local gn = w:CreateFolder("Get Nextbot") -- Creates the folder(U will put here your buttons,etc)

t:DestroyGui()

m:DestroyGui()

gn:DestroyGui()

gn:Button("Get RAGE munci",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(231.833832, 2.99999905, -35.5771141, 0.0361387543, -1.28158906e-08, -0.999346793, -1.03240883e-08, 1, -1.3197611e-08, 0.999346793, 1.07942899e-08, 0.0361387543)
end)

t:Button("Back to lobby",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(52.2600021, 143.176239, 101.444, 0.59445262, -1.370194e-08, -0.804130614, 3.41709558e-08, 1, 8.22139423e-09, 0.804130614, -3.23651435e-08, 0.59445262)
end)

m:Slider("WalkSpeed",{
    min = 16; -- min value of the slider
    max = 320; -- max value of the slider
    precise = true; -- max 2 decimals
},function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

gn:Button("Get Super Sanic",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(13.0105963, 2.99999905, 107.119385, -0.999253154, 4.85505929e-08, -0.0386410058, 4.61264591e-08, 1, 6.36262456e-08, 0.0386410058, 6.17963565e-08, -0.999253154)
end)

gn:Button("Get angry munci",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(222.272354, 3.00000048, 106.966187, -0.809466124, 7.02353375e-08, 0.587166607, 4.49456117e-09, 1, -1.13421201e-07, -0.587166607, -8.91715644e-08, -0.809466124)
end)

t:Bind("Go to construct",Enum.KeyCode.C,function() --Default bind
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1047.89453, -261.630981, 45.0854378, 1, 1.01066398e-07, -1.77161854e-14, -1.01066398e-07, 1, -2.57600661e-08, 1.51127076e-14, 2.57600661e-08, 1)
end)

print("Ui made by zun, enjoy")

m:Bind("Reset",Enum.KeyCode.R,function() --Default bind
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)
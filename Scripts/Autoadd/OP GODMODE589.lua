--godmode
local hrp  = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
hrp.Parent = nil;
hrp:Clone()
hrp.Parent =  game.Players.LocalPlayer.Character
hrp.Name   = "Humanoid"
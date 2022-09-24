local CANWALK = false -- turn canwalk on if you want to be able to actually play the game and walk around
loadstring(game:HttpGet('https://raw.githubusercontent.com/CreatorProfessional/float/main/floaters'))()
local SAFEMODE = false -- turn safemode on if you have bad internet connection or are on a high ping server
wait(1)
while wait() do
if game.Players.LocalPlayer.leaderstats.Studs.Value <= 159999999 then
game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(20,60,-5033))
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20,60,1)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20,60,-5000033)

elseif game.Players.LocalPlayer.leaderstats.Studs.Value >= 159999999 and game.Players.LocalPlayer.leaderstats.Studs.Value <= 185999999 then

game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(20,60,-5033))
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20,60,1)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20,60,-2500033)
elseif game.Players.LocalPlayer.leaderstats.Studs.Value >= 185999999 and game.Players.LocalPlayer.leaderstats.Studs.Value <= 195999999 then

game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(20,60,-5033))
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20,60,1)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20,60,-100033)
elseif game.Players.LocalPlayer.leaderstats.Studs.Value >= 195999999 and game.Players.LocalPlayer.leaderstats.Studs.Value <= 198999999 then

game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(20,60,-5033))
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20,60,1)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20,60,-50033)
elseif game.Players.LocalPlayer.leaderstats.Studs.Value >= 198999999 and game.Players.LocalPlayer.leaderstats.Studs.Value <= 199799999 and SAFEMODE == false then

game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(20,60,-1333))
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20,60,1)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20,60,-25033)
elseif game.Players.LocalPlayer.leaderstats.Studs.Value >= 199799999 and game.Players.LocalPlayer.leaderstats.Studs.Value <= 199555599 and SAFEMODE == false then

game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(20,60,-533))
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20,60,1)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20,60,-5033)
elseif game.Players.LocalPlayer.leaderstats.Studs.Value >= 199555599 and game.Players.LocalPlayer.leaderstats.Studs.Value <= 199955599 and SAFEMODE == false then

game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(20,60,-253))
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20,60,1)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20,60,-2533)

elseif game.Players.LocalPlayer.leaderstats.Studs.Value >= 199955599 and game.Players.LocalPlayer.leaderstats.Studs.Value <= 199995599 and SAFEMODE == false then

game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(20,60,-253))
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20,60,1)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20,60,-533)
elseif game.Players.LocalPlayer.leaderstats.Studs.Value >= 199995599 and game.Players.LocalPlayer.leaderstats.Studs.Value <= 199999599 and SAFEMODE == false and CANWALK == false then

game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(20,60,-253))
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20,60,1)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20,60,-133)
end
end
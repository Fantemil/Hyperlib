Target ="arsaboomii"

NOW = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait()
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait()
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
end
local function tp(player,player2)
local char1,char2=player.Character,player2.Character
if char1 and char2 then
char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
end
end
local function getout(player,player2)
local char1,char2=player.Character,player2.Character
if char1 and char2 then
char1:MoveTo(char2.Head.Position)
end
end
tp(game.Players[Target], game.Players.LocalPlayer)
wait()
tp(game.Players[Target], game.Players.LocalPlayer)
wait()
getout(game.Players.LocalPlayer, game.Players[Target])
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
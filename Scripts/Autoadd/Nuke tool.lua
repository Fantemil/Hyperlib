Player = game.Players.LocalPlayer
 
Bomb = Instance.new("Tool")
Bomb.Parent = Player.Backpack
Bomb.Name = "WTF Bomb"
Bomb.ToolTip = "Nuke the Entire Game :3"
 
H = Instance.new("Part")
H.Parent = Bomb
H.Name = "Handle"
H.Size = Vector3.new(2,1,2)
 
C4 = Instance.new("SpecialMesh")
C4.Parent = H
C4.MeshId = "http://www.roblox.com/asset/?id=104516854"
C4.TextureId = "http://www.roblox.com/asset/?id=104516981"
C4.Scale = Vector3.new(2,2,2)
 
function nuke()
WTF = Instance.new("Sound")
WTF.Parent = game.Workspace
WTF.Name = "WTF"
WTF.SoundId = "http://www.roblox.com/asset?id=300706716"
WTF.Parent = game.Workspace
WTF.Pitch = 1
WTF:Play()
WTF.Looped = false
WTF.Volume = 2
game:GetService("Chat"):Chat(Player.Character.Head,"...", Enum.ChatColor.Red)
wait(2)
game:GetService("Chat"):Chat(Player.Character.Head,"WTF", Enum.ChatColor.Red)
wait(.50)
nsk = Instance.new("Sky", game.Lighting)
nsk.SkyboxBk = "rbxassetid://14071196"
nsk.SkyboxDn = "rbxassetid://14071196"
nsk.SkyboxFt = "rbxassetid://14071196"
nsk.SkyboxLf = "rbxassetid://14071196"
nsk.SkyboxRt = "rbxassetid://14071196"
nsk.SkyboxUp = "rbxassetid://14071196"
for i, player in ipairs(game.Players:GetPlayers()) do
if player.Character then
local tor = player.Character:FindFirstChild('Torso')
if tor then
S = Instance.new("Explosion",game.workspace)
S.Position = tor.Position
S = Instance.new("Explosion",game.workspace)
S.Position = tor.Position
S = Instance.new("Explosion",game.workspace)
S.Position = tor.Position
S = Instance.new("Explosion",game.workspace)
S.Position = tor.Position
S = Instance.new("Explosion",game.workspace)
S.Position = tor.Position
S = Instance.new("Explosion",game.workspace)
S.Position = tor.Position
S = Instance.new("Explosion",game.workspace)
S.Position = tor.Position
S = Instance.new("Explosion",game.workspace)
S.Position = tor.Position
S = Instance.new("Explosion",game.workspace)
S.Position = tor.Position
   S = Instance.new("Explosion",game.workspace)
S.Position = tor.Position
S = Instance.new("Explosion",game.workspace)
S.Position = tor.Position
S = Instance.new("Explosion",game.workspace)
S.Position = tor.Position
S = Instance.new("Explosion",game.workspace)
S.Position = tor.Position
S = Instance.new("Explosion",game.workspace)
S.Position = tor.Position
S = Instance.new("Explosion",game.workspace)
S.Position = tor.Position
S = Instance.new("Explosion",game.workspace)
S.Position = tor.Position
end
end
end
end
Bomb.Activated:connect(nuke)
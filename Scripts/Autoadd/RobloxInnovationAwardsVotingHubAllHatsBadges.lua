-- locals
local lPlayer = game.Players.LocalPlayer -- localplayer
local pRoot = lPlayer.Character.HumanoidRootPart -- localplayer root

-- tween variables
local TweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(2)
local tween = TweenService:Create(pRoot, tweenInfo, {Position = Vector3.new(1.19464, 23.4132, -109.854)})

-- vote variables (change if you want)
local args = {
   [1] = {
       ["Best Content Update"] = "Tower Defense Simulator",
       ["People's Choice"] = "BedWars",
       ["Best Use of Avatar Fashion"] = "Word // Zero",
       ["Video Star of the Year"] = "Flamingo"
   },
   [2] = workspace.VotingScreen
}

-- Circlet of Patience
wait(0.2)
pRoot.CFrame = game:GetService("Workspace").Scavenger.Circlet.CFrame
wait(0.2)

-- Where Are The Shards?
pRoot.CFrame = game:GetService("Workspace").CubePieces.Block1.CFrame
wait(0.2)
pRoot.CFrame = game:GetService("Workspace").CubePieces.Block2.CFrame
wait(0.2)
pRoot.CFrame = game:GetService("Workspace").CubePieces.Block3.CFrame
wait(0.2)
pRoot.CFrame = game:GetService("Workspace").CubePieces.Block4.CFrame
wait(0.2)

-- I Voted - In Style
game:GetService("ReplicatedStorage").Events.RemoteEvents.Vote:FireServer(unpack(args))
wait(0.2)

-- A Timeless Hat
tween:Play()
wait(2.1)

-- Thinking Horns
game:GetService("TeleportService"):Teleport(game.PlaceId, lPlayer)
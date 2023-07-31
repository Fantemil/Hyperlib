--[[ 

Originally took inspiration from VD SCRIPTHUB's Unicycle Down a Hill INF MONEY
Made it it less than 2 minutes, It's also Unobfuscated since VD SCRIPTHUB's INF MONEY is obfuscated.

Long live Empire!

ADVERTISEMENT:
dsc.gg/empifyutility

]]

function Farm(yn)
_G.Start = yn

while wait() and _G.Start do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-173, 24984, -13)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(math.random(-900000000000, -999999999999), 24984, math.random(-900000000000, -999999999999))
wait(1)
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end
end

Farm(false)
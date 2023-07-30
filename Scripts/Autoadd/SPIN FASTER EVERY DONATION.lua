while true do

local cf = CFrame.fromOrientation(0,math.rad((tonumber(game.Players.LocalPlayer.leaderstats.Raised.Value)-70)/10),0)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * cf

game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)

game.Players.LocalPlayer.Character.HumanoidRootPart.RotVelocity = Vector3.new(0,0,0)

wait()

end
local function teleport(cf)
local seat = game:GetService("Workspace")["Picnic bench"].Seat
seat:Sit(game:GetService("Players").LocalPlayer.Character.Humanoid)
wait(0.2)
seat.CFrame = cf
wait(2)
game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
end
teleport(CFrame.new(-274.344238, 21.964695, 708.636047, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07))
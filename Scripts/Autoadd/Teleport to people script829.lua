--You can do Stuff to the script.
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local pl2 = "The person username here."
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = game.Players[pl2].Character.HumanoidRootPart.CFrame

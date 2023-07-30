local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
Humanoid.Health = 0
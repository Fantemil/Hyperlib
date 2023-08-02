local godmode = false -- set true if u want farm without dying

--------
local executecheck = nil if executecheck == true then return print("Already Executed")end
--------
game.Players.LocalPlayer.Character:BreakJoints()
game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
      game.Players.LocalPlayer.CharacterAdded:Connect(function()
            for i, v in pairs(game:GetService("Workspace").Spawn.Classes.Class1:GetDescendants()) do
                if v:IsA("ClickDetector") then
                    fireclickdetector(v)
                    executecheck = true
                end
            end
        end)
end)
game.StarterGui:SetCoreGuiEnabled(2, false)
wait(7)
if godmode == true then
local speaker = game.Players.LocalPlayer
local Cam = workspace.CurrentCamera
local Pos, Char = Cam.CFrame, game.Players.LocalPlayer.Character
local Human = Char:FindFirstChildWhichIsA("Humanoid")
local nHuman = Human:Clone()
nHuman.Parent, speaker.Character = Char, nil
nHuman.SetStateEnabled(nHuman, 15, false)
nHuman.SetStateEnabled(nHuman, 1, false)
nHuman.SetStateEnabled(nHuman, 0, false)
nHuman.BreakJointsOnDeath, Human = true, Human:Destroy()
speaker.Character, Cam.CameraSubject, Cam.CFrame = Char, nHuman, wait() and Pos
nHuman.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
local Script = Char:FindFirstChild("Animate")
nHuman.Health = nHuman.MaxHealth
Char.Animate.Disabled = true
wait(.05)
Char.Animate.Disabled = false
wait(.10)
end
game.Players.LocalPlayer.Backpack["Infinity Gauntlet"].Parent = game.Players.LocalPlayer.Character
while wait() do
  pcall(function()
        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                repeat wait(.01)
                    game.Players.LocalPlayer.Character["Infinity Gauntlet"]:Activate()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        v.HumanoidRootPart.CFrame * CFrame.new(1, -1,math.random(-2,2))
                until (v:FindFirstChildWhichIsA("Humanoid").Health <= 0 or false)
            end
    end)
end
local word = game:GetService("Workspace").Puzzles.Code.SurfaceGui.TextLabel.Text

for w in string.gmatch(word, "(%w)") do
fireclickdetector(game:GetService("Workspace").Puzzles.Keypad.Keys[w].ClickDetector)
task.wait(0.05)
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-26, 114, -255)
task.wait(1)
fireproximityprompt(game:GetService("Workspace").Puzzles.BlueArm.Root.Prompt)
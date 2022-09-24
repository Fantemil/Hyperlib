local Player = game:GetService("Players").LocalPlayer
local Root = Player.Character:FindFirstChild("HumanoidRootPart")
local Stages = workspace:FindFirstChild("Stages")

for _,v in pairs(Stages:GetChildren()) do
 for i = 1, 178 do
  task.wait(.35)
  Root.CFrame = Stages[i].CFrame * CFrame.new(Vector3.new(0, 2, 0))
 end
end
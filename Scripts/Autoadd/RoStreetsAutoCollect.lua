getgenv().Farm = true -- Set to false to stop
local Char = game.Players.LocalPlayer.Character

Char:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(0,0,0)

while _G.Farm do task.wait()
  for i,v in pairs(game.Workspace:GetChildren()) do
     if v:IsA("Part") and v.Name == "Money" and v:FindFirstChild("ClickDetector") then
         Char:WaitForChild("HumanoidRootPart").CFrame = v.CFrame
         fireclickdetector(v.ClickDetector)
      end
   end
end
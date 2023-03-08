local plr = game.Players.LocalPlayer
local char = plr.Character
local hrp = char:WaitForChild("HumanoidRootPart")
local landing = CFrame.new(150232, -103.86, 104719)
local isflying = plr:WaitForChild("IsFlying")
local autoRun = plr.PlayerGui.Main.SideTabs.AutoFly.Main.Button.Main.Switch
isflying:GetPropertyChangedSignal("Value"):Connect(function()
   if isflying and autoRun.BackgroundColor3 == Color3.fromRGB(127, 255, 189) then
       task.wait(.1)
       hrp.CFrame = landing
   end
end)
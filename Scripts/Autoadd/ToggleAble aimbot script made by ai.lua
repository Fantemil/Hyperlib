local aimbotEnabled = false -- toggleable by pressing "e"
local players = game:GetService("Players")
local camera = workspace.CurrentCamera

function aimbot()
   local target = nil
   local maxDist = math.huge
   local myTeam = players.LocalPlayer.TeamColor
   local myPos = players.LocalPlayer.Character.Head.Position
   
   for i, v in pairs(players:GetPlayers()) do
      if v ~= players.LocalPlayer and v.Character and v.Character:FindFirstChild("Head") and v.TeamColor ~= myTeam then
         local dist = (v.Character.Head.Position - myPos).magnitude
         if dist < maxDist then
            maxDist = dist
            target = v.Character.Head
         end
      end
   end
   
   if target then
      local lookVector = (target.Position - camera.CFrame.p).unit
      local lookAt = CFrame.new(camera.CFrame.p, camera.CFrame.p + lookVector)
      camera.CFrame = lookAt
   end
end

game:GetService("UserInputService").InputBegan:Connect(function(input)
   if input.KeyCode == Enum.KeyCode.E then
      aimbotEnabled = not aimbotEnabled
   end
end)

game:GetService("RunService").RenderStepped:Connect(function()
   if aimbotEnabled then
      aimbot()
   end
end)

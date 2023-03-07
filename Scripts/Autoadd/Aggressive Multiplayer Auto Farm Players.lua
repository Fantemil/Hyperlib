function toTarget(pos, targetPos, targetCFrame)
  local tween_s = game:service"TweenService"
  local info = TweenInfo.new((targetPos - pos).Magnitude/300--[[Changed speed here]], Enum.EasingStyle.Quad)
  local tic_k = tick()
  local tween, err = pcall(function()
      local tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = targetCFrame})
      tween:Play()
  end)
  if not tween then return err end
end
--find the local player
local cli = game.Players.LocalPlayer
-- toogle
_G.pf = true
--while loop to loop it
while _G.pf do
   --find the player in the game
       for d,c in pairs(game.Players:GetPlayers()) do
           -- make sure stuff
           if c.Name ~= game.Players.LocalPlayer.Name and c.Character:FindFirstChild("HumanoidRootPart") and c.Character:FindFirstChildWhichIsA("Humanoid").Health > 0 and cli.Character then
               --compare the sizes
                   if c.leaderstats.Size.Value < game.Players.LocalPlayer.leaderstats.Size.Value then
                       --teleport to the player to EAT THENM
                       toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, c.Character.HumanoidRootPart.Position, c.Character.HumanoidRootPart.CFrame)
                       --end 3
                   end
                   
               end
           
           end
       -- for the while loop
   wait()
   --end for the while loop so it dont breaked
end
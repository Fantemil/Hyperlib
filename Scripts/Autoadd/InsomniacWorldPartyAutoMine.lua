_G.enabled = true

local plr = game:service'Players'.LocalPlayer
while wait() and _G.enabled do
   pcall(function()
       for i,v in pairs(workspace.CandyMines:GetChildren()) do
           if v:FindFirstChild'Main' then
               plr.Character.HumanoidRootPart.CFrame = CFrame.new(v.Main.Position) + Vector3.new(0, 10, 0)
               wait(1)
               game:service'ReplicatedStorage'.Knit.Services.MiningService.RE.MineRock:FireServer(v)
               v.Main.Destroying:Wait()
               if not _G.enabled then
                   return
               end
           end
       end
   end)
end
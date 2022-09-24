--Create Platform
local platform = Instance.new('Part', workspace)
platform.Size = Vector3.new(1000,0,10200)
platform.Anchored = true
platform.Position = Vector3.new(100,-250,-200)
platform.Name = "bro"
platform.Locked = true

--Define Locals
local Plr = game:GetService("Players").LocalPlayer
local startcount = Plr.PlayerGui.Menew.ValentinesDay.Container.In.NewStat.Text
local lastpos = 100.312464, -246.67946, -190.512454
local count = 0
local me = Plr.Character

print(startcount)

-- Watch for heart spawns then teleport
game.Workspace.Debris.ChildAdded:Connect(function(v)
   if v.Name == "Heart" and v ~= nil then
       me.HumanoidRootPart.CFrame = v.CFrame
       count = count+1
       print(count)
   end
end)

-- If removed teleport to baseplate
game.Workspace.Debris.ChildRemoved:Connect(function(v)
   if v.Name == "Heart" then
       me:MoveTo(Vector3.new(lastpos))
   end
end)
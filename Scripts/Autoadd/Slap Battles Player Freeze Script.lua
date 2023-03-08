TypeOfTs = "Rope" -- Type of freezing player "Anchor" - just anchor "Rope" - rope player to his position (can rotate)
Skey = "E" -- Key for player stop
fannimod = true -- funni mod for rop (make you spin around)
uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(input,gameProcessedEvent)
 if input.KeyCode == Enum.KeyCode[Skey] then
  if TypeOfTs == "Anchor" then
   for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
    if v:IsA("Part") then
     v.Anchored = true
    end
   end
  end
  if TypeOfTs == "Rope" then
   local prt = Instance.new("Part")
   prt.CanCollide = false
   prt.Size = Vector3.new(0.1,0.1,0.1)
   prt.Parent = workspace
   prt.Anchored = true
   prt.Name = "TOTALLYNOTDEORGONIZEDNAME"
   prt.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
     local rop = Instance.new("RopeConstraint")
     local att1 = Instance.new("Attachment")
     local att2 = Instance.new("Attachment")
    att1.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
     att2.Parent = prt
    att1.WorldPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
   rop.Parent = game.Players.LocalPlayer.Character
   rop.Length = 0.05
     rop.Attachment0 = att1
   rop.Attachment1 = att2
   if fannimod == true then
    local rdm = math.random(0,2)
    local rdm1 = math.random(0,2)
    local rdm2 = math.random(0,2)
    rop.Length = 0.1
    att1.Position = att1.Position + Vector3.new(rdm,rdm1,rdm2)
    game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
   end
  end
 end
end)
uis.InputEnded:Connect(function(input,gameProcessedEvent)
 if input.KeyCode == Enum.KeyCode[Skey] then
  if TypeOfTs == "Anchor" then
   for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
    if v:IsA("Part") then
     v.Anchored = false
    end
   end
  end
  if TypeOfTs == "Rope" then
   if game.Players.LocalPlayer.Character:FindFirstChild("RopeConstraint") then
    game.Players.LocalPlayer.Character.RopeConstraint:remove()
    workspace.TOTALLYNOTDEORGONIZEDNAME:Remove()
    if fannimod == true then
     game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
    end
   end
  end
 end
end)
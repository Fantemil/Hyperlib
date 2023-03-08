Type = "Tp" -- Type of return "Tp" - no internet? Or tab glitch?
Skey = "E" -- Key for player return
Tkey = "Q" -- Key for pos spawn
Esp = true -- If true then u see anchor icon
uis = game:GetService("UserInputService")
----------------------------------------------------------
local prt = Instance.new("Part")
prt.Parent = workspace
prt.Anchored = true
prt.Size = Vector3.new(0.1,0.1,0.1)
prt.Name = "fanpartfromscripturyeur"
prt.CanCollide = false
if Esp == true then
 prt.Material = "Neon"
 prt.BrickColor = BrickColor.new("White")
 prt.Size = Vector3.new(0.3,0.3,0.3)
 local hl = Instance.new("Highlight")
 hl.Parent = prt
 hl.FillTransparency = 1
 hl.OutlineTransparency = 0
end
uis.InputBegan:Connect(function(input,gameProcessedEvent)
 if input.KeyCode == Enum.KeyCode[Skey] then
  if Type == "Tp" then
  game.Players.LocalPlayer.Character:MoveTo(workspace:WaitForChild("fanpartfromscripturyeur").Position)
  end
 end
 if input.KeyCode == Enum.KeyCode[Tkey] then
  prt.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
 end
end)
-- Variables
local mouse = game.Players.LocalPlayer:GetMouse()
local uis = game:GetService("UserInputService")

-- Connect
mouse.Button1Down:Connect(function()
    -- Check for Target & Left Shift
    if mouse.Target and uis:IsKeyDown(Enum.KeyCode.LeftControl) then
local npc = mouse.target.Parent
local npcRootPart = npc.HumanoidRootPart
local PlayerCharacter = game:GetService("Players").LocalPlayer.Character
local PlayerRootPart = PlayerCharacter.HumanoidRootPart
local A0 = Instance.new("Attachment")
local AP = Instance.new("AlignPosition")
local AO = Instance.new("AlignOrientation")
local A1 = Instance.new("Attachment")
for _, v in pairs(npc:GetDescendants()) do
 if v:IsA("BasePart") then
  game:GetService("RunService").Stepped:Connect(function()
   v.CanCollide = false
  end)
 end
end
PlayerRootPart:BreakJoints()
for _, v in pairs(PlayerCharacter:GetDescendants()) do
 if v:IsA("BasePart") then
  if v.Name == "HumanoidRootPart" or v.Name == "UpperTorso" or v.Name == "Head" then
  else
   v:Destroy()
  end
 end
end
PlayerRootPart.Position = PlayerRootPart.Position+Vector3.new(5, 0, 0)
PlayerCharacter.Head.Anchored = true
PlayerCharacter.UpperTorso.Anchored = true
A0.Parent = npcRootPart
AP.Parent = npcRootPart
AO.Parent = npcRootPart
AP.Responsiveness = 200
AP.MaxForce = math.huge
AO.MaxTorque = math.huge
AO.Responsiveness = 200
AP.Attachment0 = A0
AP.Attachment1 = A1
AO.Attachment1 = A1
AO.Attachment0 = A0
A1.Parent = PlayerRootPart
end
end)
--stewart

local part = Instance.new("Part")
part.Size = Vector3.new(4.024, 6.514, 1.733)
part.Name = "PoopyHead"
part.Position = game.Players.LocalPlayer.Character.Head.Position
part.Parent = game.Workspace

local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.MeshId = "rbxassetid://3692134742"
mesh.TextureId = "rbxassetid://3692134820"
mesh.Parent = part

local script = Instance.new("Script")
script.Name = "StewieScript"
script.Parent = part

script.Source = [[
 local part = script.Parent
 while true do
  part.CFrame = game.Players.LocalPlayer.Character.Head.CFrame
  wait(0.1)
 end
]]
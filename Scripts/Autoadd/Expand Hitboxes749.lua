local npcs
while task.wait() do
  npcs = workspace.NPCFolders.EnemyFolder
  for _,v in next, npcs:GetChildren() do
    if not v:FindFirstChild("Head") then continue end
    v.Head.Size = Vector3.new(40,40,40)
    v.Head.Material = "Neon"
    v.Head.BrickColor = BrickColor.new("Really blue")
    v.Head.Transparency = 0.7
    v.Head.CanCollide = false
  end
end
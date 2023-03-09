local parts = {}

for i,v in pairs(game:GetDescendants()) do
  if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("Model") then
    table.insert(parts,v)
  end
end

game:GetService("RunService").RenderStepped:connect(function()
 for i,v in pairs(parts) do
   wait()
   if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("localscript_cache") then
     game:GetService("Players").LocalPlayer.PlayerGui.localscript_cache.Emotes.Play_Sound:FireServer(v,"cry")
   end
 end
end)
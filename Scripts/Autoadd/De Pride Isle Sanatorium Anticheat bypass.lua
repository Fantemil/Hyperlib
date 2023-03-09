function disableanticheat()
   local playerhook = game:GetService'Players'.LocalPlayer
   repeat wait() until playerhook.Character:FindFirstChild'CoreCharacter'
local CoreCharacter = playerhook.Character.CoreCharacter
   repeat wait() until getsenv(CoreCharacter).SetupBed ~= nil
for i,v in pairs(getconnections(playerhook.Character.DescendantAdded)) do if
   getfenv(v.Function).script == CoreCharacter then
   v:Disable()
end
end
for i,v in pairs(getconnections(workspace.DescendantRemoving)) do if
   getfenv(v.Function).script == CoreCharacter then
   v:Disable()
end
end
for i,v in pairs(getconnections(workspace.RankBarriers.DescendantRemoving)) do if
   getfenv(v.Function).script == CoreCharacter then
   v:Disable()
end
end
for i,v in pairs(getconnections(CoreCharacter.Parent.DescendantAdded)) do if
   getfenv(v.Function).script == CoreCharacter then
   v:Disable()
end
end
for i,v in pairs(getconnections(playerhook.Character.Humanoid.Changed)) do if
   getfenv(v.Function).script == CoreCharacter then
   v:Disable()
end
end
for i,v in pairs(getconnections(playerhook.Backpack.ChildAdded)) do if
   getfenv(v.Function).script == CoreCharacter then
   v:Disable()
end
end
for i,v in pairs(workspace.RankBarriers:GetChildren()) do
   for o,b in pairs(getconnections(v.Changed)) do if
   getfenv(b.Function).script == CoreCharacter then
   b:Disable()
end
end
end
for i,v in pairs(playerhook.Character:GetChildren()) do if
   v:IsA'MeshPart' or v:IsA'BasePart' then
   for o,b in pairs(getconnections(v:GetPropertyChangedSignal"CanCollide")) do if
   getfenv(b.Function).script == CoreCharacter then
       b:Disable()
   end
end
end
end
for i,v in pairs(game.Lighting:GetChildren()) do
   for o,b in pairs(getconnections(v.Changed)) do if
   getfenv(b.Function).script == CoreCharacter then
   b:Disable()
end
end
end
print("\nDisabled\n")
end
disableanticheat()
game:GetService'Players'.LocalPlayer.CharacterAdded:Connect(function(chr)
   chr.ChildAdded:Connect(function(obj)
       if obj.Name == "CoreCharacter" then
           disableanticheat()
       end
   end)
end)
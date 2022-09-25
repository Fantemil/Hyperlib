for i, v in pairs(game:GetService("Players"):GetChildren()) do
   if v.Name ~= game:GetService("Players").LocalPlayer.Name then
       local String = "killPlayer"
       local Player = v
       local Vector = Vector3.new(-891.18792724609, -891.18792724609, -891.18792724609)
       game:GetService("ReplicatedStorage").RemoteEvent:FireServer(String, Player, Vector)
   end
end
game:GetService("Players").LocalPlayer:GetMouse().KeyDown:Connect(function(key)
 if key == "e" then
  for i, v in pairs(game:GetService("Players"):GetPlayers()) do
   if v ~= game:GetService("Players").LocalPlayer and v.Character and v.Character:FindFirstChild("Head") then
    if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sniper") then
     game:GetService("Players").LocalPlayer.Backpack:WaitForChild("Sniper", 9999)
    end
    game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit:FireServer(game:GetService("Players").LocalPlayer.Backpack.Sniper, {
     ["p"] = v.Character.Head.Position,
     ["pid"] = 1,
     ["part"] = v.Character.Head,
     ["d"] = (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude,
     ["maxDist"] = 0.8406391143798828,
     ["h"] = v.Character.Head,
     ["m"] = Enum.Material.Plastic,
     ["n"] = Vector3.new(0, 1, 0),
     ["t"] = 0.038207660043656735,
     ["sid"] = 2
    })
   end
  end
 end
end)
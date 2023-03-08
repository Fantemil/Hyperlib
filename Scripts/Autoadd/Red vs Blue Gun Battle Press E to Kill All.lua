game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
 if k == "e" then
  pcall(function()
   for _,v in next, game.Players:GetPlayers() do
    if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
     for _ = 1, 5 do
      game.ReplicatedStorage.WeaponsSystem.Network.WeaponHit:FireServer(game.Players.LocalPlayer.Backpack:FindFirstChild("Rocket Launcher") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sniper"), {
       ["p"] = Vector3.new(),
       ["pid"] = 0,
       ["part"] = v.Character.HumanoidRootPart,
       ["d"] = 0,
       ["maxDist"] = 0,
       ["h"] = nil,
       ["m"] = Enum.Material.ForceField, 
       ["sid"] = 0,
       ["t"] = 0,
       ["n"] = Vector3.new()
      })
     end
    end
   end
  end)
 end
end)
Players = game:GetService("Players")
Player = Players.LocalPlayer
Character = Player.Character or Player.ChacterAdded:wait()

game:GetService("RunService").Heartbeat:Connect(function()
 if Character:FindFirstChild("Knife") then else
  if Player.Backpack:FindFirstChild("Knife") then
   Player.Character:FindFirstChild("Humanoid"):EquipTool(Player.Backpack.Knife)
  end
 end
 Player.Character.HumanoidRootPart.CFrame = game.Workspace.Spawn.SpawnLocation.CFrame
 mouse1click()
 for _,v in pairs(Players:GetChildren())do
  if v.Name == Player.Name then else
   local character = v.Character or v.CharacterAdded:Wait()
    character:WaitForChild("Head").Transparency = 0
    character.Head.Size = Vector3.new(1000, 1000, 1000)
    character.Head.CanCollide = false 
  end
 end
end)
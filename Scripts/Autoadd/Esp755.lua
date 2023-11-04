local function ESP_plr()
  while getgenv().ESP_plr == true do task.wait()
    local plr1 = game.Players.LocalPlayer
    for _,plr in pairs(game.Players:GetPlayers()) do
      if plr.Name ~= plr1.Name and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and not plr.Character:FindFirstChild("ESP_REDzHUB") and workspace:WaitForChild("Alive", 60):FindFirstChild(plr.Name) then
        
        local Folder = Instance.new("Folder", plr.Character)
        local BHA = Instance.new("BoxHandleAdornment", Folder)
        local BillboardGui = Instance.new("BillboardGui", BHA)
        local TextLabel = Instance.new("TextLabel", BillboardGui)
        Folder.Name = "ESP_REDzHUB"
        
        BHA.Size = Vector3.new(1, 0, 1, 0)
        BHA.Name = "ESP_REDzHUB"
        BHA.AlwaysOnTop = true
        BHA.ZIndex = 10
        BHA.Transparency = 0
        
        BillboardGui.Adornee = plr.Character.HumanoidRootPart
        BillboardGui.Size = UDim2.new(0, 100, 0, 150)
        BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
        BillboardGui.AlwaysOnTop = true
        
        TextLabel.BackgroundTransparency = 1
        TextLabel.Position = UDim2.new(0, 0, 0, -50)
        TextLabel.Size = UDim2.new(0, 100, 0, 100)
        TextLabel.TextSize = 10
        TextLabel.TextColor3 = Color3.new(1, 1, 1)
        TextLabel.TextStrokeTransparency = 0
        TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
        TextLabel.Text = plr.Name .. " <...>"
        TextLabel.ZIndex = 15
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
        
        task.spawn(function()
          while task.wait() do
            local plrRP = plr1.Character:FindFirstChild("HumanoidRootPart")
            if plr1 and plrRP and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
              local distance = math.floor((plrRP.Position - plr.Character.HumanoidRootPart.Position).Magnitude)
              TextLabel.Text = plr.Name .. " <" .. tostring(distance) .. ">"
            end
          end
        end)
      end
    end
  end
  task.wait()
  for _,plr in pairs(game.Players:GetPlayers()) do
    if plr and plr.Character and plr.Character:FindFirstChild("ESP_REDzHUB") then
      plr.Character.ESP_REDzHUB:Destroy()
    end
  end
end

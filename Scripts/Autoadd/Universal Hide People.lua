local trans = 0

function update(p)
 if p ~= game.Players.LocalPlayer and p.Character then
  p.Character.Head.face.Transparency = trans
  for e,v in pairs(p.Character:GetChildren()) do
   if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
    v.Transparency = trans
   end
   if v:IsA("Accessory") then
    v.Handle.Transparency = trans
   end
  end
 end
end

game:GetService("UserInputService").InputBegan:Connect(function(i)
 if i.KeyCode == Enum.KeyCode.F8 then
  local m = Instance.new("Hint")
  if trans == 0 then
   trans = 1
   m.Text = "Players are invisible"
  else
   trans = 0
   m.Text = "Players are visible"
  end
  m.Parent = gethui()
  game.Debris:AddItem(m, 1)

  for _,p in pairs(game.Players:GetChildren()) do
   update(p)
  end
 end
end)

workspace.ChildAdded:Connect(function(child)
 if game.Players:FindFirstChild(child.Name) then
  game.Players[child.Name].CharacterAppearanceLoaded:Connect(function()
   if trans == 1 then update(game.Players[child.Name]) end
  end)
 end
end)
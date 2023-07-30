local plr = game.Players.LocalPlayer

function supaSiza(v)
   if v:IsA("Tool") then
       v.Glove.Transparency = 0.75
       v.Glove.Size = Vector3.new(10, 30, 15)
   end
end

plr.Character.ChildAdded:Connect(supaSiza)

plr.CharacterAdded:Connect(function(char)
   char.ChildAdded:Connect(supaSiza)
end)
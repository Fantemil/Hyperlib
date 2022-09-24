for i, v in pairs(game:GetService("Players").LocalPlayer.GamePassFolder:GetChildren()) do
 if v.Value == false then
     v.Value = true
   end
end
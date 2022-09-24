for i, v in pairs(game:GetService("Workspace")["Glass Bridge"].GlassPane:GetDescendants()) do
   if v:IsA("TouchTransmitter") then
       v.Parent.BrickColor = BrickColor.new("Bright red")
   end
end
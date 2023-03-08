for i,v in pairs(game:GetService("Workspace")["Glass Bridge"].GlassPane:GetDescendants()) do
   if v:IsA("BasePart") then
       if v.CanCollide == true then
       v.Color = Color3.fromRGB(0, 255, 0)
       else
     
     v.Color = Color3.fromRGB(255, 0, 0)
       
       end
   end
   end
for i,v in pairs(game:GetService("Workspace")["Glass Bridge"].GlassPane:GetDescendants()) do
   if v:IsA("BasePart") and v.CanCollide == false then
       v.CanCollide = true
       v.Color = Color3.fromRGB(255, 0, 0)
       
   end
end

spawn(function()
   while true do
       task.wait()
for i,v in pairs(game:GetService("Workspace")["Glass Bridge"].GlassPane:GetDescendants()) do
   if v:IsA("TouchTransmitter") then
       v:Destroy()
   end
end
end

end)
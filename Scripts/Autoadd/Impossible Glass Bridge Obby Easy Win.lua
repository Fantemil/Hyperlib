while true do
   wait(0.3)
for _,v in pairs(game:GetService("Workspace")["Glass Bridge"].GlassPane:GetDescendants()) do
if v:IsA("TouchTransmitter") then
v.Parent.Color = Color3.fromRGB(255,0,0)

end
end
end
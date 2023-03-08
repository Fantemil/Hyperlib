game:GetService("CoreGui").PurchasePrompt.Enabled = false
_G.Lag = true
while _G.Lag do
for i,v in pairs(workspace:GetDescendants()) do
   if v:IsA("ClickDetector") then
    fireclickdetector(v)
   end
end
  wait(1)
  end
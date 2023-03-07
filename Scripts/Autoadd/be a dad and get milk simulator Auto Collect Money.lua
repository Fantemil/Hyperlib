for i, v in pairs(game:GetService("Workspace").Money:GetChildren()) do
 if v:FindFirstChild("ClickDetector") then
  fireclickdetector(v.ClickDetector)
 end
end
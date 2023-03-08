 autotrinket = true 
   while autotrinket do wait()
       pcall(function()
       for i,v in pairs(game:GetService("Workspace").Trinkets:GetChildren()) do
   if v:IsA("MeshPart") and v:FindFirstChild("ClickDetector") then
       fireclickdetector(v.ClickDetector)
   end
end
end)
end
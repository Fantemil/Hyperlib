for i, v in pairs(game:GetService("Players"):GetChildren()) do
 if v.Character:FindFirstChild("Highlight") then v.Character.Highlight:Destroy() end
 local esp = Instance.new("Highlight")
 esp.Parent = v.Character
 if v.Status.Role.Value == "Bystander" then esp.FillColor = Color3.fromRGB(0,255,0) end
end
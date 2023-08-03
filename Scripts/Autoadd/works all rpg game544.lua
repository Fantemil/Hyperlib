for i,v in pairs(game:GetService("ReplicatedStorage").GameItems:GetChildren()) do
   game:GetService("ReplicatedStorage").GameRemotes.BuyEvent:FireServer(v.Name)
end
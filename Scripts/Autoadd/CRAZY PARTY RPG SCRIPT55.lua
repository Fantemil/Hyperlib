local RS = game:GetService("ReplicatedStorage")
for Index, Variable in pairs(RS.GameItems:GetChildren()) do
game:GetService("ReplicatedStorage").GameRemotes.BuyEvent:FireServer(Variable.Name)
end
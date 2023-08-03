local RS = game:GetService("ReplicatedStorage")
for Index, Variable in pairs(RS.GameItems:GetChildren()) do
game:GetService("ReplicatedStorage").GameRemotes.SellEvent:FireServer(Variable.Name)
end
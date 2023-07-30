for i,v in pairs(workspace.GlobalToastyFolder:GetChildren()) do 
game:GetService("ReplicatedStorage").GrantBadge:FireServer(v.BadgeID)
game:GetService("ReplicatedStorage").GrantData:FireServer(v.Name)
end
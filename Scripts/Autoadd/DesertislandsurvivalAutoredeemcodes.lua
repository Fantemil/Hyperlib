for i,_ in pairs(require(game:GetService("ReplicatedStorage").Config.LikeCode)) do
    game:GetService("ReplicatedStorage").Events.LikeCodeEvent:FireServer(i);
end
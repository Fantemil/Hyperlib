local toolsFolder = game:GetService("ReplicatedStorage").Tools

for _, tool in pairs(toolsFolder:GetChildren()) do
    local args = {
        [1] = tool.Name
    }
    game:GetService("ReplicatedStorage").ShopBuy:FireServer(unpack(args))
end
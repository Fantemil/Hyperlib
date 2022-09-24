local uis = game:GetService("UserInputService")

uis.InputBegan:Connect(function(asd)
if asd.UserInputType == Enum.UserInputType.MouseButton1 then
    for i,v in pairs(game.Workspace:GetChildren()) do
            if v:FindFirstChild("Head") then
    for i = 1,5 do
local args = {
    [1] = "VR",
    [2] = v.Head,
}

game:GetService("ReplicatedStorage").Event:FireServer(unpack(args))
end
end
end
end
end)
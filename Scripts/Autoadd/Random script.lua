--equip all
for i,v in pairs(game:GetService("Lighting"):GetChildren()) do
    if v:IsA("Model") then
        local args = {
            [1] = v.Name
        }
        game:GetService("ReplicatedStorage").CustomizeEvent:FireServer(unpack(args))
    end
end

--Destroy Kill Objects
for i,v in pairs(workspace:GetDescendants()) do
    if v.Name == "Lava Brick" and v.Name == "spike" then
        v:Destroy()
    end
end

--Autofarm Coins
getgenv().autofarmforcoins = true
while task.wait(0.1) do
    if not getgenv().autofarmforcoins then return end
    for i,v in pairs(workspace:GetDescendants()) do
        if v.Name == "Get cash" and v.Parent.Transparency == 0 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
        end
    end
end
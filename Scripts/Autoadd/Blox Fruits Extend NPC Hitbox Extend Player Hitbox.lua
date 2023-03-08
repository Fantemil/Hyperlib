getgenv().Extend_NPC_Ennemy_Hitbox = true

while getgenv().Extend_NPC_Ennemy_Hitbox do
    if not getgenv().Extend_NPC_Ennemy_Hitbox then return end
    for i,ennemy in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if ennemy ~= nil and ennemy.HumanoidRootPart ~= nil then
            ennemy:WaitForChild"HumanoidRootPart".Size = Vector3.new(75,75,75)
            ennemy:WaitForChild"HumanoidRootPart".Transparency = 0.85
            ennemy:WaitForChild"HumanoidRootPart".CanCollide = false
            print("Extended Hitbox For:",ennemy.Name)
        end
    end
    wait(0.05)
end

getgenv().Extend_Player_Hitbox = true

while getgenv().Extend_Player_Hitbox do
    if not getgenv().Extend_Player_Hitbox then return end
    for i,player in pairs(game:GetService"Workspace".Characters:GetChildren()) do
        if player.Name ~= game:GetService"Players".LocalPlayer.Name then
            if player ~= nil and player.HumanoidRootPart ~= nil then
                player:WaitForChild"HumanoidRootPart".Size = Vector3.new(75,75,75)
                player:WaitForChild"HumanoidRootPart".Transparency = 0.85
                player:WaitForChild"HumanoidRootPart".CanCollide = false
                print("Extended Hitbox For:",player.Name)
            end
        end
    end
    wait(0.05)
end
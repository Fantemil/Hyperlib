if game.Players.LocalPlayer == nil then
    game.Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
end

local Player = game.Players.LocalPlayer
local Debounce = false
local Killaura = true
local Mouse = Player:GetMouse()
local function Attack(Target)
    if Player.Character == nil or Target.Character == nil then
        return
    end
    local WeaponFolder = Player.Character:FindFirstChildOfClass("Folder")
    if WeaponFolder == nil or not WeaponFolder:FindFirstChild("Laminas") then
        return
    end
    if Target.Character:FindFirstChild("Humanoid") and Target.Character.Humanoid.Health <= 0 then
        return
    end
    game:GetService("ReplicatedStorage").LocalPlayer.EventoPrincipal:FireServer("Estado Ataque", true, 1, {})
    for i,v in pairs(Target.Character:GetChildren()) do
        if v:IsA("UnionOperation") then
            game:GetService("ReplicatedStorage").LocalPlayer.EventoPrincipal:FireServer("Parte Acertada", v.CFrame, WeaponFolder.Laminas.Lamina, v, v.CFrame * CFrame.new(0,math.random(-2,2),math.random(-3,3)), v.CFrame * CFrame.new(0,math.random(-2,2),math.random(-3,3)))
        end
    end
    game:GetService("ReplicatedStorage").LocalPlayer.EventoPrincipal:FireServer("Estado Ataque", false)
end

game:GetService('RunService').Stepped:connect(function()
    if Debounce == false and Killaura == true then 
        Debounce = true
        for i,v in pairs(game.Players:GetPlayers()) do
            if v ~= Player and not Player:IsFriendsWith(v.UserId) and v.Character ~= nil and v.Character:FindFirstChild("HumanoidRootPart") and Player:DistanceFromCharacter(v.Character.HumanoidRootPart.Position) <= 20 then
                Attack(v)
            end
        end
        wait()
        Debounce = false
    end
end)

Mouse.KeyDown:Connect(function(key)
    if key == "g" then
        Killaura = not Killaura
        local currenttext = ""
        if Killaura == true then
            currenttext = "Killaura is now turned ON!"
        else
            currenttext = "Killaura is now turned OFF!"
        end
        game.StarterGui:SetCore("SendNotification", {
            Title = "notification";
            Text = currenttext;
            Icon = "rbxassetid://2541869220";
            Duration = 3;
        })
    end
end)

game.StarterGui:SetCore("SendNotification", {
    Title = "Killaura is now on";
    Text = "Press G to toggle\n Made by ZiroPonto";
    Icon = "rbxassetid://2541869220";
    Duration = 7;
})
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

function GetCurrentHealth()
    local health_text = game.Players.LocalPlayer.PlayerGui.PlayerInterface.HealthBar.DisplayText.Text
    return tonumber(string.match(health_text, "%d+"))
end

AutofarmTab = library:CreateTab("Autofarm")
AutofarmTab:CreateToggle("Attack autofarm", function(bool)
    _G.AttackAutoFarmBool = bool

    while _G.AttackAutoFarmBool do
        game:GetService("ReplicatedStorage").Remotes.Training.Combat:InvokeServer()
        wait(0.2)
    end
end)
AutofarmTab:CreateToggle("Energy gain", function(bool)
    _G.EnergyAutoFarmBool = bool
    
    if not bool then
        game:GetService("ReplicatedStorage").Remotes.Training.ChargeFinish:FireServer()
    end
    
    while _G.EnergyAutoFarmBool do
        local args = {
            [1] = true
        }
        game:GetService("ReplicatedStorage").Remotes.Training.Charge:InvokeServer(unpack(args))
        wait(0.2)
    end
end)
AutofarmTab:CreateToggle("Defense gain", function(bool)
    _G.DefenseAutoFarmBool = bool

    while _G.DefenseAutoFarmBool do
        if GetCurrentHealth() > 9 then
            local args = {
                [1] = game:GetService("Players").LocalPlayer.Stats,
                [2] = game:GetService("Players").LocalPlayer.Status,
                [3] = game:GetService("Players").LocalPlayer.Character.Humanoid, -- remove humanoid to not lose health
                [4] = game:GetService("Players").LocalPlayer.Character.RightHand
            }
            game:GetService("ReplicatedStorage").Remotes.Training.Defense:InvokeServer(unpack(args))
        end
        wait(0.2)
    end
end)
AutofarmTab:CreateToggle("Qi autofarm", function(bool)
    _G.QiAutoFarmBool = bool

    while _G.QiAutoFarmBool do
        game:GetService("ReplicatedStorage").Remote.KiBlast:InvokeServer()
        wait(0.2)
    end
end)
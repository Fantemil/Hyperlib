--[[AutoFarm]]--
AutoRebirth = true --false to turn off
repeat wait() until game:IsLoaded() wait(5) --you can change it if you want, i recommend 5 but yeah.

if game.PlaceId == 9049840490 then --Sonic Game
    local TS = game:GetService("TeleportService")
    local LP = game:GetService("Players").LocalPlayer
    local MapStuff = game:GetService("Workspace").Map.Objects
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FOXTROXHACKS/UsefullScripts/main/Gui-Button-Clicker"))()
   
    spawn(function()
        for i, v in pairs(game:GetService("Players").F0XTR0XX.PlayerGui.Main.Menus.Rebirth.Main.RebirthButtonLocked:GetDescendants()) do
            if v:IsA("TextButton") then
                 FireBtn1(v)
            end
        end
    end)
    spawn(function()
        while wait(0.5) do --in case it doesnt collect some of the thing
            for i,x in pairs(MapStuff:GetDescendants()) do
                if x.ClassName == "Part" and x.Name == "Root" or x.Name == "Hitbox" then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = x.CFrame
                    game:GetService("ReplicatedStorage").Knit.Services.WorldCurrencyService.RE.PickupCurrency:FireServer(x.Parent.Name)
                    x.Parent:Destroy()
                end
            end
        end
    end)
    wait(4)
    spawn(function()
        while wait(4) do --in case it doesnt rejoin you
            TS:Teleport(game.PlaceId, LP)
        end
    end)
end
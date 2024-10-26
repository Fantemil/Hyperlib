getgenv().autodelete = true -- set to false if you dont want to auto delete
getgenv().autoopen = true -- set to false if you dont want to auto open
task.spawn(function()
    while true do wait()
        if not getgenv().autodelete then
            break
        end
        for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Inventory.ScrollingFrame:GetChildren()) do
            if v.Name == "PlayerCard" then
                for i,v in pairs(v:GetChildren()) do
                    if v.Name == "Rarity" and v.Text ~= "Mythic" then
                        local lol = v.Parent.Info.Id.Text
                        local hi = string.sub(lol, 2)
                        local num = tonumber(hi)
                        game:GetService("ReplicatedStorage"):WaitForChild("DeleteCard"):FireServer(num)
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("GetInventory"):InvokeServer()
                        
                    end
                end
            end
        end
    end
end)
task.spawn(function()
    while true do wait()
        if not getgenv().autoopen then
            break
        end
        game:GetService("ReplicatedStorage"):WaitForChild("OpenPack"):InvokeServer()
    end
end)
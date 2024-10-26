_G.x = 1000000
---Delete Unit
spawn(function()
    while wait() do
        for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.UnitBagGui.main.Left:GetChildren()) do
            if v:FindFirstChild("Button") then
                a = v.Button.Rarity.Text
                if a:find("1/") then
                    a = a:gsub("1/","")
                end
                if tonumber(a) < _G.x then
                    local args = {
                        [1] = "client_del_unit",
                        [2] = {
                            ["1"] = {
                                ["1"] = tonumber(v.Name)
                            }
                        }
                    }
    
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
                end
            end
        end
    end
end)
---Auto Roll
spawn(function()
    while wait() do
        local args = {
            [1] = "client_get_roll_item",
            [2] = {}
        }
    
        game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
        wait()
        local args = {
            [1] = "put_in_unit_backpack",
            [2] = {}
        }
    
        game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
    end
end)
---Collect Drop
spawn(function()
    while wait() do
        for i,v in pairs(workspace.scene_drop:GetChildren()) do
            v:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end
end)

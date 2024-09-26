local rs = game:GetService("RunService")
getgenv().rocks = {}
local hook;hook = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    if not checkcaller() and getnamecallmethod() == "FireServer" then
        if tostring(self) == "PickupReplicate" then
            getgenv().rocks[#getgenv().rocks+1] = rs.Stepped:Connect(function()
                game:GetService("ReplicatedStorage").Remotes.RockCollect:FireServer(args[2])
            end)
        elseif tostring(self) == "ThrowReplicate" then
            getgenv().rocks[1]:Disconnect()
            table.remove(getgenv().rocks, 1)
            --[[ if your game gets to laggy and your unable to through your whole stack:
                for _,rock in pairs(getgenv().rocks) do
                    rock:Disconnect()
                end
            ]]
        end
    end
    return hook(self, ...)
end)
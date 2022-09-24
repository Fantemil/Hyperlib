local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()

local is_exploit_function = is_synapse_function or isexecutorclosure

for i,v in ipairs(getgc()) do
    if type(v) == "function" and not is_exploit_function(v) and islclosure(v) then
        local consts = getconstants(v)
        
        if getfenv(v).script == game.Players.LocalPlayer.PlayerScripts.ClientFunctions and table.find(consts, "LocalPlayer") then
            hookfunction(v, function()
               return wait(math.huge) 
            end)
        end
    end
end

char:WaitForChild("Humanoid", 9e9)

char.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
    char.Humanoid.WalkSpeed = 16
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
    char:WaitForChild("Humanoid", 9e9)
    
    char.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        char.Humanoid.WalkSpeed = 16
    end)
end)
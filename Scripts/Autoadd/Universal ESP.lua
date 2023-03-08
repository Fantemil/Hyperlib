for i,v in pairs(game.Players:GetPlayers()) do
    if v ~= game.Players.LocalPlayer then
        local function addEsp(character)
            local newHighlight = Instance.new("Highlight")
            
            newHighlight.Parent = character
        end
        
        addEsp(v.Character)
        
        v.CharacterAdded:Connect(function(char)
            addEsp(char)
        end)
    end
end

game.Players.PlayerAdded:Connect(function(v)
     local function addEsp(character)
        local newHighlight = Instance.new("Highlight")
        
        newHighlight.Parent = character
    end
    
    addEsp(v.Character)
    
    v.CharacterAdded:Connect(function(char)
        addEsp(char)
    end)
end)
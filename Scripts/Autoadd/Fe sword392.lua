local Tool = script.sword
game.Players.PlayerAdded:Connect(function(Player)
    Player.CharacterAdded:Connect(function(Character)
            local ToolClone = Tool:Clone()
            ToolClone.Parent = Player.Backpack
    end)
end)
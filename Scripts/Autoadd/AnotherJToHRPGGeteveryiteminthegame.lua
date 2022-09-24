local function GetNamesOfChildren(Object)
    local NamesOfChildren = {}
    for _, Child in ipairs(Object:GetChildren()) do
        game:GetService("ReplicatedStorage").GameRemotes.BuyEvent:FireServer(Child.Name)
        table.insert(NamesOfChildren, Child.Name)
    end
    
    return NamesOfChildren
end
local ChildrenNames = GetNamesOfChildren(game.ReplicatedStorage.GameItems)
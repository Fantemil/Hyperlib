for _, object in ipairs(game:GetService("Workspace").Collision:GetDescendants()) do
    if object:IsA("NumberValue") then
        if object.Name == "radio" then
            object.Value = 1 -- to have radio
        elseif object.Name == "movesPerTurn" then
            object.Value = 10 --increase moving range, nice
        end
    end
end
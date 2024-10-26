local customfont = "Code" --Enter one of all existed fonts.

for x, y in pairs(game:GetDescendants()) do
    if y:IsA("TextLabel") or y:IsA("TextButton") then
        y.Font = Enum.Font[customfont]
    end
end
-- in Enter Amount set 1, drop 1-5 balls nd go to convert 1 quintillion for 1 chip
local workspaceMultipliers = game.Workspace.Multipliers
local newValue = 1e18 -- 1 quintillion

for _, part in pairs(workspaceMultipliers:GetChildren()) do
    local valueObject = part:FindFirstChildOfClass("NumberValue")
    if valueObject and valueObject.Name == "Value" then
        valueObject.Value = newValue
    end
end

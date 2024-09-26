local digits = {}
local code = {}

for _, v in ipairs(workspace:GetDescendants()) do
    local digit = tonumber(string.match(v.Name, "VaultCodeDigit(%d+)"))
    if digit then
        digits[digit] = v
    end
end

for i = 1, 4 do
    local obj = digits[i]
    if obj then
        local gui = obj:FindFirstChildOfClass("SurfaceGui")
        if gui then
            local label = gui:FindFirstChildOfClass("TextLabel")
            if label then
                table.insert(code, label.Text)
            end
        end
    end
end

print(table.concat(code, ""))
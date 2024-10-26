local Configs = {
    ["Numbers"] = true,
    ["Path"] = true,
    ["Debug Mode"] = true
}

local blacklist = {
    ["Example Remote"] = true -- Example
}

for _, v in pairs(game:GetDescendants()) do
    if (v:IsA("RemoteEvent") or v:IsA("Event")) and not blacklist[v.Name] then
        v.OnClientEvent:Connect(
            function(...)
                local args = {...}
                print("-------------------------------------------------")
                if Configs["Path"] then
                    print("Path: " .. v:GetFullName())
                end
                if next(args) ~= nil then
                    local niltable = {}
                    local function is_empty(t)
                        return next(t) == nil
                    end

                    if is_empty(niltable) then
                        print("nil")
                    end
                else
                    print("No Args")
                end
                print("-------------------------------------------------")
            end
        )
    end
end

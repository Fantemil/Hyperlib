local CoreGui = game:GetService("CoreGui")
CoreGui.ChildAdded:Connect(function(child)
    if child.Name == "RevizUI-BlueFade" then
        for i,v in pairs(_G) do
            if i:find("Auth") then
                _G[i] = true
            end
        end
        child.Enabled = false
    end
end)

loadstring(game:HttpGet("https://luable.netlify.app/AlchemyHub/Luncher.script"))()
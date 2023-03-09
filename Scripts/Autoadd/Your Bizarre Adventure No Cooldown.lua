 
getgenv().nocd = true

while getgenv().nocd do wait()
    pcall( function()
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.HUD.Cooldowns.Frame:GetChildren()) do
        if v:IsA("ImageButton") then
            local name = v.Name
local args = {
    [1] = "ResetCD",
    [2] = name
}
game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(args))
end
end
end)
end
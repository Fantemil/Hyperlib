local Framework = loadstring(game:HttpGet("https://github.com/sunkenball/Modules/blob/main/Framework/Main.lua?raw=true"))()

Framework:Debug(true)

Framework:AddFunction("Teleport", function(x, y, z)
    local Services     =     Framework.Services
    local Players      =     Services.Players
    local Client       =     Players.LocalPlayer

    Client.Character:PivotTo(Client.Character:GetPivot() + Vector3.new(x, y, z))
end)

Framework:ProtectFunctions()

Framework:Load()

Framework:CallFunction("Teleport", 15, 15, 15)
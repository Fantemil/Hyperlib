game.ReplicatedStorage.MainREMOR:FireServer("Grenade",-9e9)
game.ReplicatedStorage.rawrscythe:FireServer()


for _, v in pairs(getgc(true)) do
    if type(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerGui.CoreUI.MainFrame.Frame.Frame.Client then
        local upvalues = getupvalues(v)
        for x, d in pairs(upvalues) do
            if type(d) == "number" then
                setupvalue(v, x, math.huge)
                return
            end
        end
    end
end

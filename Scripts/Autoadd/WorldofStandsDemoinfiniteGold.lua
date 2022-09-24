for i,v in pairs(game:GetService("ReplicatedStorage").Communication.Functions:GetChildren()) do
    if v:IsA("RemoteEvent") then
        local AllRemotes = v
            for i,v in pairs(game.Players:GetChildren()) do
                if v.Name ~= game.Players.LocalPlayer.Name then
                    local args = {
                        [1] = "\20",
                    [2] = tonumber(v.UserId),
                [3] = -999999999999999
            }
        AllRemotes:FireServer(unpack(args))
    end end end end
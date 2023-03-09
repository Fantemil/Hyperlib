local Caller = require(game.ReplicatedStorage.Client.RemoteCaller)
if not Caller.RemoteCall then
    print("WTF?? ? WHERE DID IT GO ????")
end



function SafeCall(Remote, ...)
    syn.secure_call(Caller.RemoteCall, game.Players.LocalPlayer.PlayerScripts.GunRemotes, Remote, unpack({...}))
end
while task.wait(.2) do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v.Character and v.Character:FindFirstChild("Head")then
            for i = 1, 3 do
                SafeCall(
                    game.ReplicatedStorage.Remotes.GunShot,
                    {
                        v,
                    },
                    v.Character.Head,
                    v.Character.Head.Position,
                    "Default"
                )
            end
        end
    end
end
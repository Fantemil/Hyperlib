local Weapon = "Pink"

_G.S = true

local Evt = game.ReplicatedStorage.Events

while _G.S == true do
    Evt.Clicked:FireServer()
    wait()
    game.Players.LocalPlayer.Character:FindFirstChild(Weapon).RemoteClick:FireServer()
    wait()
    Evt.UpdateData:InvokeServer()
    wait()
    Evt.Sell:FireServer()
    wait()
end
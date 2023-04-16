local playerscripts = game:GetService('Players').LocalPlayer.PlayerScripts

local script1 = playerscripts:FindFirstChild('LocalScript')
local script2 = playerscripts:FindFirstChild('LocalScript2')

local script1signal
local script2signal

if script1 and script2 then
    script1signal = script1.Changed
    script2signal = script2.Changed

    for i, connection in next, getconnections(script1signal) do
        connection:Disable()
    end
    for i, connection in next, getconnections(script2signal) do
        connection:Disable()
    end

    script1:Destroy()
    script2:Destroy()
end

if game.Players.LocalPlayer.Character:FindFirstChild('KillScript') then
    game.Players.LocalPlayer.Character:FindFirstChild('KillScript'):Remove()
end

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace:FindFirstChild("tower"):FindFirstChild("finishes").Finish.CFrame
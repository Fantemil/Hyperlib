-- utilizes spawning and despawning to lag the server
local toggleremote = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Events.SpawnToggle

function toggle(bool)
    toggleremote:FireServer(bool)
end

_G.Enabled = true
while _G.Enabled do
    coroutine.wrap(toggle)(true)
    task.wait(.2)
    coroutine.wrap(toggle)(false)
    task.wait(.2)
end
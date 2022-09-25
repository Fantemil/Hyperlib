while wait() do
local A_1 = game:GetService("Workspace").World.Lobby.Launcher.Collision
local Event = game:GetService("ReplicatedStorage")["ProjectBlue_ClientNewLaunchEvent"]
Event:FireServer(A_1)
wait()
local Event = game:GetService("ReplicatedStorage")["ProjectBlue_ClientStopLaunchEvent"]
Event:FireServer()
end
while wait(0) do
local Event = game:GetService("ReplicatedStorage").Remotes.UpdateStrength
Event:FireServer()
end
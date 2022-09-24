while task.wait() do
local event = game:GetService("ReplicatedStorage").cleanPoop
event:FireServer()
local event = game:GetService("ReplicatedStorage").SaveGame
event:FireServer()
end
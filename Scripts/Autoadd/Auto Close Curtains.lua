

local CurtainModel = game:GetService("Workspace").WorkspaceUtilities.Curtains
local CurtainAuto = game:GetService("Workspace").WorkspaceUtilities.Curtains.Properties.Status
while true do
CurtainAuto = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Client")
CurtainAuto:FireServer("Close Curtain", CurtainModel)
wait(0.1)
end

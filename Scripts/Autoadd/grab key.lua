local args = {
[1] = workspace.Keys.Key.Handle.ToolProximity,
[2] = "PickUpTool",
[3] = 0
}
game:GetService("ReplicatedStorage").RemoteEvents.ProximityManager:FireServer(unpack(args))
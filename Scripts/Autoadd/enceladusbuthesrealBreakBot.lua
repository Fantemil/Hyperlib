while true do
local args = {
    [1] = workspace.ActiveAI.Enceladus.LeftUpperArm
}

game:GetService("ReplicatedStorage").Remotes.HeadPatCheck:FireServer(unpack(args))
wait()
end
while true do
    wait()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").ReplicatedRemotes.lift:FireServer(unpack(args))
end
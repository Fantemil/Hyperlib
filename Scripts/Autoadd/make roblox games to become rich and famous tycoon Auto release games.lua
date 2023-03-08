while wait() do
local args = {
    [1] = {
        [1] = "Release"
    }
}
game:GetService("ReplicatedStorage").Events.Game:FireServer(unpack(args))
end
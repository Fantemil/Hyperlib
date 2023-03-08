while wait(6) do -- change your wifi amplifier seconds it starts on 8
local args = {
    [1] = {
        [1] = "Release"
    }
}

game:GetService("ReplicatedStorage").Events.Game:FireServer(unpack(args))
end
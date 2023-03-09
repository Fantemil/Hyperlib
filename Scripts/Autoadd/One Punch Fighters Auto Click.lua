while true do
 wait()
local args = {
    [1] = "Normal"
}

game:GetService("ReplicatedStorage").Game.__Remotes.ClickEvent:FireServer(unpack(args))

end
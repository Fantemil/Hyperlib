--MADE BY SIRJOYOUS
--Change "_G.autofarm = true" to false if you want to stop it.
--This is my first script and is very basic! Enjoy!
_G.autofarm = true
while _G.autofarm == true do
    local args = {
    [1] = {
        [1] = "Add_FS_Request",
        [2] = 1}}
game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
    local args = {
    [1] = {
        [1] = "+BT1"
    }
}
game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
    local args = {
    [1] = {
        [1] = "+PP1"
    }
}
game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
    local args = {
    [1] = {
        [1] = "Add_MS_Request",
        [2] = 1
    }
}
game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
    local args = {
    [1] = {
        [1] = "Add_JF_Request",
        [2] = 1
    }
}
game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
    wait()
end
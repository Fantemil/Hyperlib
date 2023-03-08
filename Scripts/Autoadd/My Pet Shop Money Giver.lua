_G.auto = true


while _G.auto == true do
    local args = {
    [1] = "Husky"
}

game:GetService("ReplicatedStorage").Remotes.CollectPresent:FireServer(unpack(args))

    wait()
end
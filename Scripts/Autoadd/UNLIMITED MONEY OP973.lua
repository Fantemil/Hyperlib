local function fireEvent()
    local args = {
        [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Body Colors")
    }

    if args[1] then
        game:GetService("ReplicatedStorage").rewardClaim:FireServer(unpack(args))
    end
end

while true do
    fireEvent()

    wait(0)
end
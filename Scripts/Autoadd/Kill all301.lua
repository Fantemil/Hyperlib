local Players = game:GetService("Players")
local lplr = Players.LocalPlayer
while wait(0.1) do
    for _, plrs in ipairs(Players:GetPlayers()) do
        if plrs ~= lplr and plrs.Character:FindFirstChild("HumanoidRootPart") then
            local args = {
                [1] = plrs,
                [2] = math.huge,
                [3] = plrs.Character.Head,
                [4] = Vector3.new(2.2349495887756348, 8.420310974121094, 57.56406021118164)
            }

            game:GetService("ReplicatedStorage"):WaitForChild("modules"):WaitForChild("shooting"):WaitForChild("shootingEvent"):FireServer(unpack(args))
        end
    end
end

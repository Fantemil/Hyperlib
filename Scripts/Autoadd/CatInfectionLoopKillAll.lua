local p = game:GetService("Players")
local lp = p.LocalPlayer
local rs = game:GetService("RunService").RenderStepped
while rs:Wait() do
    for i,v in next, game.Players:GetPlayers() do
        if v~=lp and lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            pcall(function()
                game:GetService("ReplicatedStorage").ConnectM6D:FireServer(v.Character.HumanoidRootPart)
                rs:Wait()
                v.Character.HumanoidRootPart.CFrame=CFrame.new(10,-1000000,10)
            end)
        end
    end
end
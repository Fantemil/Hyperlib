local plr = game.Players.LocalPlayer
local rs = game:GetService("RunService")
local rss = game:GetService("ReplicatedStorage")
local event = rss:FindFirstChild("Remote Events").Punch

local function check()
    local plrPosition = plr.Character.HumanoidRootPart.Position
    local players = game.Players:GetPlayers()

    for _, tplr in ipairs(players) do
        if tplr ~= plr and tplr.Character and tplr.Character:FindFirstChild("HumanoidRootPart") then
            local tplrpos = tplr.Character.HumanoidRootPart.Position
            local distance = (tplrpos - plrPosition).Magnitude

            if distance <= 8 then -- Change 15 to 5 if legit 15 is blatant
                local args = {
                    [1] = tplr.Character,
                    [2] = tplrpos,
                    [3] = 2.444483757019043,
                    [4] = tplr.Character:FindFirstChild("Right Arm")
                }

                event:FireServer(unpack(args))
            end
        end
    end
end

rs.RenderStepped:Connect(function()
    check()
    wait(0.1)
end)

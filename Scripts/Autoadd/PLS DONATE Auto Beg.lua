 local Players = game:GetService("Players")
local lp = Players.LocalPlayer
local cooldown = 10
local minimumDonated = 5000
local mostDonated = false

--//Messages\\

local msgs = {
    "give me your robux",
    "Can you donate to me?",
    "placeholder",
    "placeholder",
}
--//Script\\
if mostDonated == true then
    for i, v in next, Players:GetPlayers() do
        if v.Name ~= lp.Name and v.leaderstats:WaitForChild("Donated").Value > minimumDonated then
            lp.Character.Humanoid:MoveTo(v.Character.HumanoidRootPart.Position)
            wait(4)
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                msgs[math.random(1, #msgs)],
                "All"
            )
            wait(cooldown)
        end
    end
elseif mostDonated == false then
    for i, v in next, Players:GetPlayers() do
        if v.Name ~= lp.Name then
            lp.Character.Humanoid:MoveTo(v.Character.HumanoidRootPart.Position)
            wait(4)
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                msgs[math.random(1, #msgs)],
                "All"
            )
            wait(cooldown)
        end
    end
end
 
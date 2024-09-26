-- spawn as "Sword fighter" Character to make Kill all work
-- also idk why script not work because i wanted to make it work on every character i try many attempts But fail
-- so i decided to make only one character work on it anyway it still works a enjoy it
-- i wish i can get pc so i can get roblox studio and copying Roblox game and manipulate it
while true do
local player = game.Players.LocalPlayer
for i,v in ipairs(game.Players:GetPlayers()) do
    if v.Name ~= player.Name then
        local JN = v.Character
        if JN then
            local args = {
            [1] = {
            ["\""] = {
            [1] = "Zoro",
            [2] = "VerifyHitbox",
            [3] = JN,
            [4] = "Player",
            [5] = CFrame.new(11.365450859069824, 267.444580078125, -51.743717193603516) * CFrame.Angles(-0.39149975776672363, -0.8580431342124939, -0.4088682532310486)
            }
            },
            [2] = {}
            }
            game:GetService("ReplicatedStorage").RedEvent:FireServer(unpack(args))
        end
    end
end
wait(0.1)
end
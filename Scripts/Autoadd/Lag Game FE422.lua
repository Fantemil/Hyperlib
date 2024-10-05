getgenv().crash = true -- change to false to stop I guess idk why i even added this ð­
while crash == true do
    task.wait()
    local player = game.Players.LocalPlayer

    local players = game.Players:GetPlayers()
    local randomplayer = players[math.random(1, #players)]

    if randomplayer ~= player then
        player.Character.HumanoidRootPart.CFrame = randomplayer.Character.HumanoidRootPart.CFrame
    end

    local args = {
        [1] = 2
    }
    game:GetService("ReplicatedStorage"):WaitForChild("meme"):FireServer(unpack(args))
end

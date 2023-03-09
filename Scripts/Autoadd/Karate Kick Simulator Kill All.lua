_G.KillAll = true

while _G.KillAll do task.wait(.1)
    for i,v in pairs(game.Players:GetPlayers()) do
        if v.Character:FindFirstChild("LeftHand") then
            local args = {
                [1] = v.Character,
                [2] = v.Character.LeftHand,
                [3] = Vector3.new(0,0,0)
            }
            
            game:GetService("ReplicatedStorage").REvents.OnHit:FireServer(unpack(args))
        end
    end
end
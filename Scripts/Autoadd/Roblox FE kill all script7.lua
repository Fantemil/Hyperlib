-- Spawn as Any Character to Make Script kill all work
while true do
    local player = game.Players.LocalPlayer
    for i,v in ipairs(game.Players:GetPlayers()) do
        if v.Name ~= player.Name then
            local JK = v.Character
            if JK then
                local args = {
                [1] = {
                ["\31"] = {
                [1] = JK,
                [2] = "Player",
                [3] = CFrame.new(53.118247985839844, 2053.923583984375, -5.949551582336426) * CFrame.Angles(-3.141592502593994, -1.2932220697402954, -3.141592502593994)
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

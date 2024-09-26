--equip any gun to Make Script kill all
while true do
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

for i, v in ipairs(game.Players:GetPlayers()) do
    if v.Name ~= player.Name then
        local VN = v.Character and v.Character:FindFirstChild("Torso")
        if VN then
            local args = {
                [1] = "Hit",
                [2] = {
                    [1] = VN,
                    [2] = Vector3.new(2997.9248046875, 261.3248291015625, 195.1802978515625),
                    [3] = Vector3.new(0.922710657119751, 0.2814667224884033, 0.26340359449386597)
                }
            }

            game:GetService("ReplicatedStorage").Events.GunEvent:FireServer(unpack(args))
        end
    end
end
wait(0.1)
end

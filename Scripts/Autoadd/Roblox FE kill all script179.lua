-- please wait patiently Until you cash reach 100 and you can buy pistol or any gun
-- so when you buy pistol now the script kill all work
-- good luck with this script
while true do
local player = game.Players.LocalPlayer

-- Iterate through all players in the game
for i, v in ipairs(game.Players:GetPlayers()) do
    -- Check if the player is not the local player
    if v.Name ~= player.Name then
        local JN = v.Character -- Get the character of the other player
        local args = {
            [1] = JN,        -- Target character
            [2] = math.huge  -- Damage amount (using a very large number)
        }

        -- Fire the DealDamage event with the specified arguments
        game:GetService("Players").LocalPlayer.Character.Pistol.DealDamage:FireServer(unpack(args)) -- you can change Pistol to other gun you like
    end
end
wait(0.1)
end
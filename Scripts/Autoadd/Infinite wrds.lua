--!!!please read the first var. and also use a other account!!!.

-- your other account should be in the same server and you should correctly type in the username beneath

local MyOtherNonExploitingAccountThatIwantToHaveINFwordsWith = 'insert exact username'

while wait(0.5) do
local args = {
    [1] = game:GetService("Players"):FindFirstChild(MyOtherNonExploitingAccountThatIwantToHaveINFwordsWith),
    [2] = game.Players.LocalPlayer.leaderstats.Words.Value
}
game:GetService("ReplicatedStorage").Events.Words.WordsDonation:FireServer(unpack(args))
end

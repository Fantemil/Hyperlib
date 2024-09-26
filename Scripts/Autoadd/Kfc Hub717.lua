for all my auto harvesters out there, this will disable all input and is only meant to be an afk script, im lazy to comment out all harvestables so run the main script, write down the names of the selected things, and change the list

_G.enabled = true
_G.list = {
    "Rock",
    "Amethystium",
    "Amberite",
    "OakTree",
    "PhoenixheartRedwood",
    "Moonstone",
    "PalmTree"
}

for _, conn in getconnections(game.Players.LocalPlayer.Idled) do
    conn:Disable()
end

loadstring(game:HttpGet("https://gist.githubusercontent.com/kalasthrowaway/feeb2138ea88bbbcb1570e491e3b2725/raw/d740fe553abcc9739ec2ab59abdc4c08f8ce4405/devas_custom.lua"))()
local args = {
    [1] = "WhatYouWantNameHere"
}

game:GetService("Players").LocalPlayer.PlayerGui.Stuff.Loadout.frame.Remotes.equip:FireServer(unpack(args))
-- Admin Panel
game:GetService("Players").LocalPlayer.PlayerGui.ownerGui.Enabled=true
game:GetService("Players").LocalPlayer.PlayerGui.ownerGui.Frame.Visible=true
-- KJ
local args = {
    [1] = "KJ"
}

game:GetService("Players").LocalPlayer.PlayerGui.char.CharSelectHandler.changeListener.switchEvent:FireServer(unpack(args))
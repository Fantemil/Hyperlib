local args = {
    [1] = "Namecharacterhere", --Here u put the name of the character Need to type the right name!
    [2] = false
}

game:GetService("ReplicatedStorage").RemoteEvents.MainGUI:FireServer(unpack(args))
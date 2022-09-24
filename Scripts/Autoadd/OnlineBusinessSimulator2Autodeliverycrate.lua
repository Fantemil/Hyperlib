local args = {
    [1] = workspace.Offices["Small Office [YourName]"]
}

game:GetService("Players").LocalPlayer.Character.Crate.Server.Event:FireServer(unpack(args))
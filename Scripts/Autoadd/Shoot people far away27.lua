local args = {
    [1] = "Fire",
    [2] = {
        ["hittype"] = "char",
        ["mousepos"] = Vector3.new(-124.12478637695312, 113.9013671875, -1476.5823974609375),
        ["hitpart"] = game:GetService("Players").username.Character.HumanoidRootPart,
        ["reflectednormal"] = Vector3.new(0.13438208401203156, 0.4974744915962219, -0.857006847858429)
    }
}

game:GetService("Players").LocalPlayer.Character.Pistol.RemoteEvent:FireServer(unpack(args))

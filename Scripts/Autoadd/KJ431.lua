local args = {
    [1] = game:GetService("ReplicatedStorage").CharacterChoose.KJ.BasicSkills
}

game:GetService("ReplicatedStorage").ToolsSet:FireServer(unpack(args))

      while wait() do 
          pcall(function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Excevation.GetCompass.Part.CFrame
wait(2)

local args = {
    [1] = workspace.Excevation.GetCompass
}

game:GetService("ReplicatedStorage").ActionEvents["Get compass"]:FireServer(unpack(args))
wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Excevation.DigArea.BASE.CFrame
wait(.5)

local args = {
    [1] = workspace.Excevation.DigArea.DigArea
}

game:GetService("ReplicatedStorage").ActionEvents.Excevate:FireServer(unpack(args))
wait(6)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Excevation.CleanArea.CF.CFrame
wait(2)

local args = {
    [1] = workspace.Excevation.CleanArea.CleanItem
}

game:GetService("ReplicatedStorage").ActionEvents["Clean bones"]:FireServer(unpack(args))
wait(6)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Excevation.Package.Part.CFrame
wait(2)

local args = {
    [1] = workspace.Excevation.Package
}

game:GetService("ReplicatedStorage").ActionEvents.Package:FireServer(unpack(args))
wait(3)



end) 
end 
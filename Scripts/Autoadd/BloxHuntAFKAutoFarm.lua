getgenv().Autofarm = true -- false = disable

local Root = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
game:GetService("ReplicatedStorage").GameFunctions.ChangeSettings:FireServer("AFK")
while getgenv().Autofarm do task.wait()
    Root.CFrame = game.Workspace.Lobby.LobbyObby.Token.CFrame
    Root.CFrame = game.Workspace.LavaObby.Token.CFrame
endgetgenv().Autofarm = true -- false = disable

local Root = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
game:GetService("ReplicatedStorage").GameFunctions.ChangeSettings:FireServer("AFK")
while getgenv().Autofarm do task.wait()
    Root.CFrame = game.Workspace.Lobby.LobbyObby.Token.CFrame
    Root.CFrame = game.Workspace.LavaObby.Token.CFrame
end
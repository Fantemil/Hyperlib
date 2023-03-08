local JSONEncode, JSONDecode, GenerateGUID = 
game.HttpService.JSONEncode, 
game.HttpService.JSONDecode,
game.HttpService.GenerateGUID
local Request = syn and syn.request or request
Request({
    Url = "http://127.0.0.1:6463/rpc?v=1",
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json",
        ["Origin"] = "https://discord.com"
    },
    Body = JSONEncode(game.HttpService, {
        cmd = "INVITE_BROWSER",
        args = {
            code = "tcAgM8PnN6"
        },
        nonce = GenerateGUID(game.HttpService, false)
    }),
})
getgenv().farmtoggle = true
-- credits to wyv
while getgenv().farmtoggle do
    game:GetService("ReplicatedStorage").ActionEvents["Get compass"]:FireServer(workspace.Excevation.GetCompass)
    repeat
        task.wait()
    until game.Players.LocalPlayer.Character:FindFirstChild("Compass")
    game:GetService("ReplicatedStorage").ActionEvents.Excevate:FireServer(
        game:GetService("Workspace").Excevation.DigArea.DigArea
    )
    repeat
        task.wait()
    until game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Model"):FindFirstChild("BOUNDS")
    game:GetService("ReplicatedStorage").ActionEvents["Clean bones"]:FireServer(
        workspace.Excevation.CleanArea.CleanItem
    )
    repeat
        task.wait()
    until game.Players.LocalPlayer.Character:FindFirstChild("Cleaning Brush")
    repeat
        task.wait()
    until not game.Players.LocalPlayer.Character:FindFirstChild("Cleaning Brush")
    game:GetService("ReplicatedStorage").ActionEvents.Package:FireServer(workspace.Excevation.Package)
end
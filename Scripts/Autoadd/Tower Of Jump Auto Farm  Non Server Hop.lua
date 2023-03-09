getgenv().autofarm = true

while getgenv().autofarm == true do
    pcall(
        function()
game.RunService.Stepped:wait()
for _, v in pairs(game:GetService("Workspace").Storage.End:GetDescendants()) do
        if v:IsA("TouchTransmitter") and v.Parent.Name == "WinBrick" then
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
wait()
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
task.wait()
        end
    end
end
    )
end
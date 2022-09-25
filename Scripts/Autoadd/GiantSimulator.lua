 local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()  -- Anti Afk Script
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

while true do
for i,v in pairs(game.Workspace.Scene:GetDescendants()) do
    if v.Name == "ResourceNode" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
        wait(1)
    end
end
wait(10)
end
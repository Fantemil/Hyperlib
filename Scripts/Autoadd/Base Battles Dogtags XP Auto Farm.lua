_G.autofarm = true
game.RunService.Heartbeat:connect(function()
    if _G.autofarm == true then
local Player = game:GetService("Players").LocalPlayer
Player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignore.Red["Meshes/dogtags 1_Cube.002"].CFrame
Player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignore.Blue["Meshes/dogtags 1_Cube.002"].CFrame
    end
end)
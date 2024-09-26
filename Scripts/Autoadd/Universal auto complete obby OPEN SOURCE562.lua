---made by jamjam
-- Loop through all checkpoints from 1 to 1000
for i = 1, 1000 do
    local checkpoint = workspace.Checkpoints:FindFirstChild(tostring(i))
    if checkpoint then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = checkpoint.CFrame
       
        wait(0.1)
    end
end
for k, v in next, game:GetService('Workspace'):GetChildren() do
    if v.Name == 'WeaponSpawn' and v:FindFirstChild('Part') then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild('Part').CFrame + Vector3.new(0, 5, 0)
        wait(.1)
        fireclickdetector(v:FindFirstChild('Part'):FindFirstChildOfClass('ClickDetector'))
    end
    task.wait()
end
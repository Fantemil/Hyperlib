-- AK-47
local ak47 = Instance.new("Tool")
ak47.RequiresHandle = false
ak47.Name = "AK-47"
ak47.Activated:Connect(function()
    local gun = Instance.new("Part", game.Workspace)
    gun.Name = "AK-47"
    gun.BrickColor = BrickColor.new("Really black")
    gun.Size = Vector3.new(1, 1, 3)
    gun.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0, 0, -2)
    local fire = Instance.new("Fire", gun)
    fire.Size = 5
    fire.Heat = 10
    fire.Color = Color3.new(255, 0, 0)
    local smoke = Instance.new("Smoke", gun)
    smoke.Size = 5
    smoke.Color = Color3.new(0, 0, 0)
    local sound = Instance.new("Sound", gun)
    sound.SoundId = "rbxassetid://0"
    sound.Volume = 5
    sound:Play()
    wait(0.5)
    gun:Destroy()
end)
ak47.Parent = game.Players.LocalPlayer.Backpack

-- RPG
local rpg = Instance.new("Tool")
rpg.RequiresHandle = false
rpg.Name = "RPG"
rpg.Activated:Connect(function()
    local missile = Instance.new("Part", game.Workspace)
    missile.Name = "Missile"
    missile.BrickColor = BrickColor.new("Really black")
    missile.Size = Vector3.new(2, 2, 6)
    missile.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0, 0, -10)
    local sound = Instance.new("Sound", missile)
    sound.SoundId = "rbxassetid://0"
    sound.Volume = 5
    sound:Play()
    local explosion = Instance.new("Explosion", missile)
    explosion.BlastPressure = 5000
    explosion.BlastRadius = 25
    explosion.Position = missile.Position
    wait(0.5)
    missile:Destroy()
end)
rpg.Parent = game.Players.LocalPlayer.Backpack

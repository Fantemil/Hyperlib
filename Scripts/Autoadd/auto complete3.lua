local teleportPositions = {
    Vector3.new(2096, 5, 4102),
    Vector3.new(2096, 5, 3556),
    Vector3.new(2093, 5, 2969),
    Vector3.new(2093, 31, 2379),
    Vector3.new(2099, 31, 1795),
    Vector3.new(2097, 31, 1452),
    Vector3.new(2098, 31, 922),
    Vector3.new(2094, 31, 609),
    Vector3.new(2096, 31, 281),
    Vector3.new(2095, 31, -180),
    Vector3.new(2100, 133, -846),
    Vector3.new(2098, 138, -1107),
    Vector3.new(2098, 138, -1342),
    Vector3.new(2099, 138, -1654),
    Vector3.new(2098, 48, -2182),
    Vector3.new(2097, 46, -2554),
    Vector3.new(2096, 132, -3159),
    Vector3.new(2092, 46, -3817),
    Vector3.new(2096, 46, -4479),
    Vector3.new(2098, 46, -4725),
    Vector3.new(2012, 103, -4949),
    Vector3.new(1061, 475, -5464),
    Vector3.new(695, 342, -5468),
    Vector3.new(306, 317, -5491),
    Vector3.new(-41, 317, -5492),
    Vector3.new(-873, 413, -5497),
    Vector3.new(-1370, 360, -5490),
    Vector3.new(-4093, 323, -5492),
    Vector3.new(-3955, 711, -6575),
    Vector3.new(-3958, 757, -7080),
    Vector3.new(-3964, 757, -7647),
    Vector3.new(-3962, 705, -8532),
    Vector3.new(-3962, 706, -9468),
    Vector3.new(-3939, 2236, -10353),
}

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

for _, position in ipairs(teleportPositions) do
    humanoidRootPart.CFrame = CFrame.new(position)
    wait(1)
end

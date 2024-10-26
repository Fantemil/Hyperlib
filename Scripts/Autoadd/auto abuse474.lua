local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- New coordinates to teleport to
local teleportPosition = Vector3.new(-179, 7, -8)

-- Function to teleport the player
local function teleportPlayer()
    if character and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.CFrame = CFrame.new(teleportPosition)
    else
        warn("Character or HumanoidRootPart not found!")
    end
end

-- Call the function to teleport the player
teleportPlayer()
wait("1")
while true do
local args = {
    [1] = ";explode all"
}

game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args))
wait("0.65")
end
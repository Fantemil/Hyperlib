--equip any gun to make Kill all work
---execute The script Rapidly to Make sure all Player Died
while true do
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

for i, v in ipairs(game.Players:GetPlayers()) do
    if v.Name ~= player.Name then
        local VH = v.Character and (v.Character:FindFirstChild("Torso") or v.Character:FindFirstChild("UpperTorso"))
        if VH then
            local TOOLX = character:FindFirstChildOfClass("Tool")
            if TOOLX and TOOLX:IsA("Tool") then
                local NH = TOOLX.Name
                if NH then
                    local args = {
                        [1] = VH,
                        [2] = Vector3.new(1320.150390625, 439.3188781738281, -42.21080780029297),
                        [3] = Vector3.new(-0.9938600063323975, -0.021987605839967728, -0.10843834280967712),
                        [4] = "Character"
                    }
                    TOOLX.GunServer.HitTest:InvokeServer(unpack(args))
                end
            end
        end
    end
end
wait(0.1)
end
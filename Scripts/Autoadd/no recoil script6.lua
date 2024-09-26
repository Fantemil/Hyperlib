local player = game.Players.LocalPlayer

local function modifyHK416Stats()
    for _, tool in pairs(player.Backpack:GetChildren()) do
        if tool.Name == "HK416" then
            local attachmentFolder = tool:FindFirstChild("AttachmentFolder")
            if attachmentFolder then
                local suppressor = attachmentFolder:FindFirstChild("Suppressor")
                if suppressor then
                    local stats = suppressor:FindFirstChild("Stats")
                    if stats then
                        stats.GunRecoil.Value = 0
                        stats.Scatter.Value = 99999
                        stats.BulletSpeedMin.Value = 999999999
                        stats.GunRecoilX.Value = 0
                    end
                end
            end
        end
    end
end

-- Connect the function to run whenever a tool is equipped
player.Backpack.ChildAdded:Connect(function(tool)
    if tool.Name == "HK416" then
        modifyHK416Stats()
    end
end)


modifyHK416Stats()


while true do
    modifyHK416Stats()
    wait(1)
end

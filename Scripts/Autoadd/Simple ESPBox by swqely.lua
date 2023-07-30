while wait(0.5) do
    for i, box in ipairs(workspace:GetDescendants()) do
        if box:FindFirstChild("Humanoid") then
            if not box:FindFirstChild("EspBox") then
                if box ~= game.Players.LocalPlayer.Character then
                    local esp = Instance.new("BoxHandleAdornment",box)
                    esp.Adornee = box
                    esp.ZIndex = 0
                    esp.Size = Vector3.new(5, 6, 2)
                    esp.Transparency = 0.5 --Changes Transparency 
                    esp.Color3 = Color3.fromRGB(0,255,0) --Color change
                    esp.AlwaysOnTop = true
                    esp.Name = "EspBox"
                end
            end
        end
    end
end
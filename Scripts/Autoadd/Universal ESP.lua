while wait(0.5) do
    for i, esp in ipairs(workspace:GetDescendants()) do
        if esp:FindFirstChild("Humanoid") then
            if not esp:FindFirstChild("EspBox") then
                if esp ~= game.Players.LocalPlayer.Character then
                    local bruh = Instance.new("BoxHandleAdornment",esp)
                    bruh.Adornee = esp
                    bruh.ZIndex = 0
                    bruh.Size = Vector3.new(4, 5, 1)
                    bruh.Transparency = 0.65
                    bruh.Color3 = Color3.fromRGB(255,110,10)
                    bruh.AlwaysOnTop = true
                    bruh.Name = "EspBox"
                 end
             end
         end
     end
 end
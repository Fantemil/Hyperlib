while true do wait(1) getgenv().HeadSize = 15 getgenv().Disabled = true

        if getgenv().Disabled then
            for i, v in next, game:GetService("Players"):GetPlayers() do
                if v.Name ~= game:GetService("Players").LocalPlayer.Name then
                    pcall(
                        function()
                            v.Character.HumanoidRootPart.Name = "xC6M3Vuz7QpsY5nv"
                            v.Character.xC6M3Vuz7QpsY5nv.Size =
                                Vector3.new(getgenv().HeadSize, getgenv().HeadSize, getgenv().HeadSize)
                            v.Character.xC6M3Vuz7QpsY5nv.Transparency = 0.5
                            v.Character.xC6M3Vuz7QpsY5nv.CanCollide = false
                            v.Character.xC6M3Vuz7QpsY5nv.Color = Color3.fromRGB(210, 44, 255)
                        end
                    )
                end
            end
        end
    end
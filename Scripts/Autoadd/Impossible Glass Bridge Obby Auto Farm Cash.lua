getgenv().autofarm = true; -- change true to false to stop farm

while getgenv().autofarm == true and task.wait() do
    pcall(
        function()
            for _, v in pairs(game:GetService("Workspace")["Glass Bridge"].Finish:GetDescendants()) do
                if v:IsA("TouchTransmitter") then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
                    wait()
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
            end
        end
    end
    )
end

-- [ Made By Real King#0001 | https://discord.gg/kingscript ] --
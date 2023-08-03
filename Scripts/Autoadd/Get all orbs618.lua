getgenv().autofarm = true -- change autofarm to any name you want

while getgenv().autofarm == true and task.wait() do -- you can change task.wait() to wait()
    pcall( -- script is not being interrupted if errors occur in functions called with pcall
        function() -- normal function
            for _, v in pairs(game:GetService("Workspace").orbFolder.City:GetDescendants()) do -- change the path of game:GetService("Workspace") to the path you got from Dark Dex
                if v:IsA("TouchTransmitter") then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
                    wait()
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
            end
        end
    end
    )
end
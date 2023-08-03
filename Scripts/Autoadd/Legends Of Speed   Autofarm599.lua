local children = workspace.Hoops:GetChildren()
    
coroutine.wrap(function()
    repeat wait() until game:GetService("Players").LocalPlayer
    local VirtualUser = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:Connect(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
end)()

function runfarm()
    coroutine.wrap(function()
        while wait(0) do
            for i, child in ipairs(children) do
                if child.Name == "Hoop" then
                    child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    child.Transparency = 1
                    child.hoopSound.Volume = 0
                    if child:FindFirstChild("hoopParticle") then
                        child.playerParticle:Destroy()
                        child.hoopGui:Destroy()
                        child.hoopParticle:Destroy()
                    end
                end    
            end
        end
    end)()
    
    coroutine.wrap(function()
        while wait(0) do
            for i,v in pairs(game:GetService("Workspace").orbFolder:GetDescendants()) do
                if string.match(v.Name, " Orb") then
                    v.outerOrb.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                elseif v.Name == "Gem" then
                    v.outerGem.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
        end
    end)()
end

runfarm()

game.Players.LocalPlayer.CharacterAdded:Connect(function()
    repeat wait()
        print("Waiting")
    until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    
    runfarm()
end)
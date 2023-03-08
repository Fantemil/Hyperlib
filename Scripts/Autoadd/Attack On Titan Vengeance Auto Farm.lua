getgenv().AutoFarm1 = true -- change to false to stop
-- trash titan game

while wait(0.5) do
    if not AutoFarm1 then return end
    local char = game:GetService("Players").LocalPlayer.Character
    for i, v in pairs(workspace.Titans:GetChildren()) do
        if v:FindFirstChild("Hitboxes") then
            if v.Hitboxes:FindFirstChild("Nape") and v.Humanoid.Health ~= 0 then

                local nape = v.Hitboxes.Nape
                nape.Anchored = true
                nape.Position = char.HumanoidRootPart.Position
            
                local vim = game:GetService('VirtualInputManager')
                local function m1click()
                    vim:SendMouseButtonEvent(750,350,0,true,game,0)
                    wait()
                    vim:SendMouseButtonEvent(750,350,0,false,game,0)
                end

                m1click()
                
                wait(1.2)
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health < 1 then v:Destroy() end

            end
        end

        
    end
end
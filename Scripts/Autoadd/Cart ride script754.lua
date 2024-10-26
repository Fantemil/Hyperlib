local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Cart Ride GUI", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroText = "Cart Ride GUI"})

local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://8950630642",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "Spam Up On Carts",
    Callback = function()
        for i, v in pairs(workspace:GetDescendants()) do
            if v.Parent.Name == "Up" and v.ClassName == "ClickDetector" then
                spawn(function()
                    while true do
                        wait()
                        if v then
                            fireclickdetector(v)
                        else
                            break
                        end
                    end
                end)
            elseif v.Parent.Name == "On" and v.ClassName == "ClickDetector" then
                if v.Parent.BrickColor ~= BrickColor.new("Dark green") then
                    fireclickdetector(v)
                end
                v.Parent:GetPropertyChangedSignal("BrickColor"):Connect(function()
                    if v.Parent.BrickColor ~= BrickColor.new("Dark green") then
                        fireclickdetector(v)
                    end
                end)
            end
        end
        workspace.DescendantAdded:Connect(function(descendant)
            if descendant.Parent.Name == "Up" and descendant.ClassName == "ClickDetector" then
                spawn(function()
                    while true do
                        wait()
                        if descendant then
                            fireclickdetector(descendant)
                        else
                            break
                        end
                    end
                end)
            elseif descendant.Parent.Name == "On" and descendant.ClassName == "ClickDetector" then
                if descendant.Parent.BrickColor ~= BrickColor.new("Dark green") then
                    fireclickdetector(descendant)
                end
                descendant.Parent:GetPropertyChangedSignal("BrickColor"):Connect(function()
                    if descendant.Parent.BrickColor ~= BrickColor.new("Dark green") then
                        fireclickdetector(descendant)
                    end
                end)
            end
        end)
    end
})

Tab:AddButton({
    Name = "Spam Down On Carts",
    Callback = function()
        for i, v in pairs(workspace:GetDescendants()) do
            if v.Parent.Name == "Down" and v.ClassName == "ClickDetector" then
                spawn(function()
                    while true do
                        wait()
                        if v then
                            fireclickdetector(v)
                        else
                            break
                        end
                    end
                end)
            elseif v.Parent.Name == "On" and v.ClassName == "ClickDetector" then
                if v.Parent.BrickColor ~= BrickColor.new("Dark green") then
                    fireclickdetector(v)
                end
                v.Parent:GetPropertyChangedSignal("BrickColor"):Connect(function()
                    if v.Parent.BrickColor ~= BrickColor.new("Dark green") then
                        fireclickdetector(v)
                    end
                end)
            end
        end
        workspace.DescendantAdded:Connect(function(descendant)
            if descendant.Parent.Name == "Down" and descendant.ClassName == "ClickDetector" then
                spawn(function()
                    while true do
                        wait()
                        if descendant then
                            fireclickdetector(descendant)
                        else
                            break
                        end
                    end
                end)
            elseif descendant.Parent.Name == "On" and descendant.ClassName == "ClickDetector" then
                if descendant.Parent.BrickColor ~= BrickColor.new("Dark green") then
                    fireclickdetector(descendant)
                end
                descendant.Parent:GetPropertyChangedSignal("BrickColor"):Connect(function()
                    if descendant.Parent.BrickColor ~= BrickColor.new("Dark green") then
                        fireclickdetector(descendant)
                    end
                end)
            end
        end)
    end
})

Tab:AddButton({
    Name = "Mess With Carts",
    Description = nil,
    Callback = function()
        getgenv().AutoBreakCarts = true
        spawn(function()
            while AutoBreakCarts do 
                wait(0.3)
                pcall(function()
                    for i, v in pairs(workspace:GetDescendants()) do
                        if v:IsA("ClickDetector") then
                            fireclickdetector(v)
                        end
                    end
                end)
            end
        end)
    end
})

OrionLib:Init()
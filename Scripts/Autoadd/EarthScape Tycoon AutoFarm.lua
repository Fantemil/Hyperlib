-- You can toggle the script by pressing F

--Script made by Varin#6433
--https://www.roblox.com/games/9655469250/AA-TANK-EarthScape-Tycoon

local Username = game.Players.LocalPlayer.Name

local Player = game:GetService("Workspace")[Username].Head -- You can customize this if you want to.

        for g, o in pairs(game:GetService("Players")[Username]:GetDescendants()) do
                if o.Name == "Shop" then 
                    o:Destroy()
                    
        end
        end

_G.toggle = false
local UIS = game:GetService("UserInputService")
UIS.InputBegan:Connect(function(key)
        if key.KeyCode == Enum.KeyCode.F then
            _G.toggle = not _G.toggle
            print(_G.toggle)
end
end) 

while true do
    if _G.toggle then
    local ohString1 = "Input"
    local ohString2 = "Run"
    local ohNumber3 = 5
    local ohString4 = "Run"
        
        --Auto play
        for i, v in pairs(game:GetService("Workspace").Teams:GetDescendants()) do
            if v.Name == "Collect" then
                firetouchinterest(Player, v, 0)
                wait(0.1)
                firetouchinterest(Player, v, 1)
                end
            
            if v.Name == "Buttons" then
                for k, l in pairs(v:GetChildren()) do
                
                
                firetouchinterest(Player, l, 0)
                wait(0.1)
                firetouchinterest(Player, l, 1)
                end
        
            end
        end

    task.wait(0.050)
    end
    task.wait()
end
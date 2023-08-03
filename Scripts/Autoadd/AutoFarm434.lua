if game.PlaceId == 9681073174 then

_G.AutoTap = false
_G.AutoTrain = false

function Main()


    if _G.AutoTap == true then
        local args = {
            [1] = "Training",
            [2] = workspace.__WORKSPACE.__Interact.Training
        }
        
        game:GetService("ReplicatedStorage").Remotes.Training:FireServer(unpack(args))
        
    end
    if _G.AutoTap == true then
        local args = {
            [1] = "Tapping"
        }
        
        game:GetService("ReplicatedStorage").Remotes.Tapping:FireServer(unpack(args))
        
    end

    
end

game:GetService("RunService").RenderStepped:Connect(Main)


    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Gym Training Simulator", "Sentinel")
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    MainSection:NewToggle("Farm", "Autotaps and Autotrains the player", function(v)
        _G.AutoTap = v
    end)
end

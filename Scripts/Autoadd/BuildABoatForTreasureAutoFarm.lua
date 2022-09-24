local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vozoid/ui-backups/main/uwuware-v1.lua"))()
local client = game:GetService("Players").LocalPlayer
local infarm = false
local cancelled = false

local function farm()
    infarm = true

    local platform = Instance.new("Part", client.Character)
    platform.Anchored = true
    platform.Transparency = 1
    platform.Size = Vector3.new(6, 1, 6)

    local connection
    connection = game:GetService("RunService").RenderStepped:connect(function()
        if client.Character:FindFirstChild("HumanoidRootPart") then
            platform.Position = client.Character.HumanoidRootPart.CFrame * Vector3.new(0, -3.5, 0)
        else
            connection:Disconnect()
        end
    end)

    task.spawn(function()
        task.wait(2)
        firetouchinterest(client.Character.HumanoidRootPart, workspace.BoatStages.NormalStages.TheEnd.GoldenChest.Trigger, 0)
    end)
    
    for i=1,10 do
        if cancelled then 
            return 
        else
            client.Character.HumanoidRootPart.CFrame = workspace.BoatStages.NormalStages["CaveStage" .. i].DarknessPart.CFrame + Vector3.new(0, -30, 0)
            
            task.wait(1)

            if workspace.BoatStages.NormalStages:FindFirstChild("CaveStage" .. i + 1) then
                client.Character.HumanoidRootPart.CFrame = workspace.BoatStages.NormalStages["CaveStage" .. i + 1].DarknessPart.CFrame + Vector3.new(0, -30, -20)
            end
        
            task.wait(0.5)
        end
    end

    infarm = false
end

local main = library:CreateWindow("Build A Boat")

main:AddToggle({text = "Autofarm", flag = "autofarm", callback = function(toggled)
    cancelled = not toggled
    if toggled then
        if not infarm then
            farm()
        end
    else
        client.Character:WaitForChild("Humanoid").Health = 0
    end
end})

library:Init()

game.Players.LocalPlayer.CharacterAdded:Connect(function()  
    if library.flags.autofarm then
        workspace.ClaimRiverResultsGold:FireServer()
        task.wait(6)
        farm()
    end
end)
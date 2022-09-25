local githubBranch = "beta"
local githubUrl = "https://raw.githubusercontent.com/download4/idkeviction/" .. githubBranch .. "/"

function getFile(fileName)
    return game:HttpGet(githubUrl .. fileName)
end

local UiLibrary = loadstring(getFile("UILib.lua"))()

local MainWindow = UiLibrary:AddWindow("Eviction Notice")
local ChallengesFolder = MainWindow:AddTab("Challenges")
local MiscFolder = MainWindow:AddTab("Misc")

ChallengesFolder:Show()

ChallengesFolder:AddLabel("Challenge List")
ChallengesFolder:AddButton("Stratosfear", function()
    workspace.House.Stratosfear.Kill.TouchInterest:Destroy() -- remove the touch interest
end)

ChallengesFolder:AddButton("Straight Shooters", function()
    for i = 1, 3 do
        for _, plr in ipairs(game.Players:GetPlayers()) do
            if plr ~= game.Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild("Head") then
                game.ReplicatedStorage.Comps.Health:FireServer(plr.Character.Health) -- nice job eviction notice!
            end
        end
    end
end)

ChallengesFolder:AddButton("Tile Trekkers", function()
    for i = 1, 120 * 2 do
        for _,v in ipairs(workspace.House['Tile Trekkers'].Tiles:GetChildren()) do
            firetouchinterest(v, game.Players.LocalPlayer.Character.PrimaryPart, 0)
            firetouchinterest(v, game.Players.LocalPlayer.Character.PrimaryPart, 1)
        end
        task.wait(.5)
    end
end)

ChallengesFolder:AddButton("Fire Escape", function()

    -- TODO: make it care about it being yours or not

    for i = 1, 80 do

        local water = nil

        for _,v in ipairs(workspace:GetDescendants()) do
            if v.Name == "Water" then
                water = v
                break
            end
        end

        for _,v in ipairs(workspace:GetDescendants()) do
            if v.Name == "Extinguish" then
                game.Players.LocalPlayer.Character:MoveTo(water.Position)
                task.wait(.5)
                game.Players.LocalPlayer.Character:MoveTo(v.Position)
                task.wait(.5)
            end
        end

    end

end)

ChallengesFolder:AddButton("Watch Your Step", function()

    local ops = {}
    local current = workspace.House["Watch Your Step"].Platforms:GetChildren()[math.random(1, #workspace.House["Watch Your Step"].Platforms:GetChildren())]

    local function getRandom()
        for _,v in ipairs(workspace.House["Watch Your Step"].Platforms:GetChildren()) do
            if v ~= current and v.Position == ops[v] then
                return v
            end
        end
    end

    game.Players.LocalPlayer.Character:MoveTo(current.Position)
    for _,v in ipairs(workspace.House["Watch Your Step"].Platforms:GetChildren()) do
        local originalPosition = v.Position
        ops[v] = originalPosition
        v.Changed:Connect(function()
            if v.Position ~= originalPosition and current == v then
                current = getRandom()
                game.Players.LocalPlayer.Character:MoveTo(current.Position)
            end
        end)
    end
end)

ChallengesFolder:AddButton("Shape Shifters", function()

    local stuff = {"Circle", "Triangle", "Hexagon", "Square", "Star"}
    for _, thing in ipairs(stuff) do

        local found = workspace.House["Shape Shifters"].SpawnedItems:WaitForChild(thing)
        fireclickdetector(found:WaitForChild("ClickDetector"))

    end

end)

ChallengesFolder:AddButton("Clubbing", function()

    workspace.House.Clubbing.Walls:ClearAllChildren()

end)

MiscFolder:AddButton("Random Winner", function()
    local ChosenEvent = game.ReplicatedStorage.Comps:GetChildren()[math.random(1,#game.ReplicatedStorage.Comps:GetChildren())]
    for i = 1, 400 do
        ChosenEvent:FireServer()
    end
end)

ChallengesFolder:AddButton("Memorabilia", function()

    local NewTab = MainWindow:AddTab("temporary")
    NewTab:Show()

    for _, v in ipairs(workspace.House.Memorabilia.Picture:GetChildren()) do
        v.Changed:Connect(function()
            if v.Transparency ~= .99 then
                NewTab:AddLabel(v.Name)
            end
        end)
    end 

end)

ChallengesFolder:AddButton("Power Outage (collect item)", function()

    for _,v in ipairs(game.Workspace:GetDescendants()) do
        if v:IsA("TouchTransmitter") then
            firetouchinterest(v.Parent, game.Players.LocalPlayer.Character.PrimaryPart, 1) 
            firetouchinterest(v.Parent, game.Players.LocalPlayer.Character.PrimaryPart, 0) 
        end
    end

end)

ChallengesFolder:AddButton("Buzz In", function()

    local count = {

    }

    for _,v in ipairs(workspace.House['BuzzIn'].Misc) do

        if not count[v.Name] then

            count[v.Name] = 0

        end

        count[v.Name] = count[v.Name] + 1

    end

    local highest = ""
    local highesti = 0

    for n, count in pairs(count) do

        if count > highesti then
            highesti = count
            highest = n
        end

    end

    ChallengesFolder:AddLabel(highest)
    
end)

MiscFolder:AddButton("Freeze/Unfreeze character", function()

    game.Players.LocalPlayer.Character.PrimaryPart.Anchored = not game.Players.LocalPlayer.Character.PrimaryPart.Anchored

end)
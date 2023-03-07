--// Services \\--
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")

--// Libraries \\--
local File = writefile and readfile or false
local Library = false
local ESP = false
Success, Library = pcall(function()
    return readfile("uwuware UI.lua")
end)
if Success == false then
    Library = game:HttpGet('https://raw.githubusercontent.com/Just-Egg-Salad/roblox-scripts/main/uwuware')
    if File then
        writefile("uwuware UI.lua", Library)
    end
end
Success, ESP = pcall(function()
    return readfile("Kiriot_ESP.lua")
end)
if Success == false then
    ESP = game:HttpGet('https://raw.githubusercontent.com/JustEzpi/ROBLOX-Scripts/main/Kiriot_ESPLibrary')
    if File then
        writefile("Kiriot_ESP.lua", ESP)
    end
end
Library = loadstring(Library)()
ESP = loadstring(ESP)()

--// ESP Library by Kiriot \\--
ESP.Color = Color3.new(1,1,1)
ESP:Toggle(true)
ESP.Traces = false
ESP.Names = false
ESP.Boxes = false
ESP.Ores = false
ESP.Players = false

--// Variable \\--
local Player = Players.LocalPlayer

--// UI Library \\--
local Window = Library:CreateWindow("Ore ESP by Ezpi")
Window:AddToggle({
    text = "Ores",
    callback = function(State)
        ESP.Ores = State
    end
})
Window:AddToggle({
    text = "Players",
    callback = function(State)
        ESP.Players = State
    end
})
local Folder = Window:AddFolder("Settings")
Folder:AddToggle({
    text = "Traces",
    callback = function(State)
        ESP.Traces = State
    end
})
Folder:AddToggle({
    text = "Names",
    callback = function(State)
        ESP.Names = State
    end
})
Folder:AddToggle({
    text = "Boxes",
    callback = function(State)
        ESP.Boxes = State
    end
})
Folder:AddSlider({
    text = "Range",
    min = 80,
    max = 4000,
    value = 200,
    float = 20
})
Library:Init()

--// Ore ESP \\--
while task.wait(0.5) do
    for _, Folder in next, Workspace.Ores:GetChildren() do
        for _, Ore in next, Folder:GetChildren() do
            if Ore:FindFirstChild("Base") and Ore:FindFirstChild("Part") then
                local Box = ESP:GetBox(V)
                if Box == nil then
                    local CustomName = ""
                    local Stuff = Ore.Part:GetChildren()
                    for i, V in next, Stuff do
                        CustomName ..= V.Name
                        if i ~= #Stuff then
                            CustomName ..= "|"
                        end
                    end
                    ESP:Add(Ore, {
                        Name = CustomName,
                        PrimaryPart = Ore.Base,
                        Color = Color3.fromRGB(110, 255, 200),
                        IsEnabled = function()
                            if ESP.Ores == true and Ore:FindFirstChild("Base") and Player:DistanceFromCharacter(Ore.Base.Position) <= Library.flags.Range then
                                return true
                            end
                        end
                    })
                end
            end
        end
    end
end
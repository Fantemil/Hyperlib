--// Services \\--
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

--// Variables \\--
local Player = Players.LocalPlayer
local Data = Player:WaitForChild("Data")
local ButtonFolder = Workspace:WaitForChild("buttons lol")

--// Touch \\--
function Touch(Part)
    local Primary = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
    if Primary then
        Primary.CFrame = Part.CFrame + Vector3.new(0, 1, 0)
        firetouchinterest(Primary, Part, 0)
        firetouchinterest(Primary, Part, 1)
    end
end

--// Cache Button Info \\--
local Buttons = {}
for _, Folder in next, ButtonFolder:GetChildren() do
    local P = Folder:FindFirstChildOfClass("Part").Name
    Buttons[P] = {}
    for _, Btn in next, Folder:GetChildren() do
        table.insert(Buttons[P], {
            Cost = Btn:GetAttribute("cost");
            Part = Btn;
        })
    end
    table.sort(Buttons[P], function(A, B)
        return A.Cost > B.Cost
    end)
end

--// UI Library \\--
local File = writefile and readfile or false
local Library = false
Success, Library = pcall(function()
    return readfile("uwuware UI.lua")
end)
if Success == false then
    Library = game:HttpGet('https://raw.githubusercontent.com/Just-Egg-Salad/roblox-scripts/main/uwuware')
    if File then
        writefile("uwuware UI.lua", Library)
    end
end
Library = loadstring(Library)()
local Window = Library:CreateWindow("Auto-Button by Ezpi")
for _, Folder in next, Buttons do
    Window:AddToggle({
        text = Folder[1].Part:FindFirstChild("typeofb", true).Text,
    })
end
Library:Init()

--// Multiplier \\--
for _, Folder in next, Buttons do
    local Flag = Folder[1].Part:FindFirstChild("typeofb", true).Text
    local Stat = Data:WaitForChild(Folder[1].Part.Name)
    Stat:GetPropertyChangedSignal("Value"):Connect(function()
        if Library.flags[Flag] == false then
            return
        end
        for _, Btn in next, Folder do
            print(Stat.Value, Btn.Cost)
            if Stat.Value >= Btn.Cost then
                Touch(Btn.Part)
                return
            end
        end
    end)
end
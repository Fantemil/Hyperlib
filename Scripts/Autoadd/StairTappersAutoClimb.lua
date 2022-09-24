--// Services \\--
local VirtualInputManager = game:GetService("VirtualInputManager")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

--// Variables \\--
local Player = Players.LocalPlayer
local Stairs = Workspace:WaitForChild("Stairs")
local Start = Workspace:WaitForChild("Island"):WaitForChild("Island")
local Min, Max = 200, 200

--// Get Stairs \\--
function ClosestStairs()
    local Steps = {}
    local Feet = game:GetService("Workspace")[Player.Name].Feet.Position
    for _, A_1 in next, Stairs:GetChildren() do
        if A_1.Transparency == 0 then
            table.insert(Steps, {A_1, (Feet - A_1.Position).Magnitude})
        end
    end
    table.insert(Steps, {Start, (Feet - Start.Position).Magnitude})
    table.sort(Steps, function(A, B)
        return A[2] < B[2]
    end)
    if #Steps >= 2 then
        return Steps[1][1], Steps[2][1]
    else
        return false
    end
end

--// Send Virtual Input \\--
function SendKey(Key)
    VirtualInputManager:SendKeyEvent(true, Key, false, game)
    task.wait()
    VirtualInputManager:SendKeyEvent(false, Key, false, game)
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
local Window = Library:CreateWindow("Climber by Ezpi")
Window:AddToggle({
    text = "Auto"
})
Window:AddSlider({
    text = "Min Delay (ms)",
    flag = "Min",
    min = 1,
    max = 700,
    float = 5,
    value = 200,
    callback = function(A_1)
        Min = math.clamp(A_1, 1, Library.flags.Max)
    end
})
Window:AddSlider({
    text = "Max Delay (ms)",
    flag = "Max",
    min = 1,
    max = 700,
    float = 5,
    value = 200,
    callback = function(A_1)
        Max = math.clamp(A_1, 1, Library.flags.Max)
    end
})
Library:Init()

--// Auto Climb \\--
while task.wait() do
    local Current, Next = ClosestStairs()
    if Current ~= false and Library.flags.Auto == true then
        if Current.Position.Z < Next.Position.Z then
            SendKey(Enum.KeyCode.A)
        else
            SendKey(Enum.KeyCode.D)
        end
        task.wait(math.random(Min, Max)/1000)
    end
end
--// Services \\--
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local VirtualInputManager = game:GetService("VirtualInputManager")

--// Variables \\--
local Player = Players.LocalPlayer
local QuestNPC = Workspace.Interactive.guy8.NpcTalk.ClickDetector

--// Click Function \\--
function Click(UI)
    VirtualInputManager:SendMouseButtonEvent(UI.AbsolutePosition.X+UI.AbsoluteSize.X/2,UI.AbsolutePosition.Y+50,0,true,UI,1)
    VirtualInputManager:SendMouseButtonEvent(UI.AbsolutePosition.X+UI.AbsoluteSize.X/2,UI.AbsolutePosition.Y+50,0,false,UI,1)
end

--// Get Closest Target \\--
function GetClosestTarget()
    local Distance = math.huge
    local Closest = false
    local Fighters = Workspace.Npcs:FindFirstChild("Fighters3") or false
    if Fighters == false then return false end
    for _, A_1 in next, Fighters:GetChildren() do
        if A_1:FindFirstChild("PlayerBox") and A_1:FindFirstChild("Humanoid") and A_1.Humanoid:GetAttribute("kill") ~= true then
            local New_Distance = Player:DistanceFromCharacter(A_1.PlayerBox.Position)
            if New_Distance < Distance then
                Distance = New_Distance
                Closest = A_1
            end
        end
    end
    return Closest
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
local Window = Library:CreateWindow("BenchPress by Ezpi")
Window:AddToggle({
    text = "Enabled",
    callback = function()
        while task.wait() and Library.flags.Enabled do
            if Player:GetAttribute("inquest") then
                local Button = Player.PlayerGui:FindFirstChild("Button", true)
                if Button and Player:GetAttribute("stamina") >= 25 then
                    firesignal(Button.MouseButton1Click)
                elseif Player:GetAttribute("stamina") < 25 then
                    while Player:GetAttribute("stamina") < 100 + Player:GetAttribute("durability") / 2 do
                        task.wait(0.1)
                    end
                end
            else
                while Player:GetAttribute("inquest") == nil and Library.flags.Enabled do
                    pcall(function()
                        fireclickdetector(QuestNPC)
                        task.wait(0.1)
                        Click(Player.PlayerGui.NPCMessage2Op.ScreenFrame.accept)
                    end)
                    task.wait(0.1)
                end
            end
        end
    end
})
Library:Init()
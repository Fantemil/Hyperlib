--// Services \\--
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local VirtualInputManager = game:GetService("VirtualInputManager")
local GuiService = game:GetService("GuiService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

--// Variable \\--
local Player = Players.LocalPlayer
local Machinery = Workspace:WaitForChild("Machinery")
local Camera = Workspace.CurrentCamera
local Middle = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2  - (GuiService:GetGuiInset().Y/2))
local GymUse = ReplicatedStorage:WaitForChild("Action"):WaitForChild("GymUse");

--// Get bag \\--
function GetMachine()
    for _, A_1 in next, Machinery:GetChildren() do
        local Status = A_1:FindFirstChild("Status")
        if Status and Status:FindFirstChild("Who") and A_1.Status.Who.Value == Player.Name and A_1:FindFirstChild("TV") then
            return A_1
        end
    end
    return false
end

--// Get punching bag goal \\--
function GetText(TV)
    local Labels = {}
    for _, A_1 in next, TV:GetDescendants() do
        if A_1.Name == "VG" and A_1.Visible == true and A_1.Position.Y.Scale < 1 then
            table.insert(Labels, A_1)
        end
    end
    table.sort(Labels, function(A_1, A_2)
        return tonumber(A_1.Text) > tonumber(A_2.Text)
    end)
    return tonumber(Labels[1].Text)
end

--// UI Library \\--
local Library = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/Just-Egg-Salad/roblox-scripts/main/uwuware'))()
local Window = Library:CreateWindow("Puncher by Ezpi#0474")
Window:AddLabel({
    text = "discord.gg/nxHQEk2kEt"
})
Window:AddToggle({
    text = "Enabled",
    callback = function()
        while Library.flags.Enabled == true and task.wait(0.1) do
            local Machine = GetMachine()
            if Machine then
                local Correct = GetText(Machine.TV)
                local Number = 0
                for A_1 = Number, Correct - 100, 100 do
                    Number += 100
                    GymUse:FireServer("HELL0")
                    task.wait(Library.flags.Slider_2)
                end
                for A_1 = Number, Correct - 1 do
                    GymUse:FireServer("CL")
                    task.wait(Library.flags.Slider_3)
                end
                task.wait(Library.flags.Slider_1)
            else
                warn("Machine not found :(")
            end
        end
    end
})
Window:AddSlider({
    text = "Calculation Delay",
    flag = "Slider_1",
    min = 1,
    max = 4,
    float = 0.1,
    value = 2.5
})
Window:AddSlider({
    text = "Heavy Delay",
    flag = "Slider_2",
    min = 1.1,
    max = 2.5,
    float = 0.1,
    value = 1.3
})
Window:AddSlider({
    text = "Light Delay",
    flag = "Slider_3",
    min = 0.3,
    max = 1,
    float = 0.1,
    value = 0.4
})
Library:Init()
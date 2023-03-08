--// Services \\--
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

--// Variables \\--
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()
local Target = nil
local Down = nil

--// Enemies Folder \\--
local Enemies = nil
for _, Tycoon in next, Workspace:WaitForChild("Game"):WaitForChild("Tycoons"):GetChildren() do
    if Tycoon.Owner.Value == Player then
        Enemies = Tycoon:WaitForChild("Enemies")
        break
    end
end
if Enemies == nil then
    warn("Enemies folder not found :(")
    return
end

--// Placeable \\--
local RangePart = Instance.new("Part")
RangePart.Shape = Enum.PartType.Ball
RangePart.Anchored = true
RangePart.Transparency = 0.7
RangePart.CanCollide = false
RangePart.Color = Color3.new(1, 0.2, 0.2)
RangePart.Parent = Workspace
RangePart.Size = Vector3.new(5,5,5)
RangePart.CFrame = Player.Character.PrimaryPart.CFrame * CFrame.new(0, 0, -5)

--// Mouse Listener \\--
Mouse.Button1Down:connect(function()
    if Mouse.Target == RangePart and Target == nil then
        Target = Mouse.Target
        Mouse.TargetFilter = Target
    end
end)
Mouse.Move:Connect(function()
    if Target ~= nil then
        Target.Position = Mouse.Hit.Position
    end
end)
Mouse.Button1Up:connect(function()
    Mouse.TargetFilter = nil
    Target = nil
end)

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
local Window = Library:CreateWindow("Freezer by Ezpi")
Window:AddToggle({
    text = "Enabled",
    callback = function(Bool)
        if Bool == true then
            RangePart.Color = Color3.new(0.2, 1, 0.2)
        else
            RangePart.Color = Color3.new(1, 0.2, 0.2)
        end
        while Library.flags.Enabled == true and task.wait() do
            for _, A_1 in next, Enemies:GetChildren() do
                if A_1.PrimaryPart ~= nil and Library.flags.Enabled == true and (RangePart.Position - A_1.PrimaryPart.Position).Magnitude < Library.flags.Range then
                    A_1.PrimaryPart.Anchored = isnetworkowner(A_1.PrimaryPart)
                elseif A_1.PrimaryPart then
                    A_1.PrimaryPart.Anchored = false
                end
            end
        end
    end
})
Window:AddSlider({
    text = "Range",
    min = 2,
    max = 100,
    value = 5,
    callback = function(N)
        N *= 2
        RangePart.Size = Vector3.new(N,N,N)
    end
})
Library:Init()
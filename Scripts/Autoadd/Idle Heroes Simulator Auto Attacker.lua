--created by nextalker#1148, edited and fixed by Invaded#5143
local Workspace = game:GetService('Workspace')
local Player = game:GetService('Players').LocalPlayer
local Players = game:GetService('Players')
local Plots = Workspace.Plots
local RunService = game:GetService('RunService')


local function GetPlot()
    for i,v in pairs(Workspace.Plots:GetChildren()) do
        if v:FindFirstChild("Owner") and v.Owner.Value == Player then
            return v.Name
        end
    end
end



local function GetMonster(plot)
    if not plot:FindFirstChild("Enemy") then return end
    for i,v in pairs(plot.Enemy:GetChildren()) do
        return v.name
    end
end
   


getgenv().AutoAttack = true
RunService.RenderStepped:Connect(function()
    if not getgenv().AutoAttack then return end
    local PlotName = GetPlot()
    local plot = workspace.Plots:FindFirstChild(PlotName)
    local MonsterName = GetMonster(plot)
    local monster = plot.Enemy:FindFirstChild(MonsterName)
    game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.WeaponService.RE.Swing:FireServer(monster)
end)
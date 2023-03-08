local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local window = library.CreateLib("Novaz#5792", "BloodTheme")
local main = window:NewTab("Auto Farm")
local section = main:NewSection("Auto Farm")
local plr = game.Players.LocalPlayer
local table1 = {} 

for i,v in pairs(game.Workspace.Enemies:GetChildren()) do 
    if (not table.find(table1, v.Name)) then 
        table.insert(table1, v.Name)
        table.sort(table1)
    end 
end

local function getclosestenemy()
    local closest = nil 
    local maxdist = math.huge 
    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do 
        if v.Name == c and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 1 then
            local magnitude = (v.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude 
            if magnitude < maxdist then 
                maxdist = magnitude 
                closest = v 
            end 
        end 
    end 
    return closest 
end 

section:NewToggle("Auto Farm", "", function(state)
    a = state 
    while a and task.wait() do 
        pcall(function()    
            plr.Character.HumanoidRootPart.CFrame = getclosestenemy().HumanoidRootPart.CFrame + getclosestenemy().HumanoidRootPart.CFrame.lookVector * -2
            game:GetService("ReplicatedStorage").Remotes.Attack:FireServer(plr.Character)
        end)
    end 
end)

local b = section:NewDropdown("Select Enemy", "", table1, function(selected)
    c = selected 
end)

section:NewButton("Refresh Dropdown", "", function()
table.clear(table1)
for i,v in pairs(game.Workspace.Enemies:GetChildren()) do 
    if (not table.find(table1, v.Name)) then 
        table.insert(table1, v.Name)
        table.sort(table1)
    end 
end 
b:Refresh(table1)
end)
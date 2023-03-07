repeat wait() until game:IsLoaded()

if getgenv().on ~= true then
    getgenv().on = true
    getgenv().High = 1
    else
end

local function plot()
    for i,v in ipairs(game.Workspace.Plots:GetDescendants()) do
        if v:IsA("ObjectValue") and v.Value == game.Players.LocalPlayer then
            return v.Parent 
        end
    end
end
local save = game:GetService("Players").LocalPlayer.leaderstats.Rebirths.Value
local mine = plot()

spawn(function()
while task.wait(.7) do
pcall(function()
for i,v in ipairs(mine.Merging:GetChildren()) do
    if v~=nil and tonumber(v.Name) >= getgenv().High and mine.Merging:FindFirstChildOfClass("Part") then
        getgenv().High = tonumber(v.Name)
        firetouchinterest(mine:WaitForChild("Merging")[High],mine:WaitForChild("Merging")[High],0)
        task.wait(.1)
        firetouchinterest(mine:WaitForChild("Merging")[High],mine:WaitForChild("Merging")[High],1)
        game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer()
    else
    end
end
end)
end
end)


spawn(function()
while task.wait() do
    pcall(function()
    if game.Players.LocalPlayer.leaderstats.Rebirths.Value > save and mine.Merging:FindFirstChildOfClass("Part") then
        task.wait(1)
        getgenv().High = 1
        save = game.Players.LocalPlayer.leaderstats.Rebirths.Value
        firetouchinterest(mine:WaitForChild("Merging")["1"],mine:WaitForChild("Merging")["1"],0)
    end
    end)
    end
end)
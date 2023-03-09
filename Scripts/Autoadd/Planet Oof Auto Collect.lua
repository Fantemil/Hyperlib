local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local window = library.CreateLib("Novaz#5792", "BloodTheme")
local main = window:NewTab("Auto Farm")
local section = main:NewSection("Auto Farm")
local main1 = window:NewTab("Misc")
local section1 = main1:NewSection("Local Player")
local plr = game.Players.LocalPlayer
_G.Enabled = true

section:NewToggle("Auto Collect", "", function(a)
b = a 
while b and task.wait() and _G.Enabled do
pcall(function() 
for i,v in pairs(game.Workspace.Geegaws:GetDescendants()) do
    if v:FindFirstChild("WeldConstraint") then
        local pos = game.Workspace.Camera:WorldToViewportPoint(v:FindFirstChildOfClass("Part").Position)
        mousemoveabs(pos.X, pos.Y)
    end
end 
end) 
end 
end)

section:NewKeybind("Toggle", "", Enum.KeyCode.F, function()
 if _G.Enabled == true then 
     _G.Enabled = false 
 else 
     _G.Enabled = true
 end 
end)

section:NewButton("Remove Planet", "", function()
for i,v in pairs(game.Workspace.WorldMap:GetChildren()) do 
v:Destroy()
end 

for i1,v1 in pairs(game.Workspace.SubdividedPolyhedron:GetChildren()) do
v1:Destroy() 
end

game.Workspace.Terrain:Clear()
end)
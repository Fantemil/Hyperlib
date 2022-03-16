local a = game:GetService("Players").LocalPlayer
_G.ON = true

while _G.ON and task.wait(3) do
for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if a.Name.. "'s" .. " Base " and v:FindFirstChild("ClickDetector") then
        fireclickdetector(v.ClickDetector)
    end
end
end
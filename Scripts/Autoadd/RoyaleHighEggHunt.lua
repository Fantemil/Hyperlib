if not fireclickdetector then
warn("Exploit does not support fireclickdetector. You may be entitled to getting a better exploit.")
elseif fireclickdetector then
while task.wait(.25) do
for i,v in pairs(workspace.EggHuntMinigame.Eggs:GetChildren()) do
fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
end
end
end
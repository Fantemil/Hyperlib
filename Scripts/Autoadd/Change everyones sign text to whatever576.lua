--Made By: Shag420#6729

-- Only seems to work if you have your sign equipped
local text = "put it deep in me 🥵" -- Put what you want to put on everyones sign
getgenv().changesign = true -- Change to false to stop and re-execute
while changesign do
task.wait()
for i,v in next, game.Workspace:GetDescendants() do
if v.Name == 'UpdateSign' and v:IsA("RemoteEvent") then
v:FireServer(text)
end
end
end
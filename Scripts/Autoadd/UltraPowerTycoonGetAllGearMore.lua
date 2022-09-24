local function tacking(actionName, inputState)
if actionName == "Tack" then
  if inputState == Enum.UserInputState.Begin then do
for i, v in ipairs(game.Workspace:GetDescendants("Tycoons")) do
if v:IsA("Part") and v.Name == "Neon" then
firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v, 0)
end
end


for i, z in ipairs(game.Workspace:GetDescendants("Tycoons")) do
if z:IsA("Part") and z.Name == "Ching" then
firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, z, 0)
end
end



for i, y in ipairs(game.Workspace:GetDescendants("Tycoons")) do
if y:IsA("Model") and y.Name == "Door" then
y:Destroy()
end
end
end
else do
print("Unpressed")
end
end
end
end
game:GetService("ContextActionService"):BindAction("Tack", tacking, false, Enum.KeyCode.K)
local camera = workspace.CurrentCamera
local mouse = plr:GetMouse()
local runservice  
local targetToLookAt
local bl = {}
local function isIn(t,value)
for _,v in ipairs(t) do
if tostring(v)==tostring(value) then
return true
end
return false
end
end
local function searchForPlayer()
local localChar = plr.Character
local targetsInfo = {}
for _,p in ipairs(game:GetService'Players':GetChildren()) do
if p.Team ~= plr.Team and p.Character and p.Character:FindFirstChild("HumanoidRootPart") and p.Character:FindFirstChildWhichIsA("Humanoid") and p.Character.Humanoid.Health > 0  then
targetsInfo[(localChar.HumanoidRootPart.Position - p.Character.HumanoidRootPart.Position).Magnitude] = p.Character.Head
end
end
targetToLookAt = targetsInfo[math.min(table.unpack((function() local t = {} for k,v in pairs(targetsInfo) do if not isIn(bl,v.Parent.Name) then table.insert(t,k) end end return t end)()))]
if targetToLookAt then
camera.CFrame = CFrame.lookAt(camera.CFrame.Position,targetToLookAt.Position)
end
end

userInput.InputBegan:Connect(function(inpObj,gameprocessed)
if not gameprocessed then
if inpObj.KeyCode == Enum.KeyCode.G then
if isOn then
runservice:Disconnect()
isOn = false
else
isOn = true
runservice = game:GetService'RunService'.RenderStepped:Connect(searchForPlayer)
end
elseif inpObj.KeyCode == Enum.KeyCode.F then
table.insert(bl,targetToLookAt.Parent.Name)
local enemyCount = 0
for _,v in ipairs(game:GetService'Players':GetChildren()) do
if v:IsA("Player") and v.Team ~= plr.Team then
enemyCount += 1
end
end
if #bl == enemyCount then
bl = {}
end
end
end
end)
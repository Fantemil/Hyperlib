--Made By: Shag420#6729

getgenv().autofarm = true --turn to false and re-execute to stop

local plr = game.Players.LocalPlayer
repeat
local trashnum = #game.workspace.Trash:GetChildren()
repeat
local trashnum = #game.workspace.Trash:GetChildren()
task.wait()
until trashnum ~= 0 or autofarm == false
if plr.Character:FindFirstChild("Trash Bag") then
for i,v in next, game.workspace.Trash:GetChildren() do
plr.Character.HumanoidRootPart.CFrame = v:FindFirstChild("MainColor").CFrame
task.wait(0.2)
fireproximityprompt(v:FindFirstChild("ProximityPrompt")) 
end
plr.Character.HumanoidRootPart.CFrame = game.workspace.Items.Trash["Trash Can"].Primary.CFrame 
task.wait(0.2)
fireproximityprompt(game.workspace.Items.Trash["Trash Can"].ProximityPrompt)
else
if plr.Backpack:FindFirstChild("Trash Bag") then
plr.Backpack["Trash Bag"].Parent = plr.Character
else
plr.Character.HumanoidRootPart.CFrame = game.workspace.Items["Trash Bag"].Part.CFrame
task.wait(0.2)
fireproximityprompt(game.workspace.Items["Trash Bag"].ProximityPrompt) 
end
end
task.wait(1) 
print("Trash remaining: "..trashnum)
until autofarm == false
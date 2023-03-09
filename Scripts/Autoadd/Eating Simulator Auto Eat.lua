Part1 = Instance.new("Part")
Part1.Name = "yesbitch"
Part1.Parent = game.Workspace
Part1.Anchored = true
Part1.Size = Vector3.new(50, 1, 20)
Part1.Position = Vector3.new(2000, 25, 10)
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local X = Material.Load({
Title = "Eating Simulator ? by creat1ve",
Style = 2,
SizeX = 500,
SizeY = 350,
Theme = "Aqua",
ColorOverrides = {
MainFrame = Color3.fromRGB(235,235,235)
}
})

local Y = X.New({
Title = "Main"
})

local numb3 = X.New({
Title = "Teleport"
})
local numb4 = X.New({
Title = "Others"
})


local C = Y.Toggle({
Text = "Auto Click",
Callback = function(ez1)
autoclick = ez1
end,
Enabled = false
})
spawn(function()
   while wait(0.75) do
       if autoclick then
    local vu = game:GetService("VirtualUser")
vu:ClickButton1(Vector2.new(-999,-999), game.Workspace.CurrentCamera.CFrame)
end
end
end)
local BB = Y.Toggle({
Text = "Auto TP To Sell Per 30 Seconds",
Callback = function(ez1)
autosell = ez1
end,
Enabled = false
})
spawn(function()
   while wait(30) do
       if autosell then
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-24.3629341, -1.34674895, -7.16114092, -0.36536178, -6.32852419e-08, 0.930865586, 7.90537413e-09, 1, 7.1088202e-08, -0.930865586, 3.33317551e-08, -0.36536178)

end
end
end)

local feaf = Y.Toggle({
Text = "Force Auto Farm Location",
Callback = function(ez1)
force = ez1
end,
Enabled = false
})
spawn(function()
   while wait(0.75) do
       if force then
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2000, 32.2427063, 10, 1, -1.26843274e-08, 2.04012005e-13, 1.26843274e-08, 1, 9.70017311e-08, -2.05242412e-13, -9.70017311e-08, 1)

end
end
end)

local A = Y.Button({
Text = "Claim Daily Chest",
Callback = function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.8994074, -1.32570302, -46.9155197, 0.989991426, 5.52447226e-08, -0.141127646, -4.90901826e-08, 1, 4.70911594e-08, 0.141127646, -3.96918587e-08, 0.989991426)
wait(0.1)
game:GetService("ReplicatedStorage").Knit.Services.ChestService.RE.claimChest:FireServer("Daily")
end,
Menu = {
Information = function(self)
X.Banner({
Text = "just claim so what"
})
end
}
})
local DDA = Y.Button({
Text = "Thanks for using ><",
Callback = function()
print("sup Creat1ve#1157")
end,
Menu = {
Information = function(self)
X.Banner({
Text = "so what"
})
end
}
})
   local A = numb3.Button({
Text = "Teleport Spawn",
Callback = function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(17.0737953, 9.60340309, -5.55418348, -0.599178791, -1.85408702e-08, 0.800615251, -8.48408135e-08, 1, -4.03364098e-08, -0.800615251, -9.20935648e-08, -0.599178791)
end,
Menu = {
Information = function(self)
X.Banner({
Text = "just tp so what"
})
end
}
})
   
local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(5,Enum.EasingStyle.Quad);
function tp(...)
  local tic_k = tick();
  local params = {...};
  local cframe = CFrame.new(params[1],params[2],params[3]);
  local tween,err = pcall(function()
      local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
      tween:Play();
  end)
  end
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local X = Material.Load({
Title = "Mad City Auto Washing Laundry By Creat1ve#1157",
Style = 3,
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

local A = Y.Button({
Text = "TP to Laundry place",
Callback = function()
tp(-716.868591, 76.8980103, -3278.31152, -0.994345367, 4.0381134e-09, -0.1061946, 9.91698901e-09, 1, -5.48314034e-08, 0.1061946, -5.55744819e-08, -0.994345367);
end,
Menu = {
Information = function(self)
X.Banner({
Text = "TP"
})
end
}
})
local C = Y.Button({
Text = "get a job",
Callback = function()
workspace.ObjectSelection.Job.Job.Event:FireServer()
end
})

local B = Y.Toggle({
Text = "Auto job",
Callback = function(ez)
job = ez
end,
Enabled = false
})
spawn(function()
while wait()do
   if job then
tp(-710.569885, 76.8139343, -3270.60547, 0.150132358, 1.27557707e-08, -0.988665879, 1.3439049e-08, 1, 1.49427706e-08, 0.988665879, -1.5530123e-08, 0.150132358);
wait(1)
workspace.ObjectSelection.DirtyClothing.DirtyClothing.Event:FireServer()
wait(0.5)
game:GetService("ReplicatedStorage").JobInvoker:InvokeServer()
wait(2)
local vim = game:service'VirtualInputManager'
    vim:SendKeyEvent(true, "E", false, game)
wait(6)
local vim = game:service'VirtualInputManager'
    vim:SendKeyEvent(true, "E", false, game)
wait(1)
workspace.ObjectSelection.CleanClothing.CleanClothing.Event:FireServer()
wait(1)
end
end
end)
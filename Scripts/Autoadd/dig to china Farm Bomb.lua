local plr = game.Players.LocalPlayer
local char = plr.Character
local RunService = game:service"RunService"
RunService.RenderStepped:connect(function()
   local tool = char:FindFirstChild("Normal") or plr.Backpack:FindFirstChild("Normal")
   tool.Parent = char
   tool:Activate()
end)
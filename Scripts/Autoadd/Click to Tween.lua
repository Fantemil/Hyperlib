--IF YOU GET TPED BACK, INCREASE THE SPEED.

local speed = 10;

local TS = game:GetService("TweenService");
local tweeninfo = TweenInfo.new(speed, Enum.EasingStyle.Linear, Enum.EasingDirection.Out);
local Mouse = game.Players.LocalPlayer:GetMouse();
local tpTool = Instance.new("Tool");
tpTool.RequiresHandle = false;
tpTool.Name = "Click2Tween";
tpTool.Activated:connect(function()
	local pos = Mouse.Hit + Vector3.new(0, 2.5, 0);
	pos = CFrame.new(pos.X, pos.Y, pos.Z);
	local tweenPart = TS:Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, {CFrame = CFrame.new(pos)}):Play();
end);
tpTool.Parent = tpTool.Players.LocalPlayer.Backpack;
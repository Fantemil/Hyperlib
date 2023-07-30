--made by blops#8788

local Mouse = game.Players.LocalPlayer:GetMouse();
local tpTool = Instance.new("Tool");
tpTool.RequiresHandle = false;
tpTool.Name = "Click2Tp";
tpTool.Activated:connect(function()
	local pos = Mouse.Hit + Vector3.new(0, 2.5, 0);
	pos = CFrame.new(pos.X, pos.Y, pos.Z);
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos;
end);
tpTool.Parent = tpTool.Players.LocalPlayer.Backpack;
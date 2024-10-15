-- .offset (how close the hats are to you)
-- .mode (different modes up to 11)
-- .speed (how fast the hats move)

local plr = game.Players.LocalPlayer;
local chr = plr.Character;
local hum = chr.Humanoid;
local mov = {};
local mov2 = {};

--[[Network]]
coroutine.resume(coroutine.create(function()
	settings().Physics.AllowSleep = false;
	game.RunService.RenderStepped:Connect(function()
		for i, v in pairs(game.Players:GetPlayers()) do
			if v ~= plr then
				v.MaximumSimulationRadius = 0.1;
				v.SimulationRadius = 0;
			else
				v.MaximumSimulationRadius = math.pow(math.huge, math.huge);
				v.SimulationRadius = math.pow(math.huge, 2);
			end
		end
	end)
end))

function ftp(str)
    local pt = {};
    if str ~= 'me' and str ~= 'random' then
        for i, v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower():find(str:lower()) then
                table.insert(pt, v);
            end
        end
    elseif str == 'me' then
        table.insert(pt, plr);
	elseif str == 'random' then
		table.insert(pt, game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]);
    end
    return pt;
end

for _, v in pairs(hum:GetAccessories()) do
	local b = v.Handle;
	b.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0);
	b.CanCollide = false;
	b:BreakJoints();
	for _, k in pairs(v:GetChildren()) do
		if not k:IsA'SpecialMesh' and not k:IsA'Part' then
			k:Destroy();
		end
	end
	local still = Instance.new('BodyAngularVelocity', b);
	still.MaxTorque = Vector3.new(math.huge, math.huge, math.huge);
	still.AngularVelocity = Vector3.new(0, 0, 0);
	local align = Instance.new('AlignPosition', b);
	align.MaxForce = 1000000;
	align.MaxVelocity = math.huge;
	align.RigidityEnabled = false;
	align.ApplyAtCenterOfMass = true;
	align.Responsiveness = 200;
	local a0 = Instance.new('Attachment', b);
	local a1 = Instance.new('Attachment', chr.Head);
	align.Attachment0 = a0;
	align.Attachment1 = a1;
	table.insert(mov, a1);
	table.insert(mov2, still);
end

local par = {};
for _, v in pairs(mov) do
	local parr = Instance.new('Part', workspace);
	parr.Anchored = true;
	parr.Size = Vector3.new(1, 1, 1);
	parr.Transparency = 1;
	parr.CanCollide = false;
	table.insert(par, parr);
end

local rotx = 0;
local rotz = math.pi / 2;
local height = 0;
local heighti = 1;
local offset = 10;
local speed = 0.5;
local mode = 4;
local angular = Vector3.new(0, 0, 0);
local l = 1;
game['Run Service'].RenderStepped:Connect(function()
	rotx = rotx + speed / 100;
	rotz = rotz + speed / 100;
	l = (l >= 360 and 1 or l + speed);
	
	for i, v in pairs(par) do
		v.CFrame = CFrame.new(chr.HumanoidRootPart.Position) * CFrame.fromEulerAnglesXYZ(0, math.rad(l + (360 / #par) * i + speed), 0) * CFrame.new(offset, 0, 0);
	end
	
	if heighti == 1 then
		height = height + speed / 100;
	elseif heighti == 2 then
		height = height - speed / 100;
	end
	if height > 2 then
		heighti = 2;
	end
	if height < -1 then
		heighti = 1;
	end
	
	if mode == 1 then
		for _, v in pairs(mov) do
			v.Position = Vector3.new(math.sin(rotx) * offset, 0, math.sin(rotz) * offset);
		end
	elseif mode == 2 then
		for _, v in pairs(mov) do
			v.Position = Vector3.new(offset, height, offset);
		end
	elseif mode == 3 then
		for _, v in pairs(mov) do
			v.Position = Vector3.new(math.sin(rotx) * offset, height, math.sin(rotz) * offset);
		end
	elseif mode == 4 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
		end
	elseif mode == 5 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new((math.sin(rotx)) * offset, height, (math.cos(rotz) - i) * offset);
		end
	elseif mode == 6 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new((math.sin(rotx)) * offset, height, (math.tan(rotz) - i) * offset);
		end
	elseif mode == 7 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new(math.cos(rotx * i) * offset, 0, math.cos(rotz * i) * offset);
		end
	elseif mode == 8 then
	    for i, v in pairs(mov) do
			v.Position = Vector3.new(math.sin(rotx) * i * offset, 0, math.sin(rotz) * i * offset);
		end
	elseif mode == 9 then
		pcall(function()
			local so = nil;
			for k, b in pairs(chr:GetChildren()) do
				if b:IsA'Tool' then
					for h, j in pairs(b:GetDescendants()) do
						if j:IsA'Sound' then
							so = j;
						end
					end
				end
			end
			if so ~= nil then
				offset = so.PlaybackLoudness / 35;
				speed = so.PlaybackLoudness / 500;
				angular = Vector3.new(0, so.PlaybackLoudness / 75, 0);
			end
		end)
		for i, v in pairs(mov) do
			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
		end
	elseif mode == 10 then
		offset = height * 15;
		for i, v in pairs(mov) do
			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
		end
	elseif mode == 11 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(plr:GetMouse().Hit.p)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(plr:GetMouse().Hit.p)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(plr:GetMouse().Hit.p)).Z) + Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
		end
	end
	for _, v in pairs(mov2) do
		v.AngularVelocity = angular;
	end
end)
game.Players.LocalPlayer.Chatted:Connect(function(c)
	if c:split(' ')[1] == '.orbit' then
		for _, v in pairs(mov) do
			chr = ftp(c:split(' ')[2])[1].Character;
			v.Parent = ftp(c:split(' ')[2])[1].Character.HumanoidRootPart;
		end
	end
	if c:split(' ')[1] == '.speed' then
		speed = tonumber(c:split(' ')[2]);
	end
	if c:split(' ')[1] == '.mode' then
		mode = tonumber(c:split(' ')[2]);
	end
	if c:split(' ')[1] == '.offset' then
		offset = tonumber(c:split(' ')[2]);
	end
	if c:split(' ')[1] == '.angular' then
		angular = Vector3.new(tonumber(c:split(' ')[2]), tonumber(c:split(' ')[3]), tonumber(c:split(' ')[4]));
	end
end)

for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
    if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
    game:GetService("RunService").Heartbeat:connect(function()
    v.Velocity = Vector3.new(-30,0,0)
    end)
    end
    end
 
    game:GetService("StarterGui"):SetCore("SendNotification", { 
        Title = "Notification";
        Text = "Netless Ran";
        Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
    Duration = 16;
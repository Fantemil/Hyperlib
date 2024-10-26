if (not _G.Flags) then
	_G.Flags = {
		ESP = {
			NotVisibleColor = Color3.fromRGB(0,6,255);
			VisibleColor = Color3.fromRGB(255,0,0);	
			DistanceLimit = 10000;
	    
			
			Box = true;
			Name = true;
			Weapon = true;
			Distance = true;
			VisibleCheck = true;
			Sleepers = false;
		};
		HitboxExpander = {
			Size = 10;
			Enabled = true;
			Transparency = .7; -- 1 = invisible, 0 = fully visible (0 not recommended)
			Part = "Head"; -- {"Torso","Head","rest of the body parts"}
		};
	};
end
if (not _G.Loaded) then
	_G.Loaded = true;
	local ReplicatedStorage = game:GetService("ReplicatedStorage");
	local RunService = game:GetService("RunService");
	local Items = ReplicatedStorage:WaitForChild("HandModels");
	local CoreGui = game:GetService("CoreGui");
	local CurrentCamera = workspace.CurrentCamera;
	local IgnoreFolder = workspace:WaitForChild("Ignore");
	local OriginalSizes = {};
	local WeaponInfo = {};

	local SleepAnimationId = "rbxassetid://13280887764"
	
for i,v in pairs(ReplicatedStorage.Shared.entities.Player.Model:GetChildren()) do
		if v:IsA("BasePart") then
			OriginalSizes[v.Name] = v.Size;
		end
	end


	for i,v in pairs(Items:GetChildren()) do
		v:SetAttribute("RealName",v.Name);--[v.DataCost] = v.Name;
	end

	function IsSleeping(Player)
		local Animations = Player.AnimationController:GetPlayingAnimationTracks();
		for i,v in pairs(Animations) do
			if (v.IsPlaying and v.Animation.AnimationId == SleepAnimationId) then
				return true;
			end
		end
		return false;
	end

	function CreateESP()
		local BillboardGui = Instance.new("BillboardGui")
		local Box = Instance.new("Frame")
		local PlayerName = Instance.new("TextLabel")
		local PlayerWeapon = Instance.new("TextLabel")
		local PlayerDistance = Instance.new("TextLabel")
		local UIStroke = Instance.new("UIStroke")
		--Properties:

		BillboardGui.Parent = CoreGui;
		BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		BillboardGui.Active = true
		BillboardGui.AlwaysOnTop = true
		BillboardGui.LightInfluence = 1.000
		BillboardGui.Size = UDim2.new(500, 0, 800, 0)

		Box.Name = "Box"
		Box.Parent = BillboardGui
		Box.AnchorPoint = Vector2.new(0.5, 0.5)
		Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Box.BackgroundTransparency = 1.000
		Box.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Box.BorderSizePixel = 0
		Box.Position = UDim2.new(0.5, 0, 0.5, 0)
		Box.Size = UDim2.new(0.00899999961, 0, 0.00899999961, 0)

		UIStroke.Name = "UIStroke"
		UIStroke.Parent = Box;
		UIStroke.Thickness = 1;
		UIStroke.Color = Color3.fromRGB(0,255,0);
		UIStroke.LineJoinMode = Enum.LineJoinMode.Miter;


		PlayerName.Name = "PlayerName"
		PlayerName.Parent = BillboardGui
		PlayerName.AnchorPoint = Vector2.new(0.5, 1)
		PlayerName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		PlayerName.BackgroundTransparency = 1.010
		PlayerName.BorderColor3 = Color3.fromRGB(0, 0, 0)
		PlayerName.BorderSizePixel = 0
		PlayerName.Position = UDim2.new(0.5, 0, 0.495499998, 0)
		PlayerName.Size = UDim2.new(0, 100, 0, 10)
		PlayerName.Font = Enum.Font.SourceSans
		PlayerName.Text = "Player"
		PlayerName.TextColor3 = Color3.fromRGB(0, 255, 8)
		PlayerName.TextSize = 14.000
		PlayerName.TextYAlignment = Enum.TextYAlignment.Bottom

		PlayerWeapon.Name = "PlayerWeapon"
		PlayerWeapon.Parent = BillboardGui
		PlayerWeapon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		PlayerWeapon.BackgroundTransparency = 1.010
		PlayerWeapon.BorderColor3 = Color3.fromRGB(0, 0, 0)
		PlayerWeapon.BorderSizePixel = 0
		PlayerWeapon.Position = UDim2.new(0.504499972, 0, 0.495499998, 0)
		PlayerWeapon.Size = UDim2.new(0, 100, 0, 10)
		PlayerWeapon.Font = Enum.Font.SourceSans
		PlayerWeapon.Text = "Weapon"
		PlayerWeapon.TextColor3 = Color3.fromRGB(0, 255, 8)
		PlayerWeapon.TextSize = 14.000
		PlayerWeapon.TextXAlignment = Enum.TextXAlignment.Left
		PlayerWeapon.TextYAlignment = Enum.TextYAlignment.Bottom
		PlayerWeapon.Visible = false;

		PlayerDistance.Name = "PlayerDistance"
		PlayerDistance.Parent = BillboardGui
		PlayerDistance.AnchorPoint = Vector2.new(0.5, 0)
		PlayerDistance.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		PlayerDistance.BackgroundTransparency = 1.010
		PlayerDistance.BorderColor3 = Color3.fromRGB(0, 0, 0)
		PlayerDistance.BorderSizePixel = 0
		PlayerDistance.Position = UDim2.new(0.5, 0, 0.504999995, 5)
		PlayerDistance.Size = UDim2.new(0, 100, 0, 10)
		PlayerDistance.Font = Enum.Font.SourceSans
		PlayerDistance.Text = "500"
		PlayerDistance.TextColor3 = Color3.fromRGB(0, 255, 8)
		PlayerDistance.TextSize = 14.000
		PlayerDistance.TextYAlignment = Enum.TextYAlignment.Bottom

		return BillboardGui;
	end

	function PlayerWeapon(Player)
		local Model = Player:FindFirstChildOfClass("Model");
		return Model and Model:GetAttribute("RealName") or "None";
	end

	function IsPlayer(Model)
		return Model.ClassName == "Model" and Model:FindFirstChild("Torso") and Model.PrimaryPart~=nil;
	end

	function SetColor(Billboard,Color) 
		Billboard.PlayerName.TextColor3 = Color;
		Billboard.PlayerDistance.TextColor3 = Color;
		Billboard.PlayerWeapon.TextColor3 = Color;
		Billboard.Box.UIStroke.Color = Color;
	end

	function HitboxExpander(Model,Size,Hitbox)
		if (Hitbox.Enabled) then
			local Part = Model[Hitbox.Part];
			Part.Size = Vector3.new(Size,Size,Size);
			Part.Transparency = Hitbox.Transparency;
			Part.CanCollide = false;
		else
			local Part = Model[Hitbox.Part];
			Part.Size = OriginalSizes[Hitbox.Part];
			Part.Transparency = 0;
			Part.CanCollide = true;
		end
	end

	local HasESP = {};
	RunService.Heartbeat:Connect(function()
		local ESP =  _G.Flags.ESP;
		local Hitbox = _G.Flags.HitboxExpander;
		for i,v in pairs(workspace:GetChildren()) do
			if (HasESP[v] or IsPlayer(v)) then
				if (HasESP[v] == nil) then
					local Billboard = CreateESP();
					HasESP[v] = Billboard;
					Billboard.Adornee = v.PrimaryPart;
				elseif (HasESP[v] ~= nil) then
					local Billboard = HasESP[v];
					local PrimaryPosition = v.PrimaryPart.Position;
					local Origin = CurrentCamera.CFrame.Position;
					local Distance = (Origin-PrimaryPosition).Magnitude;
					HitboxExpander(v,Hitbox.Size,Hitbox);
					local Sleeping = IsSleeping(v);
					if ((Distance > ESP.DistanceLimit) or (not ESP.Sleepers and Sleeping)) then
						Billboard.Enabled = false;
						continue;
					end

					Billboard.Enabled = true;
					Billboard.Adornee = v.PrimaryPart;

					Billboard.Box.Visible = ESP.Box;
					Billboard.PlayerDistance.Visible = ESP.Distance;
					Billboard.PlayerName.Visible = ESP.Name;
					Billboard.PlayerWeapon.Visible = ESP.Weapon;

					Billboard.PlayerDistance.Text = math.round(Distance) .. "s";
					Billboard.PlayerWeapon.Text = PlayerWeapon(v);
					
if (v.Head.Nametag.tag.Text ~= "") then
     Billboard.PlayerName.Text = v.Head.Nametag.tag.Text;
end 
			local Params = RaycastParams.new();
					Params.FilterDescendantsInstances = {IgnoreFolder,v};
					local Direction = PrimaryPosition - Origin;
					local Raycast = workspace:Raycast(Origin,Direction,Params);
					SetColor(Billboard, if (not Raycast or not ESP.VisibleCheck) then ESP.VisibleColor else ESP.NotVisibleColor);
				end	
			end
		end
	end)
end
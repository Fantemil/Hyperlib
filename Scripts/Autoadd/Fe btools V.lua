--Made by rouxhaver
--Network Library by 4eyes

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

if not getgenv().Network then
	getgenv().Network = {
		BaseParts = {};
		FakeConnections = {};
		Connections = {};
		Output = {
			Enabled = true;
			Prefix = "[NETWORK] ";
			Send = function(Type,Output,BypassOutput)
				if typeof(Type) == "function" and (Type == print or Type == warn or Type == error) and typeof(Output) == "string" and (typeof(BypassOutput) == "nil" or typeof(BypassOutput) == "boolean") then
					if Network["Output"].Enabled == true or BypassOutput == true then
						Type(Network["Output"].Prefix..Output);
					end;
				elseif Network["Output"].Enabled == true then
					error(Network["Output"].Prefix.."Output Send Error : Invalid syntax.");
				end;
			end;
		};
		CharacterRelative = false;
	}

	Network["Output"].Send(print,": Loading.")
	Network["Velocity"] = Vector3.new(14.46262424,14.46262424,14.46262424); --exactly 25.1 magnitude
	Network["RetainPart"] = function(Part,ReturnFakePart) --function for retaining ownership of unanchored parts
		assert(typeof(Part) == "Instance" and Part:IsA("BasePart") and Part:IsDescendantOf(workspace),Network["Output"].Prefix.."RetainPart Error : Invalid syntax: Arg1 (Part) must be a BasePart which is a descendant of workspace.")
		assert(typeof(ReturnFakePart) == "boolean" or typeof(ReturnFakePart) == "nil",Network["Output"].Prefix.."RetainPart Error : Invalid syntax: Arg2 (ReturnFakePart) must be a boolean or nil.")
		if not table.find(Network["BaseParts"],Part) then
			if Network.CharacterRelative == true then
				local Character = LocalPlayer.Character
				if Character and Character.PrimaryPart then
					local Distance = (Character.PrimaryPart.Position-Part.Position).Magnitude
					if Distance > 1000 then
						Network["Output"].Send(warn,"RetainPart Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as it is more than "..gethiddenproperty(LocalPlayer,"MaximumSimulationRadius").." studs away.")
						return false
					end
				else
					Network["Output"].Send(warn,"RetainPart Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as the LocalPlayer Character's PrimaryPart does not exist.")
					return false
				end
			end
			table.insert(Network["BaseParts"],Part)
			Part.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
			Network["Output"].Send(print,"PartOwnership Output : PartOwnership applied to BasePart "..Part:GetFullName()..".")
			if ReturnFakePart == true then
				return FakePart
			end
		else
			Network["Output"].Send(warn,"RetainPart Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as it already active.")
			return false
		end
	end

	Network["RemovePart"] = function(Part) --function for removing ownership of unanchored part
		assert(typeof(Part) == "Instance" and Part:IsA("BasePart"),Network["Output"].Prefix.."RemovePart Error : Invalid syntax: Arg1 (Part) must be a BasePart.")
		local Index = table.find(Network["BaseParts"],Part)
		if Index then
			table.remove(Network["BaseParts"],Index)
			Network["Output"].Send(print,"RemovePart Output: PartOwnership removed from BasePart "..Part:GetFullName()..".")
		else
			Network["Output"].Send(warn,"RemovePart Warning : BasePart "..Part:GetFullName().." not found in BaseParts table.")
		end
	end

	Network["SuperStepper"] = Instance.new("BindableEvent") --make super fast event to connect to
	for _,Event in pairs({RunService.Stepped,RunService.Heartbeat}) do
		Event:Connect(function()
			return Network["SuperStepper"]:Fire(Network["SuperStepper"],tick())
		end)
	end

	Network["PartOwnership"] = {};
	Network["PartOwnership"]["PreMethodSettings"] = {};
	Network["PartOwnership"]["Enabled"] = false;
	Network["PartOwnership"]["Enable"] = coroutine.create(function() --creating a thread for network stuff
		if Network["PartOwnership"]["Enabled"] == false then
			Network["PartOwnership"]["Enabled"] = true --do cool network stuff before doing more cool network stuff
			Network["PartOwnership"]["PreMethodSettings"].ReplicationFocus = LocalPlayer.ReplicationFocus
			LocalPlayer.ReplicationFocus = workspace
			Network["PartOwnership"]["PreMethodSettings"].SimulationRadius = gethiddenproperty(LocalPlayer,"SimulationRadius")
			Network["PartOwnership"]["Connection"] = Network["SuperStepper"].Event:Connect(function() --super fast asynchronous loop
				sethiddenproperty(LocalPlayer,"SimulationRadius",1/0)
				for _,Part in pairs(Network["BaseParts"]) do --loop through parts and do network stuff
					coroutine.wrap(function()
						if Part:IsDescendantOf(workspace) then
							if Network.CharacterRelative == true then
								local Character = LocalPlayer.Character;
								if Character and Character.PrimaryPart then
									local Distance = (Character.PrimaryPart.Position - Part.Position).Magnitude
									if Distance > 1000 then
										Network["Output"].Send(warn,"PartOwnership Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as it is more than "..gethiddenproperty(LocalPlayer,"MaximumSimulationRadius").." studs away.")
										Lost = true;
										Network["RemovePart"](Part)
									end
								else
									Network["Output"].Send(warn,"PartOwnership Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as the LocalPlayer Character's PrimaryPart does not exist.")
								end
							end
							Part.Velocity = Network["Velocity"]+Vector3.new(0,math.cos(tick()*10)/100,0) --keep network by sending physics packets of 30 magnitude + an everchanging addition in the y level so roblox doesnt get triggered and fuck your ownership
						else
							Network["RemovePart"](Part)
						end
					end)()
				end
			end)
			Network["Output"].Send(print,"PartOwnership Output : PartOwnership enabled.")
		else
			Network["Output"].Send(warn,"PartOwnership Output : PartOwnership already enabled.")
		end
	end)
	Network["PartOwnership"]["Disable"] = coroutine.create(function()
		if Network["PartOwnership"]["Connection"] then
			Network["PartOwnership"]["Connection"]:Disconnect()
			LocalPlayer.ReplicationFocus = Network["PartOwnership"]["PreMethodSettings"].ReplicationFocus
			sethiddenproperty(LocalPlayer,"SimulationRadius",Network["PartOwnership"]["PreMethodSettings"].SimulationRadius)
			Network["PartOwnership"]["PreMethodSettings"] = {}
			for _,Part in pairs(Network["BaseParts"]) do
				Network["RemovePart"](Part)
			end
			Network["PartOwnership"]["Enabled"] = false
			Network["Output"].Send(print,"PartOwnership Output : PartOwnership disabled.")
		else
			Network["Output"].Send(warn,"PartOwnership Output : PartOwnership already disabled.")
		end
	end)
	Network["Output"].Send(print,": Loaded.")
end

coroutine.resume(Network["PartOwnership"]["Enable"])

player = game:GetService("Players").LocalPlayer
Gui = player.PlayerGui
Backpack = player.Backpack
Mouse = player:GetMouse()

Parts_Folder = Instance.new("Folder",workspace)

for i, Hat in pairs(player.Character:GetChildren()) do
	if Hat:IsA("Accessory") then
		local Part = Instance.new("Part",Parts_Folder)
		Part.Name = Hat.Name
		Part.Anchored = true
		Part.Size = Hat.Handle.Size
		Part.Position = player.Character.Head.Position + Vector3.new(math.random(-5,5),math.random(-1,1),math.random(-5,5))
		Part:SetAttribute("Moveable",true)
		Part.Material = Enum.Material.SmoothPlastic
		Part.CanCollide = false
        Part.Color = Color3.new(1,0,0)
	end
end


Move_Tool = Instance.new("Tool",Backpack)
Rotate_Tool = Instance.new("Tool",Backpack)
MHandle = Instance.new("Part",Move_Tool)
RHandle = Instance.new("Part",Rotate_Tool)
Mgrabs = Instance.new("Handles",Gui)
Rgrabs = Instance.new("ArcHandles",Gui)
Outline = Instance.new("Highlight")

Move_Tool.Name = "Move"
Move_Tool.CanBeDropped = false

Rotate_Tool.Name = "Rotate"
Rotate_Tool.CanBeDropped = false

MHandle.Name = "Handle"
MHandle.Transparency = 1

RHandle.Name = "Handle"
RHandle.Transparency = 1

Mgrabs.Visible = false
Mgrabs.Color3 = Color3.fromRGB(248, 236, 0)
Mgrabs.Style = "Movement"

Rgrabs.Visible = false

Outline.FillTransparency = 1
Outline.OutlineTransparency = 0

Active_Part = nil

Move_Tool.Equipped:Connect(function()
	if Active_Part ~= nil then
		Mgrabs.Visible = true
		Mgrabs.Adornee = Active_Part
	end
end)

Move_Tool.Unequipped:Connect(function()
	Mgrabs.Visible = false
	Mgrabs.Adornee = nil
end)

Move_Tool.Activated:Connect(function()
	if Mouse.Target:GetAttribute("Moveable") then
		Active_Part = Mouse.Target
		Mgrabs.Visible = true
		Mgrabs.Adornee = Active_Part
		Outline.Parent = Active_Part
	end
end)

Rotate_Tool.Equipped:Connect(function()
	if Active_Part ~= nil then
		Rgrabs.Visible = true
		Rgrabs.Adornee = Active_Part
	end
end)

Rotate_Tool.Unequipped:Connect(function()
	Rgrabs.Visible = false
	Rgrabs.Adornee = nil
end)

Rotate_Tool.Activated:Connect(function()
	if Mouse.Target:GetAttribute("Moveable") then
		Active_Part = Mouse.Target
		Rgrabs.Visible = true
		Rgrabs.Adornee = Active_Part
		Outline.Parent = Active_Part
	end
end)

MOGCFrame = CFrame.new()

Mgrabs.MouseButton1Down:Connect(function()
	MOGCFrame = Active_Part.CFrame
end)

Mgrabs.MouseDrag:Connect(function(knob, pos)
	if knob == Enum.NormalId.Front then
		Active_Part.CFrame = MOGCFrame + MOGCFrame.LookVector * pos
	end
	if knob == Enum.NormalId.Back then
		Active_Part.CFrame = MOGCFrame + MOGCFrame.LookVector * -pos
	end
	if knob == Enum.NormalId.Top then
		Active_Part.CFrame = MOGCFrame + MOGCFrame.UpVector * pos
	end
	if knob == Enum.NormalId.Bottom then
		Active_Part.CFrame = MOGCFrame + MOGCFrame.UpVector * -pos
	end
	if knob == Enum.NormalId.Left then
		Active_Part.CFrame = MOGCFrame + MOGCFrame.RightVector * -pos
	end
	if knob == Enum.NormalId.Right then
		Active_Part.CFrame = MOGCFrame + MOGCFrame.RightVector * pos
	end
end)

ROGCFrame = CFrame.new()

Rgrabs.MouseButton1Down:Connect(function()
	ROGCFrame = Active_Part.CFrame
end)

Rgrabs.MouseDrag:Connect(function(knob, angle)
	if knob == Enum.Axis.Y then
		Active_Part.CFrame = ROGCFrame * CFrame.Angles(0,angle,0)
	end
	if knob == Enum.Axis.X then
		Active_Part.CFrame = ROGCFrame * CFrame.Angles(angle,0,0)
	end
	if knob == Enum.Axis.Z then
		Active_Part.CFrame = ROGCFrame * CFrame.Angles(0,0,angle)
	end
end)

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "FE BTools V3 Loaded",
	Text = "Made by rouxhaver",
	Icon = "rbxassetid://12561999923"
})
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Network Credit:",
	Text = "thanks to 4eyes for network stuff",
	Icon = "rbxassetid://12562053596"
})

HRP = player.Character.HumanoidRootPart

for i, Part in pairs(Parts_Folder:GetChildren()) do
	local Hat = player.Character[Part.Name].Handle
	Hat.AccessoryWeld:Destroy()
    Network.RetainPart(Hat)
	local vbreak = false
	coroutine.wrap(function()
		while task.wait() do
			if vbreak == true then break end
			Hat.CFrame = Part.CFrame
		end
	end)()
	Hat:FindFirstChildWhichIsA("SpecialMesh"):Destroy()
end

player.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
	Parts_Folder:Destroy()
end)
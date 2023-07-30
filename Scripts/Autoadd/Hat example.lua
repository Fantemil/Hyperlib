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
					if Network["Output"].Enabled or BypassOutput then
						Type(Network["Output"].Prefix..Output);
					end;
				elseif Network["Output"].Enabled then
					error(Network["Output"].Prefix.."Output Send Error : Invalid syntax.");
				end;
			end;
		};
		LostParts = {};
		CharacterRelative = true;
		LastCharacter = nil;
		TryKeep = true;
		PartOwnership = {
			PreMethodSettings = {};
			Enabled = false;
		};
	}

	Network["Output"].Send(print,": Loading.")

	Network["RetainPart"] = function(Part,Silent,ReturnFakePart)
		assert(Network["PartOwnership"]["Enabled"], Network["Output"].Prefix.." RetainPart Error : PartOwnership is Disabled.")
		assert(typeof(Part) == "Instance" and Part:IsA("BasePart") and not Part:IsGrounded(),Network["Output"].Prefix.."RetainPart Error : Invalid syntax: Arg1 (Part) must be an ungrounded BasePart which is a descendant of workspace.")
		if not Part:IsDescendantOf(workspace) then
			Network["Output"].Send(error,"RetainPart Error : Invalid syntax: Arg1 (Part) must be an ungrounded BasePart which is a descendant of workspace.")
			local Index = table.find(Network["LostParts"],Part)
			if Index then
				table.remove(Network["LostParts"],Index)
			end
			return false
		end
		assert(typeof(Silent) == "boolean" or typeof(Silent) == "nil",Network["Output"].Prefix.."RetainPart Error : Invalid syntax: Arg2 (Silent) must be a boolean or nil.")
		assert(typeof(ReturnFakePart) == "boolean" or typeof(ReturnFakePart) == "nil",Network["Output"].Prefix.."RetainPart Error : Invalid syntax: Arg3 (ReturnFakePart) must be a boolean or nil.")
		if not table.find(Network["BaseParts"],Part) and not table.find(Network["LostParts"],Part) then
			table.insert(Network["BaseParts"],Part)
			Part.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
			if not Silent then
				Network["Output"].Send(print,"PartOwnership Output : PartOwnership applied to BasePart "..Part:GetFullName()..".")
			end
			if ReturnFakePart then
				local workspaceParts = {}
				return FakePart
			end
		else
			Network["Output"].Send(warn,"RetainPart Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as it already active.")
			return false
		end
	end

	Network["RemovePart"] = function(Part,Silent)
		assert(typeof(Part) == "Instance" and Part:IsA("BasePart"),Network["Output"].Prefix.."RemovePart Error : Invalid syntax: Arg1 (Part) must be a BasePart.")
		local Index1 = table.find(Network["BaseParts"],Part)
		local Index2 = table.find(Network["LostParts"],Part)
		if Index1 then
			table.remove(Network["BaseParts"],Index1)
		else
			if not Silent then
				Network["Output"].Send(warn,"RemovePart Warning : BasePart "..Part:GetFullName().." not found in BaseParts table.")
			end
			return
		end
		if Index2 then
			table.remove(Network["LostParts"],Index2)
		end
		if not Silent then
			Network["Output"].Send(print,"RemovePart Output: PartOwnership removed from BasePart "..Part:GetFullName()..".")
		end
	end

	Network["PartOwnership"]["PartCoroutine"] = coroutine.create(function(Part)
		if Part:IsDescendantOf(workspace) then
			if Network.CharacterRelative then
				local Character = Network["LastCharacter"];
				if not Character.PrimaryPart then
					for _,Inst in pairs(Character:GetDescendants()) do
						if Inst:IsA("BasePart") then
							Character.PrimaryPart = Inst
							break
						end
					end
				end
				if Character and Character.PrimaryPart then
					local Distance = (Character.PrimaryPart.Position - Part.Position).Magnitude
					if Distance > gethiddenproperty(LocalPlayer,"MaximumSimulationRadius") and not isnetworkowner(Part) then
						Network["Output"].Send(warn,"PartOwnership Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as it is more than "..gethiddenproperty(LocalPlayer,"MaximumSimulationRadius").." studs away.")
						Network["RemovePart"](Part)
						if not Part:IsGrounded() then
							table.insert(Network["LostParts"],Part)
						else
							Network["Output"].Send(warn,"PartOwnership Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as it is grounded.")
						end
					end
				else
					Network["Output"].Send(warn,"PartOwnership Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as the LocalPlayer Character's PrimaryPart does not exist.")
				end
			end
			Part.AssemblyLinearVelocity = (Part.AssemblyLinearVelocity.Unit+Vector3.new(.01,.01,.01))*(50+math.cos(tick()*10))
		else
			Network["RemovePart"](Part)
		end
	end)

	Network["PartOwnership"]["Enable"] = coroutine.create(function()
		if not Network["PartOwnership"]["Enabled"] then
			Network["PartOwnership"]["Enabled"] = true
			Network["PartOwnership"]["PreMethodSettings"].ReplicationFocus = LocalPlayer.ReplicationFocus
			LocalPlayer.ReplicationFocus = workspace
			Network["PartOwnership"]["PreMethodSettings"].SimulationRadius = gethiddenproperty(LocalPlayer,"SimulationRadius")
			Network["PartOwnership"]["Connection"] = RunService.Stepped:Connect(function()
				Network["LastCharacter"] = pcall(function() return LocalPlayer.Character end) or Network["LastCharacter"]
				sethiddenproperty(LocalPlayer,"SimulationRadius",1/0)
				coroutine.wrap(function()
					for _,Part in pairs(Network["BaseParts"]) do
						coroutine.resume(Network["PartOwnership"]["PartCoroutine"],Part)
					end
				end)()
				coroutine.wrap(function()
					for _,Part in pairs(Network["LostParts"]) do
						Network.RetainPart(Part,true)
					end
				end)()
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
			for Index,Part in pairs(Network["LostParts"]) do
				table.remove(Network["LostParts"],Index)
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
character = player.Character
local vbreak = false
character.Archivable = true

player.Character = nil
player.Character = character:Clone()

wait(game:GetService("Players").RespawnTime+.3)

character.Humanoid.Health = 0


stuff = Instance.new("Folder",workspace)
center = Instance.new("Part",stuff)
input = game:GetService("UserInputService")

center.Anchored = true
center.Size = Vector3.new(1,1,1)
center.Position = character.Head.Position
center.CanCollide = false
center.Transparency = 1

points = {}

last_pos = character.Head.Position
coroutine.wrap(function()
	while task.wait() do
		if vbreak == true then break end
		center.CFrame = CFrame.new(center.Position)
		if (last_pos - center.Position).magnitude > 1 then
			local marker = Instance.new("Part",stuff)
			marker.Anchored = true
			marker.Size = Vector3.new(1,1,1)
			marker.CFrame = CFrame.lookAt(last_pos,center.Position)
			marker.CanCollide = false
			marker.Transparency = 1
			last_pos = center.Position
			table.insert(points,marker)
		end
		if points[#points-9] then
			points[#points-9]:Destroy()
			table.remove(points,#points-9)
		end
	end
end)()

    handle = character:FindFirstChild("International Fedora").Handle
	handle.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
	Network.RetainPart(handle)
	coroutine.wrap(function()
		while handle:FindFirstAncestor("Game") do
			handle.CFrame = center.CFrame
			task.wait()
            if input:IsKeyDown(Enum.KeyCode.Z) then
                break
            end
		end
		vbreak = true
		player.Character = character
	end)()


current_position = character.Head.Position
wait(.5)
while wait() do
	if vbreak == true then break end
	
    current_position = Vector3.new(0, 10, 0)

	center.Position = current_position
end
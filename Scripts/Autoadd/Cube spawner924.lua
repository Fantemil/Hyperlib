local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

for _, player in pairs(game.Players:GetChildren()) do
	if player ~= LocalPlayer then
		for _, part in pairs(player.Character:GetChildren()) do
			if part:IsA("Part") or part:IsA("MeshPart") then
				coroutine.wrap(function()
					local dd = part
					while true do
				 		dd.CanCollide = true
				 		dd.CanQuery = true
				 		dd.CanTouch = true
				 		task.wait(1)
					end
				end)()
			end
		end
	end
end

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

cube = player.Character.SnowballAccessory.Handle

cube.SpecialMesh:Destroy()
cube.AccessoryWeld:Destroy()
Network.RetainPart(cube)

part = Instance.new("Part", workspace)
part.Position = Vector3.new(0, 100, 0)
part.Size = Vector3.new(3, 3, 3)
part.Transparency = 1

coroutine.wrap(function()
 while task.wait() do
  cube.CFrame = part.CFrame
 end
end)()
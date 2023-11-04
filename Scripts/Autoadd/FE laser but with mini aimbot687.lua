--REQUIRED HAIR:
--https://www.roblox.com/catalog/63690008/Pal-Hair
--Wear any 9 other hats/hair

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local IsErorr = false

if LocalPlayer.Character:FindFirstChild("Pal Hair") == nil then
	game:GetService("StarterGui"):SetCore("SendNotification",{
	  Title = "PAL HAIR",
	  Text = "YOU NEED PAL HAIR",
	  Icon = "rbxassetid://14529775287"
	})
	IsError = true
end
if LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
	game:GetService("StarterGui"):SetCore("SendNotification",{
	  Title = "R6",
	  Text = "YOU NEED TO BE R6",
	  Icon = "rbxassetid://14529775287"
	})
	IsError = true
end
if IsError then
	return 
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
game:GetService("StarterGui"):SetCore("SendNotification",{
     Title = "Error",
     Text = "RemovePart Output: PartOwnership removed from BasePart "..Part.Name..".",
     Icon = "https://www.roblox.com/asset-thumbnail/image?assetId=8990250029&width=420&height=420"
    })
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

local gui = Instance.new("ScreenGui")
gui.Parent = player.PlayerGui

-- Создаем окно GUI
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 150)
frame.Position = UDim2.new(0.5, -150, 0.5, -75)
frame.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
frame.Active = true -- Включаем возможность взаимодействия с окном
frame.Draggable = true -- Делаем окно перетаскиваемым
frame.Parent = gui

-- Создаем поле ввода
local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0, 200, 0, 30)
textBox.Position = UDim2.new(0.5, -100, 0.3, -15)
textBox.PlaceholderText = "Write a player name or display name..."
textBox.Text = "random"
textBox.Parent = frame

local okButton = Instance.new("TextButton")
okButton.Size = UDim2.new(0, 80, 0, 30)
okButton.Position = UDim2.new(0.3, 0, 0.7, 0)
okButton.BackgroundColor3 = Color3.new(0, 1, 0)
okButton.Text = "OK"
okButton.Parent = frame

local cancelButton = Instance.new("TextButton")
cancelButton.Size = UDim2.new(0, 80, 0, 30)
cancelButton.Position = UDim2.new(0.6, 0, 0.7, 0)
cancelButton.BackgroundColor3 = Color3.new(1, 0, 0)
cancelButton.Text = "Cancel"
cancelButton.Parent = frame

RA = player.Character["Right Arm"]
Mouse = player:GetMouse()

Torso = player.Character.Torso

RA.Parent = nil
RA.Transparency = 1
RA.Parent = player.Character

NRA = player.Character["Pal Hair"].Handle
NRA.Mesh:Destroy()
NRA.AccessoryWeld:Destroy()
Network.RetainPart(NRA)

Pointing = false
aim = false
aimpos = Vector3.new(0,0,0)
coroutine.wrap(function()
 while task.wait() do
  if Pointing == true then
    local LA = CFrame.lookAt(Torso.Position + Torso.CFrame.RightVector * 1.5 + Torso.CFrame.UpVector * 0.5,Mouse.Hit.Position)
    NRA.CFrame = LA + LA.LookVector * 0.5
elseif aim == true then
    local LA = CFrame.lookAt(Torso.Position + Torso.CFrame.RightVector * 1.5 + Torso.CFrame.UpVector * 0.5,aimpos)
    NRA.CFrame = LA + LA.LookVector * 0.5
   else
   NRA.CFrame = RA.CFrame * CFrame.Angles(math.rad(90),0,0)
  end
 end
end)()


Mouse.Button1Down:Connect(function()
 Pointing = true
end)

Mouse.Button1Up:Connect(function()
 Pointing = false
end)

game:GetService("StarterGui"):SetCore("SendNotification",{
 Title = "FE Laser Arm Loaded",
 Text = "Made by rouxhaver",
 Icon = "rbxassetid://12561999923"
})
game:GetService("StarterGui"):SetCore("SendNotification",{
 Title = "Network Credit:",
 Text = "thanks to 4eyes for network stuff",
 Icon = "rbxassetid://12562053596"
})

function RNG(Min,Max) 
 return math.random(Min*1000000,Max*1000000)/1000000
end

function ftp(str)
    local pt = nil
    if str ~= 'me' and str ~= 'random' then
        for i, v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower():find(str:lower()) or v.DisplayName:lower():find(str:lower()) then
                pt = v
                break
            end
        end
    elseif str == 'me' then
        pt = player
	elseif str == 'random' then
		pt = game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]
    end
    return pt;
end

okButton.MouseButton1Click:Connect(function()
    local inputText = textBox.Text
    local Plr = ftp(inputText)
    if Plr == nil then
        textBox.Text = "NO PLAYER FOUND"
    else
        textBox.Text = Plr.Name
        aimplr = Plr.Name
        aim = true
    end
end)

cancelButton.MouseButton1Click:Connect(function()
    aim = false
end)

coroutine.wrap(function()
    while task.wait() do
        if aim == true then
            if game.Workspace:FindFirstChild(aimplr) then
                if game.Workspace:FindFirstChild(aimplr):FindFirstChild("Head") then
                    aimpos = game.Workspace:FindFirstChild(aimplr).Head.Position
                end
            end
        end
    end
end)()

for i,hat in pairs(player.Character:GetChildren()) do
 if hat:IsA("Accessory") and hat ~= NRA.Parent then
  local Handle = hat.Handle
  Handle.AccessoryWeld:Destroy()
        Network.RetainPart(Handle)
  Handle:FindFirstChildWhichIsA("SpecialMesh"):Destroy()
  coroutine.wrap(function()
   while task.wait() do
    if Pointing == true then
      Handle.CFrame = (NRA.CFrame + NRA.CFrame.LookVector):Lerp(CFrame.new(Mouse.Hit.Position), RNG(0.1,1)) * CFrame.Angles(math.rad(RNG(0,360)),math.rad(RNG(0,360)),math.rad(RNG(0,360)))
    elseif aim == true then
        Handle.CFrame = (NRA.CFrame + NRA.CFrame.LookVector):Lerp(CFrame.new(aimpos), RNG(0.1,1)) * CFrame.Angles(math.rad(RNG(0,360)),math.rad(RNG(0,360)),math.rad(RNG(0,360)))
    else
     Handle.CFrame = player.Character.Head.CFrame - Vector3.new(0,20,0)
    end
   end
  end)()
 end
end
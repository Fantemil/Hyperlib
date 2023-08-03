if game.PlaceId == 5602055394 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

    --[[local colors = {
        SchemeColor = Color3.fromRGB(0,255,255),
        Background = Color3.fromRGB(25,25,25),
        Header = Color3.fromRGB(35,35,35),
        TextColor = Color3.fromRGB(255,255,255),
        ElementColor = Color3.fromRGB(20, 20, 20)
    }--]]
    local Window = Library.CreateLib("Adana 2.0 || raid#5002 , https://discord.gg/d6hzXnXkXY", "BloodTheme") 
    
    local Main = Window:NewTab("Main") 
    local MainSection = Main:NewSection("Main")
    MainSection:NewButton("Aimlock", "Q, type /e autosettings in chat for best settings", function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Hyotinhofofinho/s1mple/main/LIXO"))() 
    end) 
    MainSection:NewButton("AntiStomp", "AntiStomp", function()   
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/MasterViera/raidware/main/antibypass"), true))()
    end) 
    MainSection:NewButton("SuperSpeed (c)", "hold c for superspeed", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/angeloX041/Speedc/main/SuperSpeedC "))()  
    end) 

    MainSection:NewButton("Infinite Jump", "Jump in the air", function()   
        local gayer = game:GetService'Players'.LocalPlayer;
        local gayus = game:GetService'UserInputService';

        _G.JumpHeight = 50;

        function Action(Object, Function) if Object ~= nil then Function(Object); end end

        gayus.InputBegan:connect(function(UserInput)
            if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
                Action(gayer.Character.Humanoid, function(self)
                    if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                        Action(self.Parent.HumanoidRootPart, function(self)
                            self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                        end)
                    end
                end)
            end
        end)
          
    end)
    MainSection:NewButton("No jump cooldown", "Removes jump cooldown", function()
        local Players = game:GetService("Players")
        local lp = Players.LocalPlayer
        local mouse = lp:GetMouse()
        local uis = game:GetService("UserInputService")
        local rservice = game:GetService("RunService")
        local cam = workspace.CurrentCamera
        local NormalGravity = game.Workspace.Gravity

        local Raw = getrawmetatable(game)
        local Caller = checkcaller or is_protosmasher_caller or Cer.isCerus
        local CallingScript = getcallingscript or get_calling_script
        local Closure = newcclosure or read_me or function(Func) return Func end
        local CallingMethod = getnamecallmethod or get_namecall_method
        setreadonly(Raw,false)
        local NewIndex = Raw.__newindex;
        Raw.__newindex = Closure(function(self,Property,Value)
            if Caller() then return NewIndex(self,Property,Value) end
            if Property == "WalkSpeed" then return 16 end
            if Property == "JumpPower" then return 50 end 
            if Property == "HipHeight" then return 0 end 
            if self == workspace and Property == "Gravity" then return NormalGravity end
            if Property == "CFrame" and self:IsDescendantOf(lp.Character) then return end 
            return NewIndex(self,Property,Value)
        end)
        local Namecall = Raw.__namecall;
        Raw.__namecall = Closure(function(self,...)
        local Args = {...}
            if Caller() then 
                if CallingMethod() == "FindFirstChild" and Args[1] == "HumanoidRootPart" then 
                    Args[1] = "HumanoidRootPart" 
                    return Namecall(self,unpack(Args))
                end
                return Namecall(self,...) 
            end 
            if CallingMethod() == "Destroy" or CallingMethod() == "Kick" then 
                if self == lp then return wait(9e9) end
                if tostring(self) == 'BodyGyro' or tostring(self) == 'BodyVelocity' then return wait(9e9) end 
            end
            if CallingMethod() == "BreakJoints" and self == lp.Character then return wait(9e9) end
            return Namecall(self,...)
        end)
        setreadonly(Raw,true)
    end)

 




    local Silent = Window:NewTab("Silent Aim")
    local Silentsection = Silent:NewSection("Silent Aim")

    local GetService = setmetatable({}, {
        __index = function(self, key)
            return game:GetService(key)
        end
    })
    
    
    local NotifyLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))()
    local Notify = NotifyLibrary.Notify

    
    local RunService = GetService.RunService
    local Players = GetService.Players
    local LocalPlayer = Players.LocalPlayer
    local Mouse = LocalPlayer:GetMouse()
    local serInputService = game:GetService("UserInputService")
    local nouseLocation = serInputService:GetMouseLocation()
    
    local CurrentCamera = workspace.CurrentCamera
    local UserInputService = GetService.UserInputService
    local GuiInset = GetService.GuiService:GetGuiInset()
    local AimbotFOV = Drawing.new("Circle")
    AimbotFOV.Thickness = 1
    local SilentAimFOV = Drawing.new("Circle")
    SilentAimFOV.Thickness = 1
    
    local Insert = table.insert
    local Network = GetService.NetworkClient
    local CheckmateFolder = Instance.new("Folder", workspace)
    CheckmateFolder.Name = "Checkmate-Folder"
    local StarterGui = GetService.StarterGui
    local ReplicatedStorage = GetService.ReplicatedStorage
      
      
      

      
      local CheckmateSettings = {
          Aiming = {
              Aimbot = {
                  Enabled = false,
                  AimAssist = false,
                  IsAiming = false,
                  ShowFOV = false,
                  FOVColor = Color3.new(0.603921, 0.011764, 1),
                  UseNearestDistance = false,
                  WallCheck = false,
                  KnockedOutCheck = false,
                  GrabbedCheck = false,
                  Hitboxes = {"Head"}
              },
              TriggerBot = {
                  Enabled = false,
                  Delay = false,
                  DelayAmount = 0
              },
              SilentAim = {
                  Enabled = false,
                  ShowFOV = false,
                  FOVColor = Color3.new(0.603921, 0.011764, 1),
                  WallCheck = false,
                  KnockedOutCheck = false,
                  UseNearestDistance = false,
                  GrabbedCheck = false,
                  Hitboxes = {"Head"}
              },
              TargetAim = {
                  Enabled = false,
                  ShowFOV = false,
                  FOVColor = Color3.new(0.603921, 0.011764, 1),
                  WallCheck = false,
                  KnockedOutCheck = false,
                  UseNearestDistance = false,
                  GrabbedCheck = false,
                  Hitboxes = {"Head"},
                  Target = nil
              },
              AimingSettings = {
                  MovementPrediction = false,
                  MovementPredictionAmount = 0.165 * 1,
                  HitChance = false,
                  HitChanceAmount = {
                      HitPercent = 100,
                      NotHitPercent = 0
                  },
                  AimAssistType = "Camera",
                  MovementPrediction = false,
                  MovementPredictionAmount = 0.165 * 1,
                  SmoothingTracing = false,
                  SmoothingTracingAmount = 5,
                  PingBasedPrediction = false,
                  GetVelocity = 0.165
              },
              TargetAimSettings = {
                  UnlockTargetKnocked = false,
                  NotificationAlert = false,
              },
              FOV = {
                  FOVFilled = false,
                  AimAssistSize = 100,
                  SilentAimSize = 200,
                  TargetAimSize = 100
              },
              Whitelist = {
                  Players = {},
                  Friends = {},
                  Holder = "",
                  Enabled = false,
                  CrewEnabled = false,
                  FriendsWhitelist = false
              },
          },
          Blatant = {
              BlatantAA = {
                  Enabled = false,
                  NoAutoRotate = false,
                  UndergroundWallbang = false,
                  Underground = false,
                  AntiAimType = "Jitter",
                  AntiAimSpeed = 100,
                  JitterAngle = 180
              },
              LegitAA = {
                  Enabled = false,
                  AntiAimAt = false,
                  AntiAimAtDistance = 20
              },
              FakeLag = {
                  Enabled = false,
                  TriggerAmount = 5
              },
              Movement = {
                  SpeedEnabled = false,
                  SpeedType = "Default",
                  SpeedRender = "Default",
                  SpeedAmount = 5
              },
              Reaching = {
                  FistReach = false,
                  MeleeReach = false
              },
              Character = {
                  AntiGrab = false,
                  AntiStomp = false,
                  AntiStompType = "Nil Char",
                  AntiBag = false,
                  AutoArmor = false,
                  AutoLettuce = false,
                  AutoReload = false
              },
              Farming = {
                  ATMFarm = false,
                  ShoeFarm = false,
                  MuscleFarm = false,
                  MuscleFarmingType = "Normal",
                  BoxFarm = false,
                  HospitalFarm = false,
                  ATMPick = false
              },
              Cash = {
                  AutoDrop = false,
                  AutoDropAmount = 5000,
                  AutoPickCash = false
              }
          },
          Teleport = {
              TeleportReturn = false,
              ReturnDelay = false,
              AutoPurchase = false,
              AmmoPurchaseAmount = 1
          }
      }
      
      
      local CheckmateModule = {
          Old = {
              CFrame,
          },
          God = {
              MeleeAlive = false,
              GodMelee = false,
              GodBullet = false,
              AntiRagdoll = false
          },
          LagTick = 0,
          Ignores = {
              "UpperTorso",
              "LowerTorso",
              "Head",
              "LeftHand",
              "LeftUpperArm",
              "LeftLowerArm",
              "RightHand",
              "RightUpperArm",
              "RightLowerArm"
          },
          PingBasedPrediction = 0.165,
          Instance = {},
          Teleport = {
              Players = {},
              Food = {
                  "Cranberry",
                  "Donut",
                  "Pizza",
                  "Chicken",
                  "Popcorn",
                  "Hamburger",
                  "Taco",
                  "Starblox Latte",
                  "Lettuce",
                  "Lemonade"
              },
              Location = {
                  "Bank",
                  "Boxing Place",
                  "Police Station",
                  "Admin Base",
                  "Sewers",
                  "Shoe Store",
                  "Hospital",
                  "Phone Store",
                  "Taco Shack",
                  "Casino",
                  "UFO",
                  "Fire Station",
                  "Church",
                  "Downhill Shop",
                  "Uphill Shop"
              },
              Gun = {
                  "Glock",
                  "SMG",
                  "Silencer",
                  "TacticalShotgun",
                  "P90",
                  "AUG",
                  "Shotgun",
                  "RPG",
                  "AR",
                  "Double-Barrel SG",
                  "Flamethrower",
                  "Revolver",
                  "LMG",
                  "AK47",
                  "DrumGun",
                  "Silencer",
                  "GrenadeLauncher",
                  "Taser",
                  "SilencerAR",
                  "Grenade"
              },
              Armor = {
                  "High-Medium Armor",
                  "Medium Armor"
              },
              Mask = {
                  "Surgeon Mask",
                  "Riot Mask",
                  "Pitchfork",
                  "Hockey Mask",
                  "Breathing Mask",
                  "Pumpkin Mask",
                  "Skull Mask",
                  "Paintball Mask",
                  "Ninja Mask"
              },
              Weight = {
                  "Weights",
                  "HeavyWeights"
              },
              Melee = {
                  "Shovel",
                  "Bat",
                  "Pencil",
                  "StopSign",
                  "Knife",
                  "Pitchfork"
              },
              Phone = {
                  "iPhone",
                  "iPhoneB",
                  "iPhoneG",
                  "iPhoneP",
                  "Old Phone",
                  "Orange Phone",
                  "Original Phone",
              },
              Bike = {
                  "DuoBike",
                  "Solo Bike",
              },
              Extra = {
                  "PepperSpray",
                  "LockPicker",
                  "Flashlight",
                  "Flowers",
                  "Money Gun",
                  "Brown Bag",
                  "Anti Bodies",
                  "Firework"
              }
          }
      }
      

    Silentsection:NewToggle("Enable Silent Aim", "Silent aim", function(state)
        CheckmateSettings.Aiming.SilentAim.Enabled = state
    end)
    Silentsection:NewToggle("Show FOV", "Show Silent aim FOV circle", function(state)
        CheckmateSettings.Aiming.SilentAim.ShowFOV = state
    end)

    Silentsection:NewToggle("Wall check", "Dont shoot players behind a wall", function(state)
        CheckmateSettings.Aiming.SilentAim.WallCheck = state
    end)

    Silentsection:NewToggle("Ignore Friends", "Dont aim at friends", function(state)
        CheckmateSettings.Aiming.Whitelist.FriendsWhitelist = state
    end)

    Silentsection:NewSlider("FOV", "Change FOV size", 500, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
        CheckmateSettings.Aiming.FOV.SilentAimSize = s
    end)

    

    

     
 
     local Player = Window:NewTab("Player") 
     local PlayerSection = Player:NewSection("Player")
     PlayerSection:NewButton("Right Korblox ", "Right korblox (client) ", function()
          loadstring(game:HttpGet('https://raw.githubusercontent.com/carlcoded/pro/main/rightkorbloxperma'))()
     end)

     PlayerSection:NewButton("Headless (FE)", "Headless ", function()
          loadstring(game:HttpGet('https://raw.githubusercontent.com/carlcoded/pro/main/headlessperma'))()
     end)

     local settings_tbl = {
          ESP_Enabled = false,
          ESP_TeamCheck = false,
          Chams = true,
          Chams_Color = Color3.fromRGB(255,255,255),
          Chams_Transparency = 0.1,
          Chams_Glow_Color = Color3.fromRGB(255,255,255)
     }
     local Visuals = Window:NewTab("Visuals") 
     local VisualsSection = Visuals:NewSection("Visuals")
     VisualsSection:NewToggle("Chams", "Enable chams", function(state)
          settings_tbl.ESP_Enabled = state
     end)

     local dwEntities = game:GetService("Players")
     local dwLocalPlayer = dwEntities.LocalPlayer 
     local dwRunService = game:GetService("RunService")



     function destroy_chams(char)

     for k,v in next, char:GetChildren() do 

          if v:IsA("BasePart") and v.Transparency ~= 1 then

               if v:FindFirstChild("Glow") and 
               v:FindFirstChild("Chams") then

                    v.Glow:Destroy()
                    v.Chams:Destroy() 

               end 

          end 

     end 

     end

     dwRunService.Heartbeat:Connect(function()

     if settings_tbl.ESP_Enabled then

          for k,v in next, dwEntities:GetPlayers() do 

               if v ~= dwLocalPlayer then

                    if v.Character and
                    v.Character:FindFirstChild("HumanoidRootPart") and 
                    v.Character:FindFirstChild("Humanoid") and 
                    v.Character:FindFirstChild("Humanoid").Health ~= 0 then

                         if settings_tbl.ESP_TeamCheck == false then

                         local char = v.Character 

                         for k,b in next, char:GetChildren() do 

                              if b:IsA("BasePart") and 
                              b.Transparency ~= 1 then
                                   
                                   if settings_tbl.Chams then

                                        if not b:FindFirstChild("Glow") and
                                        not b:FindFirstChild("Chams") then

                                             local chams_box = Instance.new("BoxHandleAdornment", b)
                                             chams_box.Name = "Chams"
                                             chams_box.AlwaysOnTop = true 
                                             chams_box.ZIndex = 4 
                                             chams_box.Adornee = b 
                                             chams_box.Color3 = settings_tbl.Chams_Color
                                             chams_box.Transparency = settings_tbl.Chams_Transparency
                                             chams_box.Size = b.Size + Vector3.new(0.02, 0.02, 0.02)

                                             local glow_box = Instance.new("BoxHandleAdornment", b)
                                             glow_box.Name = "Glow"
                                             glow_box.AlwaysOnTop = false 
                                             glow_box.ZIndex = 3 
                                             glow_box.Adornee = b 
                                             glow_box.Color3 = settings_tbl.Chams_Glow_Color
                                             glow_box.Size = chams_box.Size + Vector3.new(0.13, 0.13, 0.13)

                                        end

                                   else

                                        destroy_chams(char)

                                   end
                              
                              end

                         end

                         else

                         if v.Team == dwLocalPlayer.Team then
                              destroy_chams(v.Character)
                         end

                         end

                    else

                         destroy_chams(v.Character)

                    end

               end

          end

     else 

          for k,v in next, dwEntities:GetPlayers() do 

               if v ~= dwLocalPlayer and 
               v.Character and 
               v.Character:FindFirstChild("HumanoidRootPart") and 
               v.Character:FindFirstChild("Humanoid") and 
               v.Character:FindFirstChild("Humanoid").Health ~= 0 then
                    
                    destroy_chams(v.Character)

               end

          end

     end

     end)


     VisualsSection:NewButton("Unnamed ESP", "Load UnnamedESP", function()
          loadstring(game:HttpGet(("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua"), true))()
     end)


     


     

     local Misc = Window:NewTab("Misc") 
     MiscSection = Misc:NewSection("Misc")
     MiscSection:NewButton("Deletetool", "Get deletetool", function()   
          Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 4
     end) 

     MiscSection:NewButton("Trashtalk (t)", "keybind (t)", function()   
          local words = { 
               'bad',
               'Is your fat mom covering your screen or why are you aiming in the air',
               'Is your fat mom covering your screen or why are you aiming in the air',
               'goofy monkey',
          }
           
           local player = game.Players.LocalPlayer
           local keybind = 't'
           
           local event = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest
           
           player:GetMouse().KeyDown:connect(function(key)
               if key == keybind then
                   event:FireServer(words[math.random(#words)], "All")
               end
          end) 
     end) 
     MiscSection:NewButton("Show chat", "Makes chat visible", function()
        local lp = game.Players.LocalPlayer
        lp.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
        lp.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = lp.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(), lp.PlayerGui.Chat.Frame.ChatChannelParentFrame.Size.Y)
     end)
     local CloseGUI = Window:NewTab("Settings") 
     local CloseGUISection = CloseGUI:NewSection("Keybind")
     CloseGUISection:NewKeybind("Select Keybind", "Select Keybind", Enum.KeyCode.V, function()
          Library:ToggleUI(v)
     end) 

     local ball = "Error"
     ball = "Ping: " ..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
     local pingsection = CloseGUI:NewSection("Check ping")
     local label = pingsection:NewLabel(ball)
     
     pingsection:NewButton("Refresh ping", "Refresh ping", function()
          ball = "Ping: " ..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
          label:UpdateLabel(ball)
     end)


     --[[ASSGDSGSGFSGHFSNHUIHDSGIHSIGHISDGHISGHISUGHIDUGHIUSDHGIUDSHGIDSUHGIDUSHGISHGDIGDHSIUGHSDG
     JGOFDSJGPFJGJFDOJGOFJDGIDJGOIJFDGOJFGOIJDFOIGJODIFGJOIFGJOIJFGOIFDJGOFJGOFIJGOIJDFGOIJFDGOIJDFGJ
     GHJFJGIFJDOINVOIRVHOHDSOHFGOIDSJGOIJGFIJGFIJGISJGIPSGJJGPSIDGJPGJDPSGJSPIJVBPJGSPJGDJHGJGDPOSJGPDSJ
     OGHPSJGFPOJGPDSJGPIFJGPSJGPISJGHJOIHFJVIGJPOGHJPSVIOPGJPDJGÜPISGPOJDÜPOGPSIDJGHÜOPIOJPOGJKPISDJGÜOSDJHpiDSGÜOkDS]]--

     for _, v in next, Players:GetPlayers() do
          if v ~= LocalPlayer and v:IsFriendsWith(LocalPlayer.UserId) then
              Insert(CheckmateSettings.Aiming.Whitelist.Friends, v.Name)
          end
      end
      
      Players.PlayerAdded:Connect(function(_Player)
          if _Player ~= LocalPlayer and _Player:IsFriendsWith(LocalPlayer.UserId) then
              Insert(CheckmateSettings.Aiming.Whitelist.Friends, _Player.Name)
          end
      end)
      
      Players.PlayerRemoving:Connect(function(_Player)
          if _Player ~= LocalPlayer and _Player:IsFriendsWith(LocalPlayer.UserId) then
              Remove(CheckmateSettings.Aiming.Whitelist.Friends, _Player.Name)
          end
      end)
      
      function NoSpace(Data)
          return Data:gsub("%s+", "") or Data
      end
          
      function Find(Data)
          local Target = nil
          
          for i, v in next, Players:GetPlayers() do
              if v.Name ~= LocalPlayer.Name and v.Name:lower():match('^'.. NoSpace(Data):lower()) then
                  Target = v.Name
              end
          end
          
          return Target
      end
      
      function Alive(Player)
          if Player and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") ~= nil and Player.Character:FindFirstChild("Humanoid") ~= nil and Player.Character:FindFirstChild("Head") ~= nil then
              return true
          end
          return false
      end
      
      function Knocked(Player)
          if Alive(Player) then
              if Player.Character.BodyEffects["K.O"].Value then
                  return true
              end
              return false
          end
          return false
      end
      
      function Grabbing(Player)
          if Alive(Player) then
              if Player.Character:FindFirstChild("GRABBING_CONSTRAINT") then
                  return true
              end
              return false
          end
          return false
      end
      
      function NearestDistance()
          local Target = nil
          local Distance = math.huge
          
          for i, v in next, Players:GetPlayers() do
              if v ~= LocalPlayer and Alive(LocalPlayer) and Alive(v) then
                  local DistanceFromPlayer = (v.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                  if Distance > DistanceFromPlayer then
                      if (not CheckmateSettings.Aiming.Whitelist.FriendsWhitelist or not table.find(CheckmateSettings.Aiming.Whitelist.Friends, v.Name)) and (not CheckmateSettings.Aiming.Whitelist.CrewEnabled or v:FindFirstChild("DataFolder") and v.DataFolder.Information:FindFirstChild("Crew") and not tonumber(v.DataFolder.Information.Crew.Value) == tonumber(LocalPlayer.DataFolder.Information.Crew.Value)) and (not CheckmateSettings.Aiming.Whitelist.Enabled or not table.find(CheckmateSettings.Aiming.Whitelist.Players, v.Name)) then
                          Target = v
                          Distance = DistanceFromPlayer
                      end
                  end
              end
          end
      
          return Target, Distance
      end
      
      function NearestMouse()
          local Target = nil
          local Distance = math.huge
      
          for i, v in next, Players:GetPlayers() do
              if v ~= LocalPlayer and Alive(LocalPlayer) and Alive(v) then
                  local RootPosition, RootVisible = CurrentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                  local DistanceFromMouse = (Vector2.new(RootPosition.X, RootPosition.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                  if RootVisible and Distance > DistanceFromMouse then
                      if (not CheckmateSettings.Aiming.Whitelist.FriendsWhitelist or not table.find(CheckmateSettings.Aiming.Whitelist.Friends, v.Name)) and (not CheckmateSettings.Aiming.Whitelist.CrewEnabled or v:FindFirstChild("DataFolder") and v.DataFolder.Information:FindFirstChild("Crew") and not tonumber(v.DataFolder.Information.Crew.Value) == tonumber(LocalPlayer.DataFolder.Information.Crew.Value)) and (not CheckmateSettings.Aiming.Whitelist.Enabled or not table.find(CheckmateSettings.Aiming.Whitelist.Players, v.Name)) then
                          Target = v
                          Distance = DistanceFromMouse
                      end
                  end
              end
          end
      
          return Target, Distance
      end
      
      function NearestType(Type)
          if Type == "Distance" then
              return NearestDistance()
          elseif Type == "Mouse" then
              return NearestMouse()
          end
      end
      
      function Jitter(Speed, Angle)
          if Alive(LocalPlayer) then
              local Jit = Speed or math.random(30, 90)
              LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(LocalPlayer.Character.HumanoidRootPart.CFrame.Position) * CFrame.Angles(0, math.rad(Angle) + math.rad((math.random(1, 2) == 1 and Jit or -Jit)), 0) 
          end
      end
      
      function TableLowerFind(Table, CurrentName)
          local TableName
          for i, v in pairs(Table) do
              if string.find(CurrentName:gsub("%[", ""):gsub("%]", ""):lower(), v:lower()) then
                  TableName = v
              end
          end
          return TableName
      end
          
      function Spin(Speed)
          if Alive(LocalPlayer) then
              LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(Speed), 0)
          end
      end
      
      function TeleportBuy(Target, AutoSetDelay)
          if workspace.Ignored.Shop:FindFirstChild(Target) and Alive(LocalPlayer) then
              CheckmateModule.Old.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
              wait(0.05)
              LocalPlayer.Character.HumanoidRootPart.CFrame = Workspace.Ignored.Shop[Target].Head.CFrame * CFrame.new(0, 3, 0)
              wait(0.15)
              if CheckmateSettings.Teleport.AutoPurchase then
                  for i = 1, 10 do
                      fireclickdetector(Workspace.Ignored.Shop[Target].ClickDetector)
                  end
              end
              if CheckmateSettings.Teleport.TeleportReturn then
                  wait(CheckmateSettings.Teleport.ReturnDelay)
                  LocalPlayer.Character.HumanoidRootPart.CFrame = CheckmateModule.Old.CFrame  
              end
              if AutoSetDelay then
                  wait(1)
              end
          end
      end
      
      function Buy(Target, Delay, LagBack)
          if workspace.Ignored.Shop:FindFirstChild(Target) and Alive(LocalPlayer) then
              CheckmateModule.Old.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
              wait(0.05)
              LocalPlayer.Character.HumanoidRootPart.CFrame = Workspace.Ignored.Shop[Target].Head.CFrame * CFrame.new(0, 3, 0)
              wait(0.15)
              for i = 1, 3 do
                  fireclickdetector(Workspace.Ignored.Shop[Target].ClickDetector)
              end
              if LagBack then
                  wait(1)
                  LocalPlayer.Character.HumanoidRootPart.CFrame = CheckmateModule.Old.CFrame  
              end
              if Delay ~= nil then
                  wait(Delay)
              end
          end
      end
      
      function Visible(OriginPart, Part)
          if Alive(LocalPlayer) then
              local IgnoreList = {CurrentCamera, LocalPlayer.Character, OriginPart.Parent}
              local Parts = CurrentCamera:GetPartsObscuringTarget({OriginPart.Position, Part.Position}, IgnoreList)
          
              for i, v in pairs(Parts) do
                  if v.Transparency >= 0.3 then
                      CheckmateModule.Instance[#CheckmateModule.Instance + 1] = v
                  end
          
                  if v.Material == Enum.Material.Glass then
                      CheckmateModule.Instance[#CheckmateModule.Instance + 1] = v
                  end
              end
          
              return #Parts == 0
          end
          return true
      end
      
      function ToolName(Name)
          for Check = 1, 100000 do
              if Workspace.Ignored.Shop:FindFirstChild("[" .. Name .. "] - $" .. Check) then
                  return tostring("[" .. Name .. "] - $" .. Check)
              end
          end
      end
      
      function ToolAmmo(Name)
          for Check1 = 1, 250 do
              for Check2 = 1, 250 do
                  if Workspace.Ignored.Shop:FindFirstChild(Check1 .. " [" .. Name .. " Ammo] - $" .. Check2) then
                      return tostring(Check1 .. " [" .. Name .. " Ammo] - $" .. Check2)
                  end
              end
          end
      end
      
      function Invisible()
          if Alive(LocalPlayer) then
              CheckmateModule.Old.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
              print(CheckmateModule.Old.CFrame)
              wait(0.1)
              LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 96995694596945934234234234, 0)
              wait(0.1)
              LocalPlayer.Character.LowerTorso.Root:Destroy()
              for _, v in pairs(LocalPlayer.Character:GetChildren()) do
                  if v:IsA("MeshPart") and not table.find(CheckmateModule.Ignores, v.Name) then
                      v:Destroy()
                  end
              end
              wait(0.1)
              LocalPlayer.Character.HumanoidRootPart.CFrame = CheckmateModule.Old.CFrame
          end
      end
      
      function NilBody()
          if Alive(LocalPlayer) then
              for i, v in pairs(LocalPlayer.Character:GetChildren()) do
                  if v:IsA("BasePart") or v:IsA("Part") or v:IsA("MeshPart") then
                      if v.Name ~= "HumanoidRootPart" then
                          v:Destroy()
                      end
                  end
              end
          end
      end
      
      function ChanceTable(Table)
          local Chance = 0
          for i, v in pairs(Table) do
              Chance = Chance + v
          end
          Chance = math.random(0, Chance)
          for i, v in pairs(Table) do
              Chance = Chance - v
              if Chance <= 0 then
                  return i
              end
          end	
      end
      
      function RandomTable(Table)
          local Values = 0
          for i, v in pairs(Table) do
              Values = i
          end
          
          return Table[math.random(1, Values)]
      end
      
      function Remove(Data, Data2)
          for i, v in pairs(Data) do
              if v == Data2 then
                  table.remove(Data, i)
              end
          end
      end
      
      function IsVisible(GetPosition, IgnoreLists)
          return #CurrentCamera:GetPartsObscuringTarget({game.Players.LocalPlayer.Character.Head.Position, GetPosition}, IgnoreLists) == 0 and true or false
      end
      
      function GodFunction(Variable)
          LocalPlayer.Character.RagdollConstraints:Destroy()
          local Folder = Instance.new("Folder", LocalPlayer.Character)
          Folder.Name = "FULLY_LOADED_CHAR"
          wait()
          StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
          Variable = false
      end
      
      function Cham(Data, State)
          local BoxVar = nil
          local GlowVar = nil
          if State then
              for _, v in pairs(Data.Character:GetChildren()) do
                  if v:IsA("BasePart") and v.Transparency ~= 1 then
                      if not v:FindFirstChild("Box") then
                          BoxVar = Instance.new("BoxHandleAdornment", v)
                          BoxVar.Name = "Box"
                          BoxVar.AlwaysOnTop = true
                          BoxVar.ZIndex = 4
                          BoxVar.Adornee = v
                          BoxVar.Color3 = Color3.fromRGB(0, 153, 153)
                          BoxVar.Transparency = 0.5
                          BoxVar.Size = v.Size + Vector3.new(0.02, 0.02, 0.02)
                      end
                  end
              end
          else
              for i, v in pairs(Data.Character:GetChildren()) do
                  if v:IsA("BasePart") and v.Transparency ~= 1 then
                      if v:FindFirstChild("Box") then
                          v["Box"]:Destroy()
                      end
                  end
              end
              
              return BoxVar, GlowVar
          end
      end
      
      UserInputService.InputBegan:Connect(function(Key, Event)
          if Key.UserInputType == Enum.UserInputType.MouseButton2 and not Event then
              CheckmateSettings.Aiming.Aimbot.IsAiming = true
          end
      end)
      
      UserInputService.InputEnded:Connect(function(Key, Event)
          if Key.UserInputType == Enum.UserInputType.MouseButton2 and not Event then
              CheckmateSettings.Aiming.Aimbot.IsAiming = false
          end
      end)
      
      RunService.Heartbeat:Connect(function()
          if Alive(LocalPlayer) then
              if CheckmateSettings.Blatant.Movement.SpeedEnabled and CheckmateSettings.Blatant.Movement.SpeedType == "CFrame" then
                  if CheckmateSettings.Blatant.Movement.SpeedRenderType == "Default" then
                      if LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
                          for i = 1, CheckmateSettings.Blatant.Movement.SpeedAmount do
                              LocalPlayer.Character:TranslateBy(LocalPlayer.Character.Humanoid.MoveDirection)
                          end
                      end
                  end
              end
              if CheckmateSettings.Blatant.Character.AntiStomp then
                  if Knocked(LocalPlayer) then
                      if CheckmateSettings.Blatant.Character.AntiStompType == "Nil Char" then
                          NilBody()
                      end
                      if CheckmateSettings.Blatant.Character.AntiStompType == "Show Body" then
                          pcall(function()
                              LocalPlayer.Character.Humanoid:Destroy()
                          end)
                      end
                  end
              end
              if CheckmateSettings.Blatant.Character.AntiBag then
                  if LocalPlayer.Character:FindFirstChild("Christmas_Sock") then
                      LocalPlayer.Character:FindFirstChild("Christmas_Sock"):Destroy()
                  end
              end
              if CheckmateSettings.Blatant.Character.AntiGrab and LocalPlayer.Character:FindFirstChild("GRABBING_CONSTRAINT") then
                  LocalPlayer.Character["GRABBING_CONSTRAINT"]:Destroy()
              end
          end
      end)
      
      RunService.Stepped:Connect(function()
          if CheckmateSettings.Blatant.BlatantAA.UndergroundWallbang then
              for i, v in pairs(LocalPlayer.Character:GetDescendants()) do
                  if v:IsA("BasePart") and v.CanCollide == true then
                      v.CanCollide = false
                  end
              end
          end
      end)
      
      spawn(function()
          while wait() do
              if Alive(LocalPlayer) then
                  if CheckmateSettings.Blatant.Character.AutoLettuce then
                      pcall(function()
                          Buy("[Lettuce] - $5", 1)
                          if LocalPlayer.Backpack:FindFirstChild("[Lettuce]") then
                              LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack["[Lettuce]"])
                          end
                          wait(0.5)
                          LocalPlayer.Character["[Lettuce]"]:Activate()
                      end)
                  end
                  if CheckmateSettings.Blatant.Character.AutoReload then
                      local Gun = LocalPlayer.Character:FindFirstChildOfClass("Tool")
                      if Gun ~= nil and Gun:FindFirstChild("MaxAmmo") then
                          if Gun.Ammo.Value == 0 then
                              ReplicatedStorage.MainEvent:FireServer("Reload", Gun)
                          end
                      end
                  end
                  if CheckmateSettings.Blatant.Character.AutoArmor then
                      if LocalPlayer.Character.BodyEffects.Armor.Value == 0 then
                          Buy("[High-Medium Armor] - $2300", 0.5, true)
                      end
                  end
                  if CheckmateSettings.Blatant.Farming.MuscleFarm then
                      pcall(function()
                          if CheckmateSettings.Blatant.Farming.MuscleFarmingType == "Normal" then
                              if not LocalPlayer.Backpack:FindFirstChild("[Weights]") then
                                  Buy("[Weights] - $120", 1)
                              end
                              if LocalPlayer.Backpack:FindFirstChild("[Weights]") then
                                  LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack["[Weights]"])
                              end
                              LocalPlayer.Character["[Weights]"]:Activate()
                          end
                          if CheckmateSettings.Blatant.Farming.MuscleFarmingType == "Heavy" then
                              if not LocalPlayer.Backpack:FindFirstChild("[HeavyWeights]") then
                                  Buy("[HeavyWeights] - $250", 1)
                              end
                              if LocalPlayer.Backpack:FindFirstChild("[HeavyWeights]") then
                                  LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack["[HeavyWeights]"])
                              end
                              LocalPlayer.Character["[HeavyWeights]"]:Activate()
                          end
                      end)
                  end
                  if CheckmateSettings.Blatant.Farming.ShoeFarm then
                      pcall(function()
                          for i, v in pairs(Workspace.Ignored.Drop:GetChildren()) do
                              if v.Name == "MeshPart" then
                                  LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0, 2, 0)
                                  local ShoeDistance = (v.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                  if ShoeDistance < 25 then
                                      fireclickdetector(v.ClickDetector)
                                  end
                              else
                                  fireclickdetector(Workspace.Ignored["Clean the shoes on the floor and come to me for cash"].ClickDetector)
                              end
                          end
                      end)
                  end
                  if CheckmateSettings.Blatant.Farming.HospitalFarm then
                      LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(116, 23, -479)
                      for _, v in pairs(Workspace.Ignored.HospitalJob:GetChildren()) do
                          if v.Name == "Can I get the Green bottle" then
                              fireclickdetector(v.Parent.Green.ClickDetector)
                              wait(1)
                              fireclickdetector(v.ClickDetector)
                          end
                          if v.Name == "Can I get the Blue bottle" then
                              fireclickdetector(v.Parent.Blue.ClickDetector)
                              wait(1)
                              fireclickdetector(v.ClickDetector)
                          end
                          if v.Name == "Can I get the Red bottle" then
                              fireclickdetector(v.Parent.Red.ClickDetector)
                              wait(1)
                              fireclickdetector(v.ClickDetector)
                          end
                      end
                  end
                  if CheckmateSettings.Blatant.Farming.BoxFarm then
                      pcall(function()
                          LocalPlayer.Character.HumanoidRootPart.CFrame = Workspace.MAP.Map.ArenaBOX.PunchingBagInGame["pretty ransom"].CFrame * CFrame.new(0, -1, 3)
                          if LocalPlayer.Backpack:FindFirstChild("Combat") then
                              LocalPlayer.Backpack.Combat.Parent = LocalPlayer.Character
                          end
                      end)
                      mouse1click()
                  end
              end
          end
      end)
      
      spawn(function()
          while wait() do
              if CheckmateSettings.Blatant.Farming.ATMFarm then
                  for _, v in pairs(Workspace.Cashiers:GetChildren()) do
                      if v:FindFirstChild("Head") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                          repeat
                              CheckmateSettings.Blatant.Farming.ATMPick = false
                              wait()
                              if CheckmateSettings.Blatant.Farming.ATMFarm then
                                  if Alive(LocalPlayer) then
                                      LocalPlayer.Character.HumanoidRootPart.CFrame = v.Head.CFrame * CFrame.new(0, -1, 2.5)
                                      if LocalPlayer.Backpack:FindFirstChild("Combat") then
                                          LocalPlayer.Backpack.Combat.Parent = LocalPlayer.Character
                                      end
                                      --if LocalPlayer.Character:FindFirstChild("Combat") then
                                          LocalPlayer.Character["Combat"]:Activate()
                                      --end
                                  end
                              end
                          until v.Humanoid.Health <= 0 or not CheckmateSettings.Blatant.Farming.ATMFarm
                          pcall(function()
                              LocalPlayer.Character:FindFirstChildOfClass("Tool").Parent = LocalPlayer.Backpack
                          end)
                          CheckmateSettings.Blatant.Farming.ATMPick = true
                          wait(5)
                      end
                  end
              end
          end
      end)
      
      RunService.RenderStepped:Connect(function()
          if Alive(LocalPlayer) then
              if CheckmateSettings.Aiming.AimingSettings.PingBasedPrediction then
                  local PingStats = GetService.Stats.Network.ServerStatsItem["Data Ping"]:GetValueString()
                  local Value = tostring(PingStats)
                  local PingValue = Value:split(" ")
                  local PingNumber = tonumber(PingValue[1])
          
                  if PingNumber < 130 then
                      CheckmateSettings.Aiming.AimingSettings.GetVelocity = PingNumber / 1000 + 0.037
                  else
                      CheckmateSettings.Aiming.AimingSettings.GetVelocity = PingNumber / 1000 + 0.033
                  end
              else
                  CheckmateSettings.Aiming.AimingSettings.GetVelocity = 0.165
              end
              if CheckmateSettings.Blatant.Cash.AutoDrop then
                  ReplicatedStorage.MainEvent:FireServer("DropMoney", tostring(CheckmateSettings.Blatant.Cash.AutoDropAmount))
              end
              if CheckmateSettings.Blatant.Cash.AutoPickCash then
                  pcall(function()
                      for _, v in pairs(Workspace.Ignored.Drop:GetChildren()) do
                          if v.Name == "MoneyDrop" then
                              local MoneyMagnitude = (v.Position - LocalPlayer.Character.HumanoidRootPart.Position).magnitude
                              if MoneyMagnitude < 25 then
                                  fireclickdetector(v.ClickDetector)
                              end 
                          end
                      end
                  end)
              end
              if CheckmateSettings.Blatant.Farming.ATMPick then
                  pcall(function()
                      for _, v in pairs(Workspace.Ignored.Drop:GetChildren()) do
                          if v.Name == "MoneyDrop" then
                              local MoneyMagnitude = (v.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                              if MoneyMagnitude < 25 then
                                  fireclickdetector(v.ClickDetector)
                              end 
                          end
                      end
                  end)
              end
              if CheckmateSettings.Blatant.Movement.SpeedEnabled and CheckmateSettings.Blatant.Movement.SpeedType == "CFrame" then
                  if CheckmateSettings.Blatant.Movement.SpeedRenderType == "Fast" and Alive(LocalPlayer) then
                      if LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
                          for i = 1, CheckmateSettings.Blatant.Movement.SpeedAmount do
                              LocalPlayer.Character:TranslateBy(LocalPlayer.Character.Humanoid.MoveDirection)
                          end
                      end
                  end
              end
              if CheckmateSettings.Blatant.Reaching.FistReach and LocalPlayer.Character.LeftHand.Transparency ~= 1 then
                  LocalPlayer.Character.LeftHand.Size = Vector3.new(45, 45, 45)
                  LocalPlayer.Character.RightHand.Size = Vector3.new(45, 45, 45)
                  LocalPlayer.Character.RightHand.Massless = true
                  LocalPlayer.Character.LeftHand.Massless = true
                  LocalPlayer.Character.RightHand.Transparency = 1
                  LocalPlayer.Character.LeftHand.Transparency = 1
              end
              if CheckmateSettings.Blatant.Reaching.MeleeReach then
                  local Tool = LocalPlayer.Character:FindFirstChildOfClass("Tool")
                  if Tool ~= nil and not Tool:FindFirstChild("Ammo") and TableLowerFind(CheckmateModule.Teleport.Melee, Tool.Name) ~= nil and Tool:FindFirstChild("Handle") then
                      if Tool.Handle.Transparency ~= 1 then
                          Tool.Handle.Size = Vector3.new(45, 45, 45)
                          Tool.Handle.Transparency = 1
                      end
                  end
              else
                  local Tool = LocalPlayer.Character:FindFirstChildOfClass("Tool")
                  if Tool ~= nil and not Tool:FindFirstChild("Ammo") and TableLowerFind(CheckmateModule.Teleport.Melee, Tool.Name) ~= nil and Tool:FindFirstChild("Handle") then
                      if Tool.Handle.Transparency == 1 then
                          if Tool.Name == "knife" then
                              Tool.Handle.Size = Vector3.new(2.19574, 0.449288, 0.102495)
                          end
                          if Tool.Name == "bat" then
                              Tool.Handle.Size = Vector3.new(0.559523, 4.68133, 0.559523)
                          end
                          if Tool.Name == "pencil" then
                              Tool.Handle.Size = Vector3.new(0.375586, 1.9, 0.375587)
                          end
                          if Tool.Name == "pitchfork" then
                              Tool.Handle.Size = Vector3.new(1.0553, 5.86135, 0.316619)
                          end
                          if Tool.Name == "shovel" then
                              Tool.Handle.Size = Vector3.new(1.68383, 5.903, 0.337731)
                          end
                          Tool.Handle.Transparency = 0
                      end
                  end
              end
              if CheckmateSettings.Blatant.LegitAA.Enabled then
                  if CheckmateSettings.Blatant.LegitAA.AntiPointAt then
                      for i, v in next, Players:GetPlayers() do
                          if v ~= LocalPlayer and Alive(v) and Alive(LocalPlayer) then
                              local BodyEffects = v.Character:FindFirstChild("BodyEffects")
                              local MousePos = BodyEffects:FindFirstChild("MousePos")
                              if BodyEffects ~= nil and MousePos ~= nil then
                                  local EnemyMouseMagnitude = (LocalPlayer.Character.HumanoidRootPart.Position - MousePos.Value).Magnitude
                                  if CheckmateSettings.Blatant.LegitAA.AntiAimAtDistance > EnemyMouseMagnitude then
                                      Root.CFrame = Root.CFrame * CFrame.new(math.random(1, 2) == 1 and 2 or -2, 0, 0)
                                  end
                              end
                          end
                      end
                  end
              end
              if CheckmateSettings.Blatant.BlatantAA.Enabled then
                      if CheckmateSettings.Blatant.BlatantAA.AntiAimType == "Jitter" then
                          Jitter(CheckmateSettings.Blatant.BlatantAA.AntiAimSpeed, CheckmateSettings.Blatant.BlatantAA.JitterAngle)
                      else
                          Spin(CheckmateSettings.Blatant.BlatantAA.AntiAimSpeed)
                      end
                      if CheckmateSettings.Blatant.BlatantAA.NoAutoRotate then
                          LocalPlayer.Character.Humanoid.AutoRotate = false
                      else
                          LocalPlayer.Character.Humanoid.AutoRotate = true
                      end
              else
                  LocalPlayer.Character.Humanoid.AutoRotate = true
              end
          end
          if CheckmateSettings.Aiming.TargetAimSettings.UnlockTargetKnocked then
              if CheckmateSettings.Aiming.TargetAimSettings.Target ~= nil and Players:FindFirstChild(CheckmateSettings.Aiming.TargetAimSettings.Target) then
                  if Knocked(Players:FindFirstChild(CheckmateSettings.Aiming.TargetAimSettings.Target)) then
                      CheckmateSettings.Aiming.TargetAimSettings.Target = nil
                  end
              end
          end
          if CheckmateSettings.Aiming.SilentAim.ShowFOV then
              local nouseLocation = serInputService:GetMouseLocation()
              SilentAimFOV.Visible = true
              SilentAimFOV.Radius = CheckmateSettings.Aiming.FOV.SilentAimSize
              SilentAimFOV.Filled = CheckmateSettings.Aiming.FOV.FOVFilled
              SilentAimFOV.Position = nouseLocation
              SilentAimFOV.Transparency = CheckmateSettings.Aiming.FOV.Transparency
              SilentAimFOV.NumSides = 100
              SilentAimFOV.Color = CheckmateSettings.Aiming.SilentAim.FOVColor
              --SilentAimFOV.Position = Vector2.new(Mouse.X, Mouse.Y)
          else
              SilentAimFOV.Visible = false
          end
          if CheckmateSettings.Aiming.Aimbot.Enabled then
              if CheckmateSettings.Aiming.Aimbot.ShowFOV then
                  AimbotFOV.Visible = true
                  AimbotFOV.Radius = CheckmateSettings.Aiming.FOV.AimAssistSize
                  AimbotFOV.Filled = CheckmateSettings.Aiming.FOV.FOVFilled
                  AimbotFOV.Transparency = CheckmateSettings.Aiming.FOV.Transparency
                  AimbotFOV.NumSides = 100
                  AimbotFOV.Color = CheckmateSettings.Aiming.Aimbot.FOVColor
                  AimbotFOV.Position = Vector2.new(Mouse.X, Mouse.Y + GuiInset.Y)
              else
                  AimbotFOV.Visible = false
              end
              if CheckmateSettings.Aiming.Aimbot.AimAssist and CheckmateSettings.Aiming.Aimbot.IsAiming then
                  local NearestTarget, NearestDistance = NearestType(CheckmateSettings.Aiming.Aimbot.UseNearestDistance and "Distance" or "Mouse")
      
                  if NearestTarget and (not CheckmateSettings.Aiming.Aimbot.GrabbedCheck or not Grabbing(NearestTarget)) and (not CheckmateSettings.Aiming.Aimbot.KnockedOutCheck or not Knocked(NearestTarget)) and (not CheckmateSettings.Aiming.Aimbot.ShowFOV or CheckmateSettings.Aiming.FOV.AimAssistSize > NearestDistance) and (not CheckmateSettings.Aiming.Aimbot.WallCheck or Visible(NearestTarget.Character.HumanoidRootPart, LocalPlayer.Character.HumanoidRootPart)) then
                      local TargetPart = (NearestTarget.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall and NearestTarget.Character.LeftFoot or NearestTarget.Character[RandomTable(CheckmateSettings.Aiming.Aimbot.Hitboxes)])
                      local Prediction = (CheckmateSettings.Aiming.TargetAimSettings.MovementPrediction and TargetPart.CFrame + (TargetPart.Velocity * CheckmateSettings.Aiming.TargetAimSettings.MovementPredictionAmount) or TargetPart.CFrame + (TargetPart.Velocity * CheckmateSettings.Aiming.AimingSettings.GetVelocity))
                      
                      if CheckmateSettings.Aiming.AimbotSettings.AimAssistType == "Mouse" then
                          local NearestPosition, NearestVisible = CurrentCamera:WorldToScreenPoint(Prediction.Position)
                          local MouseLocation = CurrentCamera:WorldToScreenPoint(Mouse.Hit.Position)
                          local EndPosition = (CheckmateSettings.Aiming.AimbotSettings.SmoothingTracing and Vector2.new((NearestPosition.X - MouseLocation.X) / CheckmateSettings.Aiming.AimbotSettings.SmoothingTracingAmount, (NearestPosition.Y - MouseLocation.Y) / CheckmateSettings.Aiming.AimbotSettings.SmoothingTracingAmount) or Vector2.new((NearestPosition.X - MouseLocation.X) / 1.4, (NearestPosition.Y - MouseLocation.Y) / 1.4))
                          
                          if NearestVisible then
                              mousemoverel(EndPosition.X, EndPosition.Y)
                          end
                      elseif CheckmateSettings.Aiming.AimbotSettings.AimAssistType == "Camera" then
                          CurrentCamera.CFrame = CFrame.lookAt(CurrentCamera.CFrame.Position, Prediction.Position)
                      end
                  end
              end
          else
              AimbotFOV.Visible = false
          end
      end)
      
      spawn(function()
          while wait(1 / 16) do
              LagTick = math.clamp(CheckmateModule.LagTick + 1, 0, CheckmateSettings.Blatant.FakeLag.TriggerAmount)
              if Alive(Player) and CheckmateSettings.Blatant.FakeLag.Enabled then
                  if LagTick == math.random(1, CheckmateSettings.Blatant.FakeLag.TriggerAmount) then
                      Network:SetOutgoingKBPSLimit(9e9)
                      CheckmateFolder:ClearAllChildren()
                      LagTick = 0
                      --[[
                          if Settings.Visuals.PlayerESP.FakeLag.Cham then
                              for i, v in pairs(Player.Character:GetChildren()) do
                                  if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
                                      local ShadowPart = Instance.new("Part")
                                      ShadowPart.CFrame = v.CFrame
                                      ShadowPart.Anchored = true
                                      ShadowPart.CanCollide = false
                                      ShadowPart.Material = Enum.Material.ForceField
                                      ShadowPart.Color = Settings.Visuals.PlayerESP.FakeLag.Color
                                      ShadowPart.Name = v.Name
                                      ShadowPart.Transparency = 0
                                      ShadowPart.Size = v.Size
                                      ShadowPart.Parent = FakeLagFolder
                                  end
                              end
                          end
                      ]]
                  else
                      if CheckmateSettings.Blatant.FakeLag.Enabled then
                          Network:SetOutgoingKBPSLimit(1)
                      end
                  end
              else
                  CheckmateFolder:ClearAllChildren()
                  Network:SetOutgoingKBPSLimit(9e9)
              end
          end
      end)
      
      local __namecall -- cock ;)
      __namecall = hookmetamethod(game, "__namecall", function(self, ...)
          local Args = {...}
          local Method = getnamecallmethod()
      
          if tostring(self.Name) == "MainEvent" and tostring(Method) == "FireServer" then
              if Args[1] == "TeleportDetect" or Args[1] == "CHECKER_1" or Args[1] == "OneMoreTime" then
                  return
              end
          end
      
          return __namecall(self, ...)
      end)
      
      local __index -- <3
      __index = hookmetamethod(game, "__index", function(self, key)
          if self == Mouse and (tostring(key) == "Hit" or tostring(key) == "Target") then
              if CheckmateSettings.Aiming.TargetAim.Enabled then
                  if CheckmateSettings.Aiming.TargetAim.Target ~= nil and ChanceTable(CheckmateSettings.Aiming.AimingSettings.HitChanceAmount) == "HitPercent" then
                      if Players:FindFirstChild(CheckmateSettings.Aiming.TargetAim.Target) ~= nil and (not CheckmateSettings.Aiming.TargetAim.GrabbedCheck or not Grabbing(Players[CheckmateSettings.Aiming.TargetAim.Target])) and (not CheckmateSettings.Aiming.TargetAim.KnockedOutCheck or not Knocked(Players[CheckmateSettings.Aiming.TargetAim.Target])) and (not CheckmateSettings.Aiming.TargetAim.ShowFOV or CheckmateSettings.Aiming.FOV.TargetAimSize > (LocalPlayer.Character.Head.Position - Players[CheckmateSettings.Aiming.TargetAim.Target].Character.Head.Position).Magnitude) and (not CheckmateSettings.Aiming.TargetAim.WallCheck or Visible(Players[CheckmateSettings.Aiming.TargetAim.Target].Character.HumanoidRootPart, LocalPlayer.Character.HumanoidRootPart)) then
                          local TargetPart = (Players[CheckmateSettings.Aiming.TargetAim.Target].Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall and Players[CheckmateSettings.Aiming.TargetAim.Target].Character.LeftFoot or Players[CheckmateSettings.Aiming.TargetAim.Target].Character[RandomTable(CheckmateSettings.Aiming.TargetAim.Hitboxes)])
                          local Prediction = (CheckmateSettings.Aiming.TargetAimSettings.MovementPrediction and TargetPart.CFrame + (TargetPart.Velocity * CheckmateSettings.Aiming.TargetAimSettings.MovementPredictionAmount) or TargetPart.CFrame + (TargetPart.Velocity * CheckmateSettings.Aiming.AimingSettings.GetVelocity))
      
                          return (tostring(key) == "Hit" and Prediction or tostring(key) == "Target" and TargetPart)
                      end
                  end
              else    
                  if CheckmateSettings.Aiming.SilentAim.Enabled and ChanceTable(CheckmateSettings.Aiming.AimingSettings.HitChanceAmount) == "HitPercent" then
                      local NearestTarget, NearestDistance = NearestType(CheckmateSettings.Aiming.SilentAim.UseNearestDistance and "Distance" or "Mouse")
          
                      if NearestTarget and (not CheckmateSettings.Aiming.SilentAim.GrabbedCheck or not Grabbing(NearestTarget)) and (not CheckmateSettings.Aiming.SilentAim.KnockedOutCheck or not Knocked(NearestTarget)) and (not CheckmateSettings.Aiming.SilentAim.ShowFOV or CheckmateSettings.Aiming.FOV.SilentAimSize > NearestDistance) and (not CheckmateSettings.Aiming.SilentAim.WallCheck or IsVisible(NearestTarget.Character.Head.Position, {NearestTarget.Character, LocalPlayer.Character, CurrentCamera}) == true) then
                          local TargetPart = (NearestTarget.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall and NearestTarget.Character.LeftFoot or NearestTarget.Character[RandomTable(CheckmateSettings.Aiming.SilentAim.Hitboxes)])
                          local Prediction = (CheckmateSettings.Aiming.TargetAimSettings.MovementPrediction and TargetPart.CFrame + (TargetPart.Velocity * CheckmateSettings.Aiming.TargetAimSettings.MovementPredictionAmount) or TargetPart.CFrame + (TargetPart.Velocity * CheckmateSettings.Aiming.AimingSettings.GetVelocity))
          
                          return (tostring(key) == "Hit" and Prediction or tostring(key) == "Target" and TargetPart)
                      end
                  end
              end
              
          end
      
          return __index(self, key)
      end)
      
      while wait() do
          if CheckmateSettings.Aiming.TriggerBot.Enabled then
              for i, v in next, Players:GetPlayers() do 
                  if Alive(v) then 
                      if Mouse.Target:IsDescendantOf(v.Character) then 
                          mouse1press()
                          wait()
                          mouse1release()
                          if CheckmateSettings.Aiming.TriggerBot.Delay then
                              wait(CheckmateSettings.Aiming.TriggerBot.DelayAmount)
                          end
                      end 
                  end
              end
          end
      end 
 
 else
     game.Players.LocalPlayer:kick("You're playing the wrong game lmao") -- kick wenn placeid nicht hood modded ist
 end
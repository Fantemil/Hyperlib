getgenv().Looten = {
  ['StartUP'] = {
      Key = 'LuarmorKey', -- replace with luarmor key
      UWP_Optimize = true,
      UnlockFPS = true,
      Intro = true
  },
  ['Silent'] = {
      Normal = {
          Enabled = true,
          HitChance = 300,
      },
      KeyBind = {
          Enabled = true,
          KeyBind = 't',
          Notification = true,
      },
      HitPart = {
          NearestPoint = true,
          HitPart = 'HumanoidRootPart',
      },
      Prediction = {
          Enabled = true,
          AutoMated = false, -- auto prediction
          Prediction = 0.125,
      },
  },
  ['CamLock'] = {
      Normal = {
          Enabled = true,
          ThirdPerson = true,
          FirstPerson = true,
      },
      KeyBind = {
          Hold = false,
          Mode = 'KeyBind', -- or "Mouse"
          KeyBind = 'q',
          MouseBind = Enum.UserInputType.MouseButton2,
      },
      Prediction = {
          Enabled = true,
          Prediction = 0.115,
      },
      Style = {
          First = 'Elastic',
          Second = 'Sine'
      },
      Smoothness = {
          Enabled = true,
          Smoothness = 0.038,
          AirShot = 0.037,
      },
      Shake = {
          Enabled = false,
          DirectionX = 8,
          DirectionY = 6,
          DirectionZ = 7,
      },
      HitPart = {
          NearestPoint = true,
          AirShot = true,
          Part = 'HumanoidRootPart',
          AirPart = 'HumanoidRootPart',
      },
      AutoUnLock = {
          Reloading = true,
          Typing = true,
      },
  },
  ['Fov'] = {
      CamLock = {
          Show = false,
          Use_Radius = false,
          Radius = 160,
          Model = 'Circle'
      },
      SilentAim = {
          Show = false,
          Use_Radius = true,
          Radius = 10,
          Model = 'Circle'
      },
  },
  ['Adjustment'] = {
    ['Checks'] = {
          Resolver = true,
          Anti_Aim_Viewer = true,
          Wall_Check = true,
          Disable_Ground_Shots = true,
          Crew_Check = false,
          Knocked_Check = true,
          AntiCurve = true,
          NoGroundShots = true,
      },
      ['Gun_Fov'] = {
          Enabled = false,
          DoubleBarrel = 22.5,
          Revolver = 27.5,
          Shotgun = 35,
          TacticalShotgun = 35,
          Smg = 25,
          Silencer = 32.5
      },
      ['Macro'] = {
          Enabled = true,
          Hold_Key = true,
          KeyBind = Enum.KeyCode.X,
          Mode = '1' -- 1 = ioio 2 = scroll
      },
      ['TriggerBot'] = {
          Enabled = false,
          Delay = 0.1,
              KeyBinds = {
                  Enabled = true,
                  Notifications = true,
                  KeyBind = 't',
          },
      },
      ['Memory'] = {
          Enable = true,
          Start = 971,
          End = 984,
          Speed = 1,
      },
      ['Animation'] = { -- keybind = use animation
          Lay = false,
          LayKey = Enum.KeyCode.T,
          Greet = true,
          GreetKey = Enum.KeyCode.G,
          Speed = false,
          SpeedKey = Enum.KeyCode.N,
          Sturdy = false,
          SturdyKey = Enum.KeyCode.H,
          Griddy = false,
          GriddyKey = Enum.KeyCode.G,
      },
      ['Chat'] = {
          Enabled = true, --  example !fov 120
          SilentAim_Fov_Size = '!fov',
          SilentAim_Prediction = '!Prediction',
          CamLock_fov_Size = '/fov',
          CamLock_Smoothness = '/Smoothness',
          CamLock_PreDiction = '/ped',
      },
  },
}


local Games = {
    [2788229376] = {Name = "Da Hood", Argument = "UpdateMousePos", Remote = "MainEvent", BodyEffects = "K.O",},
    [9825515356] = {Name = "Hood Customs", Argument = "GetMousePos", Remote = "MainEvent"},
    [5602055394] = {Name = "Hood Modded", Argument = "MousePos", Remote = "Bullets"},
    [9183932460] = {Name = "Untitled Hood", Argument = "UpdateMousePos", Remote = ".gg/untitledhood"},
    [14412355918] = {Name = "Da Downhill", Argument = "MOUSE", Remote = "MAINEVENT"},
    [14412601883] = {Name = "Hood Bank", Argument = "MOUSE", Remote = "MAINEVENT"},
    [14412436145] = {Name = "Da Uphill", Argument = "MOUSE", Remote = "MAINEVENT"},
    [14487637618] = {Name = "Da Hood Bot Aim Trainer", Argument = "MOUSE", Remote = "MAINEVENT"},
    [11143225577] = {Name = "1v1 Hood Aim Trainer", Argument = "UpdateMousePos", Remote = "MainEvent"},
    [14413712255] = {Name = "Hood Aim", Argument = "MOUSE", Remote = "MAINEVENT"},
    [14472848239] = {Name = "Moon Hood", Argument = "MoonUpdateMousePos", Remote = "MainEvent"},
}


local VirtualInputManager = game:GetService("VirtualInputManager")
  
if getgenv().Looten.StartUP.UnlockFPS then
    setfpscap(999)
end

if getgenv().Looten.StartUP.UWP_Optimize then
    VirtualInputManager:SendKeyEvent(true, "F9", 0, game) wait() VirtualInputManager:SendKeyEvent(false, "F9", 0, game)

    game.DescendantAdded:Connect(function(descendant)
        if descendant.Name == "MainView" and descendant.Parent.Name == "DevConsoleUI" then
            task.wait()
            local Descendant = descendant.Parent.Parent.Parent
            Descendant.Enabled = false;
        end
    end)

    coroutine.resume(coroutine.create(function()
        while task.wait() do 
            pcall(function()
                if not game:GetService("CoreGui"):FindFirstChild("DevConsoleUI", true):FindFirstChild("MainView") then
                    VirtualInputManager:SendKeyEvent(true, "F9", 0, game)
                    wait()
                    VirtualInputManager:SendKeyEvent(false, "F9", 0, game)
                end
            end)
        end
    end))
end

-- // Vars

local req =  (syn and syn.request or request);

getgenv().AGV                      = 0.5
getgenv().WAGA                     = -20
getgenv().DD                       = true
getgenv().DV                       = 86
getgenv().DUG                      = true
getgenv().UD                       = -30
getgenv().DC                       = true
getgenv().FMS                      = Enum.EasingStyle.Elastic
getgenv().SMS                      = Enum.EasingStyle.Sine
getgenv().DOC                      = false

local HHAAHAHAHHAHAHAHAHAHHAHAH    = game:GetService("RunService")
local AHAHAHAHHAAHAHAHAHA          = getgenv().Looten.CamLock.Smoothness.Smoothness
local Players                      = game:GetService("Players")
local AHAHAHAHAHAHHAHAHHA          = nil
local AHAHAHAHAHAHAHAHAAA          = nil
local AHAHAHAHAHAHHAHAHAH          = false
local AHAHAHAHAHAHAHAHAAH          = false
local AHAHHAAAHAHHAAHHAHA          = false
local AHAHAHAHAHAAHAHAHAH          = CFrame.new()
local AHHAAHAHAHAHAHAAAAH          = game:GetService("GuiService")
local AHAHAHAHAHAHAHAAHAH          = getgenv().Looten.Adjustment.TriggerBot.Delay
local Client                       = game:GetService("Players").LocalPlayer
local AHAHAHAHAAHHAAHAHAHA         = false
local DU                           = false
local AHAHAAHAHAHHHAHAHAHA         = getgenv().Looten.CamLock.Shake.DirectionX
local AHAHAAHAHHHAHAHAHAHA         = getgenv().Looten.CamLock.Shake.DirectionY
local AHAHAAHAAAAAAHAHAHAA         = getgenv().Looten.CamLock.Shake.DirectionZ
local Camera                       = game:GetService("Workspace").CurrentCamera
local Mouse                        = game:GetService("Players").LocalPlayer:GetMouse()
local HAHAAHAHAHAHAHHAAH           = 0.05
local AHAHAHAHAHAHAHAHAHAH         = tick()
local AAAHAHAAHAHAHAAHAHAHAH       = 0.12
local AHHAHAAHAHAHAHHAHAH          = tick()
local AHAHAHAHAAHAHAHAAH           = game:GetService("UserInputService")

local FKWPOAKFAPOAWKFPOFWKAFPOAWFK        = Drawing.new("Circle")
FKWPOAKFAPOAWKFPOFWKAFPOAWFK.Color        = Color3.new(1, 1, 1)
FKWPOAKFAPOAWKFPOFWKAFPOAWFK.Thickness    = 1
FKWPOAKFAPOAWKFPOFWKAFPOAWFK.Color        = Color3.fromRGB(255, 0, 0)
FKWPOAKFAPOAWKFPOFWKAFPOAWFK.Filled       = false
FKWPOAKFAPOAWKFPOFWKAFPOAWFK.Transparency = 1

local FWAKFAPFKWPAOFKAWFPAP               = Drawing.new("Circle")
FWAKFAPFKWPAOFKAWFPAP.Color               = Color3.fromRGB(255, 0, 0)
FWAKFAPFKWPAOFKAWFPAP.Thickness           = 1
FWAKFAPFKWPAOFKAWFPAP.Filled              = false
FWAKFAPFKWPAOFKAWFPAP.Transparency        = 1

local FKAOIFAIKOFAWIOGFAWJNGANGAOWIGAOG = function()
  if (not FKWPOAKFAPOAWKFPOFWKAFPOAWFK and not FWAKFAPFKWPAOFKAWFPAP) then
      return FKWPOAKFAPOAWKFPOFWKAFPOAWFK and FWAKFAPFKWPAOFKAWFPAP
  end
  FWAKFAPFKWPAOFKAWFPAP.Visible            = getgenv().Looten.Fov.CamLock.Show
  FWAKFAPFKWPAOFKAWFPAP.Radius             = getgenv().Looten.Fov.CamLock.Radius * 3
  FWAKFAPFKWPAOFKAWFPAP.Position           = Vector2.new(Mouse.X, Mouse.Y + (AHHAAHAHAHAHAHAAAAH:GetGuiInset().Y))
  FKWPOAKFAPOAWKFPOFWKAFPOAWFK.Visible     = getgenv().Looten.Fov.SilentAim.Show
  FKWPOAKFAPOAWKFPOFWKAFPOAWFK.Position    = Vector2.new(Mouse.X, Mouse.Y + (AHHAAHAHAHAHAHAAAAH:GetGuiInset().Y))
  FKWPOAKFAPOAWKFPOFWKAFPOAWFK.Radius      = getgenv().Looten.Fov.SilentAim.Radius * 3
  return FKWPOAKFAPOAWKFPOFWKAFPOAWFK and FWAKFAPFKWPAOFKAWFPAP
end

local FWAKOIIIIIIIIIIIfawfwafawf = function(plr)
  if
      plr and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") ~= nil and
          plr.Character:FindFirstChild("Humanoid") ~= nil and
          plr.Character:FindFirstChild("Head") ~= nil
   then
      return true
  end
  return false
end

local FWAIUOJJJJJJJJJJJJJJJJJJ = function(Object)
  local FWAIUOJJJJJJJJJJJJJJJJJJ = Camera:WorldToScreenPoint(Object.Position)
  return FWAIUOJJJJJJJJJJJJJJJJJJ
end

local GJNAGJIEAGNAEGIXDXD = function(Part, PartDescendant)
  local Character = Client.Character or Client.CharacterAdded.Wait(Client.CharacterAdded)
  local Origin = Camera.CFrame.Position
  local _, OnScreen = Camera.WorldToViewportPoint(Camera, Part.Position)

  if (OnScreen) then
      local raycastParams = RaycastParams.new()
      raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
      raycastParams.FilterDescendantsInstances = {Character, Camera}

      local Result = Workspace.Raycast(Workspace, Origin, Part.Position - Origin, raycastParams)

      if (Result) then
          local PartHit = Result.Instance
          local Visible = (not PartHit or Instance.new("Part").IsDescendantOf(PartHit, PartDescendant))

          return Visible
      end
  end
  return false
end

local FWAINFFANWFNIFINFAINFFJIN = function(Object)
  if string.find(Object.Name, "Gun") then
      return
  end
  if table.find({"Part", "MeshPart", "BasePart"}, Object.ClassName) then
      return true
  end
end

local WOIPAPORIAWPRIWRPAOFJWOIA = function(character)
  local ClosestDistance = 1 / 0
  local BodyPart = nil

  if (character and character:GetChildren()) then
      for _, x in next, character:GetChildren() do
          if FWAINFFANWFNIFINFAINFFJIN(x) and FWAIUOJJJJJJJJJJJJJJJJJJ(x) then
              local Position = Camera:WorldToScreenPoint(x.Position)
              local Distance = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(Position.X, Position.Y)).Magnitude
              if (Distance < ClosestDistance) then
                  ClosestDistance = Distance
                  BodyPart = x
              end
          end
      end
  end
  return BodyPart
end

local IGNAGOIAWGAWGAUDIHNADAI = function(Part)
  if Part ~= nil then
      local Hit, Half = Mouse.Hit.Position, Part.Size * 0.25
      local Transform = Part.CFrame:PointToObjectSpace(Mouse.Hit.Position)
      local NearestPosition =
          Part.CFrame *
          Vector3.new(
              math.clamp(Transform.X, -Half.X, Half.X),
              math.clamp(Transform.Y, -Half.Y, Half.Y),
              math.clamp(Transform.Z, -Half.Z, Half.Z)
          )
      return NearestPosition
  end
  return nil
end

local AHAHAHAHAHAHAAHAHH = function(percentage)
  percentage = math.floor(percentage)

  local chance = math.floor(Random.new().NextNumber(Random.new(), 0, 1) * 100) / 100

  return chance <= percentage / 100
end

HHAAHAHAHHAHAHAHAHAHHAHAH.Heartbeat:Connect(FKAOIFAIKOFAWIOGFAWJNGANGAOWIGAOG)

local AHAHHAHAHHHHAHAHAHAHAHAAHH = function()
  local Target, Closest = nil, 1 / 0
  local HitChance = AHAHAHAHAHAHAAHAHH(getgenv().Looten.Silent.Normal.HitChance)
  local thresholdDistance = 100

  if not HitChance then
      Target = nil
      return Target
  end

  for _, v in pairs(Players:GetPlayers()) do
      if (v.Character and v ~= Client and v.Character:FindFirstChild("HumanoidRootPart")) then
          if
              Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position) and
                  GJNAGJIEAGNAEGIXDXD(v.Character.HumanoidRootPart, v.Character)
           then
              local Position = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
              local Distance = ((Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(Position.X, Position.Y)).Magnitude) * 0.6
              if
                  (Distance < Closest and FKWPOAKFAPOAWKFPOFWKAFPOAWFK.Radius > Distance and
                      Distance < thresholdDistance)
               then
                  Closest = Distance
                  Target = v
              end
          end
      end
  end

  if
      getgenv().Looten.Adjustment.Checks.Knocked_Check == true and FWAKOIIIIIIIIIIIfawfwafawf(Target) and
          Target.Character:FindFirstChild("BodyEffects")
   then
      local currentTime = tick()
      local elapsedTime = currentTime - AHAHAHAHAHAHAHAHAHAH
      if elapsedTime >= HAHAAHAHAHAHAHHAAH then
          AHAHAHAHAHAHAHAHAHAH = currentTime
      end
      local KOd = Target.Character.BodyEffects:FindFirstChild("K.O").Value
      local Grabbed = Target.Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
      if KOd or Grabbed then
          AHAHAHAHAHAHHAHAHHA = nil
          return
      end
  end
  if getgenv().DC == true and FWAKOIIIIIIIIIIIfawfwafawf(Target) then
      local currentTime = tick()
      local elapsedTime = currentTime - AHAHAHAHAHAHAHAHAHAH
      if elapsedTime >= HAHAAHAHAHAHAHHAAH then
          AHAHAHAHAHAHAHAHAHAH = currentTime
      end
      if Target.Character.Humanoid.health < 4 then
          AHAHAHAHAHAHHAHAHHA = nil
          return
      end
  end
  if getgenv().Looten.Adjustment.Checks.Wall_Check == true and FWAKOIIIIIIIIIIIfawfwafawf(Target) then
      local currentTime = tick()
      local elapsedTime = currentTime - AHAHAHAHAHAHAHAHAHAH
      if elapsedTime >= HAHAAHAHAHAHAHHAAH then
          AHAHAHAHAHAHAHAHAHAH = currentTime
      end
      if Target.Character.Head.Transparency == 1 then
          AHAHAHAHAHAHHAHAHHA = nil
          return
      end
  end
  if
      getgenv().Looten.Adjustment.Checks.Crew_Check == true and FWAKOIIIIIIIIIIIfawfwafawf(Target) and
          FWAKOIIIIIIIIIIIfawfwafawf(Client) and
          Target:FindFirstChild("DataFolder") and
          Target.DataFolder:FindFirstChild("Information") and
          Target.DataFolder.Information:FindFirstChild("Crew") and
          Client:FindFirstChild("DataFolder") and
          Client.DataFolder:FindFirstChild("Information") and
          Client.DataFolder.Information:FindFirstChild("Crew")
   then
      local currentTime = tick()
      local elapsedTime = currentTime - AHAHAHAHAHAHAHAHAHAH
      if elapsedTime >= HAHAAHAHAHAHAHHAAH then
          AHAHAHAHAHAHAHAHAHAH = currentTime
      end
      if
          Client.DataFolder.Information:FindFirstChild("Crew").Value ~= nil and
              Target.DataFolder.Information:FindFirstChild("Crew").Value ~= nil and
              Target.DataFolder.Information:FindFirstChild("Crew").Value ~= "" and
              Client.DataFolder.Information:FindFirstChild("Crew").Value ~= "" and
              Target.DataFolder.Information:FindFirstChild("Crew").Value ==
                  Client.DataFolder.Information:FindFirstChild("Crew").Value
       then
          AHAHAHAHAHAHHAHAHHA = nil
          return
      end
  end
  return Target
end

local AHAHAHAHAHAHAHHAAHAHAHAH = function()
  local Target, Closest = nil, 1 / 0

  for _, v in pairs(Players:GetPlayers()) do
      if (v.Character and v ~= Client and v.Character:FindFirstChild("HumanoidRootPart")) then
          if getgenv().Looten.Fov.CamLock.Use_Radius then
              local Position, OnScreen = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
              local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
              if (FWAKFAPFKWPAOFKAWFPAP.Radius > Distance and Distance < Closest and OnScreen) then
                  Closest = Distance
                  Target = v
              end
          elseif getgenv().Looten.Adjustment.Checks.Wall_Check then
              local Position, OnScreen = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
              local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude

              if (Distance < Closest and OnScreen) then
                  Closest = Distance
                  Target = v
              end
          else
              local Position, OnScreen = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
              local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude

              if (Distance < Closest and OnScreen) then
                  Closest = Distance
                  Target = v
              end
          end
      end
  end
  if Target ~= nil and getgenv().Looten.Adjustment.Checks.Wall_Check == true then
      if Target.Character.Head.Transparency == 1 then
          Target = nil
          return Target
      end
  end
  return Target
end

Mouse.KeyDown:Connect(
  function(Key, t)
      local Keybind = getgenv().Looten.CamLock.KeyBind.KeyBind:lower()
      if not t and (Key == Keybind) then
          if
              getgenv().Looten.CamLock.Normal.Enabled  == true and
                  getgenv().Looten.CamLock.KeyBind.Mode == "KeyBind"
           then
              if getgenv().Looten.CamLock.KeyBind.Hold == true then
                  AHAHAHAHAAHAHAHAAH.MouseIconEnabled = true
                  AHAHAHAHAHHAHAHAHAHAHAAHHAHAHAHAHHAHAHAAHAHAHAHAHAHAHH = true
                  AHAHAHAHAHAHAHAHAAA = AHAHAHAHAHAHAHHAAHAHAHAH()
              else
                  AHAHAHAHAHHAHAHAHAHAHAAHHAHAHAHAHHAHAHAAHAHAHAHAHAHAHH = not AHAHAHAHAHHAHAHAHAHAHAAHHAHAHAHAHHAHAHAAHAHAHAHAHAHAHH
                  if AHAHAHAHAHHAHAHAHAHAHAAHHAHAHAHAHHAHAHAAHAHAHAHAHAHAHH then
                      AHAHAHAHAHAHAHAHAAA = AHAHAHAHAHAHAHHAAHAHAHAH()
                  else
                      if AHAHAHAHAHAHAHAHAAA ~= nil then
                          AHAHAHAHAHAHAHAHAAA = nil
                          AHAHAHAHAHHAHAHAHAHAHAAHHAHAHAHAHHAHAHAAHAHAHAHAHAHAHH = false
                      end
                  end
              end
          end
      end
  end
)

Mouse.KeyUp:Connect(
  function(Key, t)
      local Keybind = getgenv().Looten.CamLock.KeyBind.KeyBind:lower()
      if not t and (Key == Keybind) then
          if
              getgenv().Looten.CamLock.Normal.Enabled == true and
                  getgenv().Looten.CamLock.KeyBind.Hold == true and
                  getgenv().Looten.CamLock.KeyBind.Mode == "KeyBind"
           then
              AHAHAHAHAAHAHAHAAH.MouseIconEnabled = true
              AHAHAHAHAHHAHAHAHAHAHAAHHAHAHAHAHHAHAHAAHAHAHAHAHAHAHH = false
              AHAHAHAHAHAHAHAHAAA = nil
          end
      end
  end
)

AHAHAHAHAAHAHAHAAH.InputBegan:Connect(
  function(input, t)
      if not t and input.UserInputType == getgenv().Looten.CamLock.KeyBind.MouseBind then
          if
              getgenv().Looten.CamLock.Normal.Enabled == true and
                  getgenv().Looten.CamLock.KeyBind.Mode == "Mouse"
           then
              if getgenv().Looten.CamLock.KeyBind.Hold == true then
                  AHAHAHAHAAHAHAHAAH.MouseIconEnabled = true
                  AHAHAHAHAHHAHAHAHAHAHAAHHAHAHAHAHHAHAHAAHAHAHAHAHAHAHH = true
                  AHAHAHAHAHAHAHAHAAA = AHAHAHAHAHAHAHHAAHAHAHAH()
              else
                  AHAHAHAHAHHAHAHAHAHAHAAHHAHAHAHAHHAHAHAAHAHAHAHAHAHAHH = not AHAHAHAHAHHAHAHAHAHAHAAHHAHAHAHAHHAHAHAAHAHAHAHAHAHAHH
                  if AHAHAHAHAHHAHAHAHAHAHAAHHAHAHAHAHHAHAHAAHAHAHAHAHAHAHH then
                      AHAHAHAHAHAHAHAHAAA = AHAHAHAHAHAHAHHAAHAHAHAH()
                  else
                      if AHAHAHAHAHAHAHAHAAA ~= nil then
                          AHAHAHAHAHAHAHAHAAA = nil
                          AHAHAHAHAHHAHAHAHAHAHAAHHAHAHAHAHHAHAHAAHAHAHAHAHAHAHH = false
                      end
                  end
              end
          end
      end
  end
)

AHAHAHAHAAHAHAHAAH.InputEnded:Connect(
  function(input, t)
      if not t and input.UserInputType == getgenv().Looten.CamLock.KeyBind.MouseBind then
          if
              getgenv().Looten.CamLock.Normal.Enabled == true and
                  getgenv().Looten.CamLock.KeyBind.Hold == true and
                  getgenv().Looten.CamLock.KeyBind.Mode == "Mouse"
           then
              AHAHAHAHAAHAHAHAAH.MouseIconEnabled = true
              AHAHAHAHAHHAHAHAHAHAHAAHHAHAHAHAHHAHAHAAHAHAHAHAHAHAHH = false
              AHAHAHAHAHAHAHAHAAA = nil
          end
      end
  end
)

Mouse.KeyDown:Connect(
  function(Key, t)
      local Keybind = getgenv().Looten.Silent.KeyBind.KeyBind:lower()
      if not t then
          if (Key == Keybind) and getgenv().Looten.Silent.KeyBind.Enabled == true then
              if getgenv().Looten.Silent.Normal.Enabled == true then
                  getgenv().Looten.Silent.Normal.Enabled = false
                  if getgenv().Looten.Silent.KeyBind.Notification then
                      game.StarterGui:SetCore(
                          "SendNotification",
                          {
                              Title = "💰 Looten 💰",
                              Text = "Disabled",
                              Icon = "",
                              Duration = 1
                          }
                      )
                  end
              else
                  getgenv().Looten.Silent.Normal.Enabled = true
                  if getgenv().Looten.Silent.KeyBind.Notification then
                      game.StarterGui:SetCore(
                          "SendNotification",
                          {
                              Title = "💰 Looten 💰",
                              Text = "Enabled",
                              Icon = "",
                              Duration = 1
                          }
                      )
                  end
              end
          end
      end
  end
)

local AHAHAAHAHAHAHAHAHAHAHAHHAHA = function()
  if
      FWAKOIIIIIIIIIIIfawfwafawf(AHAHAHAHAHAHHAHAHHA) and
          Players[tostring(AHAHAHAHAHAHHAHAHHA)].Character:FindFirstChild(Looten.Silent.HitPart.HitPart)
   then
      local SilentCFrame = nil
      local TargetCF = nil
      local TargetVel = Players[tostring(AHAHAHAHAHAHHAHAHHA)].Character.HumanoidRootPart.Velocity
      local TargetMov = Players[tostring(AHAHAHAHAHAHHAHAHHA)].Character.Humanoid.MoveDirection

      if
              getgenv().Looten.Silent.HitPart.NearestPoint == true and
              (AHAHAHAHAHAHHAHAHHA.Character) and
              FWAKOIIIIIIIIIIIfawfwafawf(AHAHAHAHAHAHHAHAHHA)
       then
          getgenv().Looten.Silent.HitPart.HitPart =
              tostring(WOIPAPORIAWPRIWRPAOFJWOIA(AHAHAHAHAHAHHAHAHHA.Character))
          local ClosestPoint =
              IGNAGOIAWGAWGAUDIHNADAI(
              Players[tostring(AHAHAHAHAHAHHAHAHHA)].Character[Looten.Silent.HitPart.HitPart]
          )
          AHAHAHAHAHAAHAHAHAH = CFrame.new(ClosestPoint.X, ClosestPoint.Y, ClosestPoint.Z)
          TargetCF = AHAHAHAHAHAAHAHAHAH
      else
          TargetCF = Players[tostring(AHAHAHAHAHAHHAHAHHA)].Character[Looten.Silent.HitPart.HitPart].CFrame
      end

      if getgenv().DD then
          local Magnitude = TargetVel.magnitude
          local Magnitude2 = TargetMov.magnitude
          if Magnitude > getgenv().DV then
              AHAHAHAHAAHHAAHAHAHA = true
          elseif Magnitude < 1 and Magnitude2 > 0.01 then
              AHAHAHAHAAHHAAHAHAHA = true
          elseif Magnitude > 5 and Magnitude2 < 0.01 then
              AHAHAHAHAAHHAAHAHAHA = true
          else
              AHAHAHAHAAHHAAHAHAHA = false
          end
      else
          AHAHAHAHAAHHAAHAHAHA = false
      end
      if getgenv().Looten.Adjustment.Checks.NoGroundShots then
          if TargetVel.Y < getgenv().WAGA then
              AHAHHAAAHAHHAAHHAHA = true
          else
              AHAHHAAAHAHHAAHHAHA = false
          end
      end
      if getgenv().DUG then
          if TargetVel.Y < getgenv().UD then
              DU = true
          else
              DU = false
          end
      else
          DU = false
      end

      if TargetCF ~= nil then
          if AHAHAHAHAAHHAAHAHAHA then
              local MoveDirection = TargetMov
              SilentCFrame = TargetCF + (MoveDirection * getgenv().Looten.Silent.Prediction.Prediction * 16)
          elseif DU then
              SilentCFrame =
                  TargetCF +
                  (Vector3.new(TargetVel.X, 0, TargetVel.Z) * getgenv().Looten.Silent.Prediction.Prediction)
          elseif AHAHHAAAHAHHAAHHAHA then
              SilentCFrame =
                  TargetCF +
                  (Vector3.new(TargetVel.X, (TargetVel.Y * getgenv().AGV), TargetVel.Z) *
                      getgenv().Looten.Silent.Prediction.Prediction)
          elseif getgenv().Looten.Silent.Prediction.Enabled then
              SilentCFrame =
                  TargetCF +
                  (Vector3.new(TargetVel.X, TargetVel.Y, TargetVel.Z) *
                      getgenv().Looten.Silent.Prediction.Prediction)
          else
              SilentCFrame = TargetCF
          end
      end

      return (SilentCFrame)
  end
end

local AHHAAHAHAHAHAHAHHAHAHHA = function()
  if getgenv().Looten.Silent.Normal.Enabled then
      AHAHAHAHAHAHHAHAHHA = AHAHHAHAHHHHAHAHAHAHAHAAHH()
  end
  local target = AHAHAHAHAHAHHAHAHHA
  if target and target ~= nil and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
      local position = Camera:WorldToScreenPoint(target.Character.HumanoidRootPart.Position)
      local distance = ((Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(position.X, position.Y)).Magnitude) * 0.6
      if distance < FKWPOAKFAPOAWKFPOFWKAFPOAWFK.Radius then
          local SilentCFrame = AHAHAAHAHAHAHAHAHAHAHAHHAHA()
          if SilentCFrame ~= nil then
            if Games[game.PlaceId] then
                local gameInfo = Games[game.PlaceId]
                local A_1 = gameInfo.Argument
                local A_2 = Vector3.new(SilentCFrame.X, SilentCFrame.Y, SilentCFrame.Z)
                local Event = game:GetService("ReplicatedStorage")[gameInfo.Remote]
                Event:FireServer(A_1, A_2)
            end
        end
      end
  end
end


local AHAHAHAHAHAHHHHAHAHAHAHAH = function(Tool)
  if Tool:IsA("Tool") then
      if ToolConnection then
          ToolConnection:Disconnect()
      end

      ToolConnection = Tool.Activated:Connect(AHHAAHAHAHAHAHAHHAHAHHA)
  end
end

local HHHAHAHAHAHAHAAHHAHAHAAAHHA = function(Character)
  Character.ChildAdded:Connect(AHAHAHAHAHAHHHHAHAHAHAHAH)
end

HHHAHAHAHAHAHAAHHAHAHAAAHHA(Client.Character)
Client.CharacterAdded:Connect(HHHAHAHAHAHAHAAHHAHAHAAAHHA)

function AHAHAHAHAAHHAHAHAHAHAHHAHAHAAAH(Player)
  if not Player or not Player.Character or not game.Players.LocalPlayer or not game.Players.LocalPlayer.Character then
      return
  end
  local PlayerCharacter = Player.Character
  local LocalPlayerCharacter = game.Players.LocalPlayer.Character
  local FindFirstChild = game.FindFirstChild
  local Camera = game.Workspace.CurrentCamera
  local GetPartsObscuringTarget = Camera.GetPartsObscuringTarget

  local PlayerRoot = FindFirstChild(PlayerCharacter, "Head")
  if not PlayerRoot then
      return
  end
  local CastPoints, IgnoreList = {PlayerRoot.Position, LocalPlayerCharacter, PlayerCharacter},
      {LocalPlayerCharacter, PlayerCharacter}
  local ObscuringObjects = #GetPartsObscuringTarget(Camera, CastPoints, IgnoreList)
  return ((ObscuringObjects == 0 and true) or (ObscuringObjects > 0 and false))
end

HHAAHAHAHHAHAHAHAHAHHAHAH.Heartbeat:Connect(
  function()
      if AHAHAHAHAHAHAHAHAAA then
          if
              getgenv().Looten.CamLock.Normal.Enabled and (AHAHAHAHAHAHAHAHAAA.Character) and
              getgenv().Looten.Silent.HitPart.NearestPoint
           then
              getgenv().Looten.CamLock.HitPart.Part =
                  tostring(WOIPAPORIAWPRIWRPAOFJWOIA(AHAHAHAHAHAHAHAHAAA.Character))
          end
      end
  end
)


HHAAHAHAHHAHAHAHAHAHHAHAH.Heartbeat:Connect(
  function()
      local currentTime = tick()
      local elapsedTime = currentTime - AHHAHAAHAHAHAHHAHAH
      if elapsedTime >= AAAHAHAAHAHAHAAHAHAHAH then
          AHHAHAAHAHAHAHHAHAH = currentTime
      end
      if AHAHAHAHAHAHHAHAHHA then
          if FWAKOIIIIIIIIIIIfawfwafawf(AHAHAHAHAHAHHAHAHHA) then
              if AHAHAHAHAHAHHAHAHHA.Character:FindFirstChild(getgenv().Looten.Silent.HitPart.HitPart) then
                  if getgenv().DD == true then
                      if AHAHAHAHAHAHHAHAHHA.Character.HumanoidRootPart.Velocity.magnitude > getgenv().DV then
                          AHAHAHAHAAHHAAHAHAHA = true
                      elseif
                          (AHAHAHAHAHAHHAHAHHA.Character.HumanoidRootPart.Velocity.magnitude < 1 and
                              AHAHAHAHAHAHHAHAHHA.Character.Humanoid.MoveDirection.magnitude > 0.01)
                       then
                          AHAHAHAHAAHHAAHAHAHA = true
                      elseif
                          (AHAHAHAHAHAHHAHAHHA.Character.HumanoidRootPart.Velocity.magnitude > 5 and
                              AHAHAHAHAHAHHAHAHHA.Character.Humanoid.MoveDirection.magnitude < 0.01)
                       then
                          AHAHAHAHAAHHAAHAHAHA = true
                      else
                          AHAHAHAHAAHHAAHAHAHA = false
                      end
                  else
                      if AHAHAHAHAAHHAAHAHAHA ~= false then
                          AHAHAHAHAAHHAAHAHAHA = false
                      end
                  end
                  if getgenv().Looten.Adjustment.Checks.NoGroundShots == true then
                      if AHAHAHAHAHAHHAHAHHA.Character.HumanoidRootPart.Velocity.Y < getgenv().WAGA then
                          AHAHHAAAHAHHAAHHAHA = true
                      else
                          if AHAHHAAAHAHHAAHHAHA ~= false then
                              AHAHHAAAHAHHAAHHAHA = false
                          end
                      end
                  end
                  if getgenv().DUG == true then
                      if AHAHAHAHAHAHHAHAHHA.Character.HumanoidRootPart.Velocity.Y < getgenv().UD then
                          DU = true
                      else
                          DU = false
                      end
                  else
                      if DU ~= false then
                          DU = false
                      end
                  end
              end
          end
      end
  end
)

HHAAHAHAHHAHAHAHAHAHHAHAH.Heartbeat:Connect(
  function()
      local currentTime = tick()
      local elapsedTime = currentTime - AHHAHAAHAHAHAHHAHAH
      if elapsedTime >= AAAHAHAAHAHAHAAHAHAHAH then
          AHHAHAAHAHAHAHHAHAH = currentTime
      end
      if
          getgenv().Looten.CamLock.Normal.Enabled == true and Client.Character and
              Client.Character:FindFirstChildWhichIsA("Tool")
       then
          if AHAHAHAHAAHHAHAHAHAHAHHAHAHAAAH(AHAHAHAHAHAHAHAHAAA) then
              if AHAHAHAHAHAHAHAHAAA then
                  if
                      getgenv().Looten.CamLock.Normal.Enabled and (AHAHAHAHAHAHAHAHAAA.Character) and
                      getgenv().Looten.Silent.HitPart.NearestPoint
                   then
                      getgenv().Looten.CamLock.HitPart.Part =
                          tostring(WOIPAPORIAWPRIWRPAOFJWOIA(AHAHAHAHAHAHAHAHAAA.Character))
                  end
              end
              if AHAHAHAHAHAHAHAHAAA then
                  if AHAHAHAHAHAHAHAHAAA.Character then
                      if
                          AHAHAHAHAHAHAHAHAAA.Character:FindFirstChild(
                              getgenv().Looten.CamLock.HitPart.Part
                          )
                       then
                          if
                              getgenv().DD == true and
                                  AHAHAHAHAHAHAHAHAAA.Character:FindFirstChild("HumanoidRootPart") and
                                  AHAHAHAHAHAHAHAHAAA.Character:FindFirstChild("Humanoid")
                           then
                              if
                                  AHAHAHAHAHAHAHAHAAA.Character.HumanoidRootPart.Velocity.magnitude > getgenv().DV or
                                      (AHAHAHAHAHAHAHAHAAA.Character.HumanoidRootPart.Velocity.magnitude < 1 and
                                          AHAHAHAHAHAHAHAHAAA.Character.Humanoid.MoveDirection.magnitude > 0.1)
                               then
                                  AHAHAHAHAHAHHAHAHAH = true
                              else
                                  AHAHAHAHAHAHHAHAHAH = false
                              end
                          else
                              if AHAHAHAHAHAHHAHAHAH ~= false then
                                  AHAHAHAHAHAHHAHAHAH = false
                              end
                          end
                          if
                              getgenv().DUG == true and
                                  AHAHAHAHAHAHAHAHAAA.Character:FindFirstChild("HumanoidRootPart")
                           then
                              if AHAHAHAHAHAHAHAHAAA.Character.HumanoidRootPart.Velocity.Y < getgenv().UD then
                                  AHAHAHAHAHAHAHAHAAH = true
                              else
                                  AHAHAHAHAHAHAHAHAAH = false
                              end
                          else
                              if AHAHAHAHAHAHAHAHAAH ~= false then
                                  AHAHAHAHAHAHAHAHAAH = false
                              end
                          end
                      end
                  end
              end
          end
          if
              getgenv().Looten.CamLock.Normal.Enabled == true and Client.Character and
                  Client.Character:FindFirstChildWhichIsA("Tool")
           then
              if
                  getgenv().Looten.Adjustment.Checks.Knocked_Check == true and AHAHAHAHAHAHAHAHAAA and
                      AHAHAHAHAHAHAHAHAAA.Character and
                      AHAHAHAHAHAHAHAHAAA.Character:FindFirstChild("Humanoid")
               then
                  if AHAHAHAHAHAHAHAHAAA.Character.Humanoid.health < 4 then
                      AHAHAHAHAHAHAHAHAAA = nil
                      AHAHAHAHAHHAHAHAHAHAHAAHHAHAHAHAHHAHAHAAHAHAHAHAHAHAHH = false
                  end
              end
              if
                  getgenv().Looten.Adjustment.Checks.Knocked_Check == true and AHAHAHAHAHAHAHAHAAA and
                      AHAHAHAHAHAHAHAHAAA.Character and
                      AHAHAHAHAHAHAHAHAAA.Character:FindFirstChild("Humanoid") and
                      Client and
                      Client.Character and
                      Client.Character:FindFirstChild("Humanoid")
               then
                  if Client.Character.Humanoid.health < 4 then
                      AHAHAHAHAHAHAHAHAAA = nil
                      AHAHAHAHAHHAHAHAHAHAHAAHHAHAHAHAHHAHAHAAHAHAHAHAHAHAHH = false
                  end
              end
              if
                  getgenv().Looten.Adjustment.Checks.Knocked_Check == true and AHAHAHAHAHAHAHAHAAA and
                      AHAHAHAHAHAHAHAHAAA.Character
               then
                  local KOd = AHAHAHAHAHAHAHAHAAA.Character:WaitForChild("BodyEffects")["K.O"].Value
                  local Grabbed = AHAHAHAHAHAHAHAHAAA.Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
                  if KOd or Grabbed then
                      AHAHAHAHAHAHAHAHAAA = nil
                      AHAHAHAHAHHAHAHAHAHAHAAHHAHAHAHAHHAHAHAAHAHAHAHAHAHAHH = false
                  end
              end
              if AHAHAHAHAAHHAHAHAHAHAHHAHAHAAAH(AHAHAHAHAHAHAHAHAAA) then
                  if
                      getgenv().DOC == true and AHAHAHAHAHAHAHAHAAA and AHAHAHAHAHAHAHAHAAA.Character and
                          AHAHAHAHAHAHAHAHAAA.Character:FindFirstChild("HumanoidRootPart")
                   then
                      if
                          FWAKFAPFKWPAOFKAWFPAP.Radius <
                              (Vector2.new(
                                  Camera:WorldToScreenPoint(AHAHAHAHAHAHAHAHAAA.Character.HumanoidRootPart.Position).X,
                                  Camera:WorldToScreenPoint(AHAHAHAHAHAHAHAHAAA.Character.HumanoidRootPart.Position).Y
                              ) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                       then
                          AHAHAHAHAHAHAHAHAAA = nil
                          AHAHAHAHAHHAHAHAHAHAHAAHHAHAHAHAHHAHAHAAHAHAHAHAHAHAHH = false
                      end
                  end
                  if
                      AHAHAHAHAHAHHAHAHAH and AHAHAHAHAHAHAHAHAAA and AHAHAHAHAHAHAHAHAAA.Character and
                          AHAHAHAHAHAHAHAHAAA.Character:FindFirstChild("Humanoid") and
                          AHAHAHAHAHAHAHAHAAA.Character:FindFirstChild(
                              getgenv().Looten.CamLock.HitPart.Part
                          ) and
                          getgenv().Looten.CamLock.Prediction.Enabled == true
                   then
                      local PlrMoveDirection = (AHAHAHAHAHAHAHAHAAA.Character.Humanoid.MoveDirection)
                      local Main =
                          CFrame.new(
                          Camera.CFrame.p,
                          AHAHAHAHAHAHAHAHAAA.Character[getgenv().Looten.CamLock.HitPart.Part].Position +
                              (PlrMoveDirection * getgenv().Looten.CamLock.Prediction.Prediction * 16)
                      )
                      Camera.CFrame =
                          Camera.CFrame:Lerp(
                          Main,
                          getgenv().Looten.CamLock.Smoothness.Smoothness,
                          getgenv().FMS,
                          Enum.EasingDirection.InOut,
                          getgenv().SMS,
                          Enum.EasingDirection.Out
                      )
                  elseif
                      AHAHAHAHAHAHAHAHAAH and AHAHAHAHAHAHAHAHAAA and AHAHAHAHAHAHAHAHAAA.Character and
                          AHAHAHAHAHAHAHAHAAA.Character:FindFirstChild(
                              getgenv().Looten.CamLock.HitPart.Part
                          ) and
                          getgenv().Looten.CamLock.Prediction.Enabled == true
                   then
                      local Main =
                          CFrame.new(
                          Camera.CFrame.p,
                          AHAHAHAHAHAHAHAHAAA.Character[getgenv().Looten.CamLock.HitPart.Part].Position +
                              (Vector3.new(
                                  AHAHAHAHAHAHAHAHAAA.Character[getgenv().Looten.CamLock.HitPart.Part].Velocity.X,
                                  0,
                                  AHAHAHAHAHAHAHAHAAA.Character[getgenv().Looten.CamLock.HitPart.Part].Velocity.Z
                              ) *
                                  getgenv().Looten.CamLock.Prediction.Prediction)
                      )
                      Camera.CFrame =
                          Camera.CFrame:Lerp(
                          Main,
                          getgenv().Looten.CamLock.Smoothness.Smoothness,
                          getgenv().FMS,
                          Enum.EasingDirection.InOut,
                          getgenv().SMS,
                          Enum.EasingDirection.Out
                      )
                  elseif
                      getgenv().Looten.CamLock.Prediction.Enabled and AHAHAHAHAHAHAHAHAAA and
                          AHAHAHAHAHAHAHAHAAA.Character and
                          AHAHAHAHAHAHAHAHAAA.Character:FindFirstChild(
                              getgenv().Looten.CamLock.HitPart.Part
                          )
                   then
                      if getgenv().Looten.CamLock.Shake.Enabled then
                          local Main =
                              CFrame.new(
                              Camera.CFrame.p,
                              AHAHAHAHAHAHAHAHAAA.Character[getgenv().Looten.CamLock.HitPart.Part].Position +
                                  AHAHAHAHAHAHAHAHAAA.Character[getgenv().Looten.CamLock.HitPart.Part].Velocity *
                                      getgenv().Looten.CamLock.Prediction.Prediction +
                                  Vector3.new(
                                      math.random(
                                          -getgenv().Looten.CamLock.Shake.DirectionX,
                                          getgenv().Looten.CamLock.Shake.DirectionX
                                      ),
                                      math.random(
                                          -getgenv().Looten.CamLock.Shake.DirectionY,
                                          getgenv().Looten.CamLock.Shake.DirectionY
                                      ),
                                      math.random(
                                          -getgenv().Looten.CamLock.Shake.DirectionZ,
                                          getgenv().Looten.CamLock.Shake.DirectionZ
                                      )
                                  ) *
                                      0.1
                          )
                          Camera.CFrame =
                              Camera.CFrame:Lerp(
                              Main,
                              getgenv().Looten.CamLock.Smoothness.Smoothness,
                              getgenv().FMS,
                              Enum.EasingDirection.InOut,
                              getgenv().SMS,
                              Enum.EasingDirection.Out
                          )
                      else
                          local Main =
                              CFrame.new(
                              Camera.CFrame.p,
                              AHAHAHAHAHAHAHAHAAA.Character[getgenv().Looten.CamLock.HitPart.Part].Position +
                                  AHAHAHAHAHAHAHAHAAA.Character[getgenv().Looten.CamLock.HitPart.Part].Velocity *
                                      getgenv().Looten.CamLock.Prediction.Prediction
                          )
                          Camera.CFrame =
                              Camera.CFrame:Lerp(
                              Main,
                              getgenv().Looten.CamLock.Smoothness.Smoothness,
                              getgenv().FMS,
                              Enum.EasingDirection.InOut,
                              getgenv().SMS,
                              Enum.EasingDirection.Out
                          )
                      end
                  elseif
                      getgenv().Looten.CamLock.Prediction.Enabled == false and AHAHAHAHAHAHAHAHAAA and
                          AHAHAHAHAHAHAHAHAAA.Character and
                          AHAHAHAHAHAHAHAHAAA.Character:FindFirstChild(
                              getgenv().Looten.CamLock.HitPart.Part
                          )
                   then
                      if getgenv().Looten.CamLock.Shake.Enabled then
                          local Main =
                              CFrame.new(
                              Camera.CFrame.p,
                              AHAHAHAHAHAHAHAHAAA.Character[getgenv().Looten.CamLock.HitPart.Part].Position +
                                  Vector3.new(
                                      math.random(
                                          -getgenv().Looten.CamLock.Shake.DirectionX,
                                          getgenv().Looten.CamLock.Shake.DirectionX
                                      ),
                                      math.random(
                                          -getgenv().Looten.CamLock.Shake.DirectionY,
                                          getgenv().Looten.CamLock.Shake.DirectionY
                                      ),
                                      math.random(
                                          -getgenv().Looten.CamLock.Shake.DirectionZ,
                                          getgenv().Looten.CamLock.Shake.DirectionZ
                                      )
                                  ) *
                                      0.1
                          )
                          Camera.CFrame =
                              Camera.CFrame:Lerp(
                              Main,
                              getgenv().Looten.CamLock.Smoothness.Smoothness,
                              getgenv().FMS,
                              Enum.EasingDirection.InOut,
                              getgenv().SMS,
                              Enum.EasingDirection.Out
                          )
                      else
                          local Main =
                              CFrame.new(
                              Camera.CFrame.p,
                              AHAHAHAHAHAHAHAHAAA.Character[getgenv().Looten.CamLock.HitPart.Part].Position
                          )
                          Camera.CFrame =
                              Camera.CFrame:Lerp(
                              Main,
                              getgenv().Looten.CamLock.Smoothness.Smoothness,
                              getgenv().FMS,
                              Enum.EasingDirection.InOut,
                              getgenv().SMS,
                              Enum.EasingDirection.Out
                          )
                      end
                      if
                          AHAHAHAHAHAHAHAHAAA and AHAHAHAHAHAHAHAHAAA.Character and
                              AHAHAHAHAHAHAHAHAAA.Character.Humanoid.FloorMaterial ~= nil and
                              AHAHAHAHAHAHAHAHAAA.Character.Humanoid.FloorMaterial == Enum.Material.Air
                       then
                          getgenv().Looten.CamLock.Smoothness.Smoothness =
                          Looten.CamLock.Smoothness.AirShot
                      else
                          getgenv().Looten.CamLock.Smoothness.Smoothness = AHAHAHAHHAAHAHAHAHA
                      end
                  end
              end
          end
      end
  end
)

local keyPressed = false

local SpeedGlitch = false
AHAHAHAHAAHAHAHAAH.InputBegan:Connect(
  function(i, t)
      if not t then
          if
              i.KeyCode == getgenv().Looten.Adjustment.Macro.KeyBind and
                  getgenv().Looten.Adjustment.Macro.Enabled == true and
                  getgenv().Looten.Adjustment.Macro.Hold_Key == false
           then
              SpeedGlitch = not SpeedGlitch
              if SpeedGlitch == true then
                  repeat
                      HHAAHAHAHHAHAHAHAHAHHAHAH.Heartbeat:wait()
                      keypress(0x49)
                      HHAAHAHAHHAHAHAHAHAHHAHAH.Heartbeat:wait()
                      keypress(0x4F)
                      HHAAHAHAHHAHAHAHAHAHHAHAH.Heartbeat:wait()
                      keyrelease(0x49)
                      HHAAHAHAHHAHAHAHAHAHHAHAH.Heartbeat:wait()
                      keyrelease(0x4F)
                      HHAAHAHAHHAHAHAHAHAHHAHAH.Heartbeat:wait()
                  until SpeedGlitch == false
              end
          end
      end
  end
)

AHAHAHAHAAHAHAHAAH.InputBegan:Connect(
  function(input, t)
      if not t then
          if
              input.KeyCode == getgenv().Looten.Adjustment.Macro.KeyBind and
                  getgenv().Looten.Adjustment.Macro.Enabled == true and
                  getgenv().Looten.Adjustment.Macro.Hold_Key == true
           then
              keyPressed = true
              repeat
                  HHAAHAHAHHAHAHAHAHAHHAHAH.Heartbeat:wait()
                  keypress(0x49)
                  HHAAHAHAHHAHAHAHAHAHHAHAH.Heartbeat:wait()
                  keypress(0x4F)
                  HHAAHAHAHHAHAHAHAHAHHAHAH.Heartbeat:wait()
                  keyrelease(0x49)
                  HHAAHAHAHHAHAHAHAHAHHAHAH.Heartbeat:wait()
                  keyrelease(0x4F)
                  HHAAHAHAHHAHAHAHAHAHHAHAH.Heartbeat:wait()
              until keyPressed == false
          end
      end
  end
)

AHAHAHAHAAHAHAHAAH.InputEnded:Connect(
  function(input, t)
      if not t then
          if input.KeyCode == Enum.KeyCode.X then
              keyPressed = false
          end
      end
  end
)

-- // Anti Cheat Bypass Da Hood II   DONT DELETE THE LOADSTRING BELOW

loadstring(req({Url = "https://raw.githubusercontent.com/xfarzad/-rrRRAAATTTTTZZZZZZ-/main/ac%20bypass", Method = "Get"}).Body)();

local Cameras = require(game.Players.LocalPlayer.PlayerScripts.PlayerModule):GetCameras()

if getgenv().Looten.Adjustment.Macro.Mode == "1" then
  game.UserInputService.InputBegan:Connect(
      function(input, t)
          if getrenv()._G.HoldGunBool and not t then
                  local Controller = Cameras.activeCameraController
                  if input.KeyCode == Enum.KeyCode.I then
                      Controller:SetCameraToSubjectDistance(Controller.currentSubjectDistance - 5)
                  elseif input.KeyCode == Enum.KeyCode.O then
                      Controller:SetCameraToSubjectDistance(Controller.currentSubjectDistance + 5)
                  end
              end
      end
  )
elseif getgenv().Looten.Adjustment.Macro.Mode == "2" then
  game.UserInputService.InputBegan:Connect(
      function(input, t)
          if getrenv()._G.HoldGunBool and not t then
              local Controller = Cameras.activeCameraController
              if input.KeyCode == Enum.KeyCode.I then
                  Controller:SetCameraToSubjectDistance(Controller.currentSubjectDistance - 0.6)
              elseif input.KeyCode == Enum.KeyCode.O then
                  Controller:SetCameraToSubjectDistance(Controller.currentSubjectDistance + 0.6)
              end
          end
      end
  )
end

if getgenv().Looten.Adjustment.Chat.Enabled == true then
  game.Players.LocalPlayer.Chatted:Connect(
      function(message)
          local values = tostring(message):split(" ")
          local firstvalue = tostring(values[1])

          local Silent_local_Prediction = Looten.Adjustment.SilentAim_Prediction
          local Fov_local_Size = Looten.Adjustment.SilentAim_Fov_Size
          local AimAssist_local_Fov_Size = Looten.Adjustment.CamLock_fov_Size
          local AimAssist_local_Smoothness = Looten.Adjustment.CamLock_Smoothness
          local AimAssist_local_Prediction = Looten.Adjustment.CamLock_PreDiction


          if firstvalue:lower() == Silent_local_Prediction:lower() then
              local yeah1 = tonumber(values[2])
              getgenv().Looten.Silent.Prediction.Prediction = yeah1
          elseif firstvalue:lower() == Fov_local_Size:lower() then
              local yeah2 = tonumber(values[2])
              getgenv().Looten.Fov.SilentAim.Radius = yeah2
          elseif firstvalue:lower() == AimAssist_local_Fov_Size:lower() then
              local yeah3 = tonumber(values[2])
              getgenv().Looten.Fov.CamLock.Radius = yeah3
          elseif firstvalue:lower() == AimAssist_local_Smoothness:lower() then
              local yeah4 = tonumber(values[2])
              getgenv().Looten.CamLock.Smoothness.Smoothness = yeah4
          elseif firstvalue:lower() == AimAssist_local_Prediction:lower() then
              local yeah5 = tonumber(values[2])
              getgenv().Looten.CamLock.Prediction.Prediction = yeah5
          end
      end
  )
end

HHAAHAHAHHAHAHAHAHAHHAHAH.Heartbeat:Connect(
  function()

      if getgenv().Looten.Adjustment.TriggerBot.Enabled and getgenv().EnableTriggerStuff == true then
          if
              Mouse.Target.Parent and Mouse.Target.Parent.Parent and
                  Mouse.Target.Parent.Parent:FindFirstChild("Humanoid") and
                  Mouse.Target.Parent.Parent.Name ~= Client.Name
           then
              mouse1press()
              task.wait(tonumber(AHAHAHAHAHAHAHAAHAH))
              mouse1release()
          end
      end

      if getgenv().Looten.Silent.Prediction.AutoMated == true then
          local pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
          local split = string.split(pingvalue, "(")
          local ping = tonumber(split[1])
          if ping < 190 then
              getgenv().Looten.Silent.Prediction.Prediction = 0.180
          elseif ping < 180 then
              getgenv().Looten.Silent.Prediction.Prediction = 0.170
          elseif ping < 170 then
              getgenv().Looten.Silent.Prediction.Prediction = 0.165
          elseif ping < 160 then
              getgenv().Looten.Silent.Prediction.Prediction = 0.1574
          elseif ping < 150 then
              getgenv().Looten.Silent.Prediction.Prediction = 0.1555
          elseif ping < 140 then
              getgenv().Looten.Silent.Prediction.Prediction = 0.1555
          elseif ping < 130 then
              getgenv().Looten.Silent.Prediction.Prediction = 0.141
          elseif ping < 120 then
              getgenv().Looten.Silent.Prediction.Prediction = 1344
          elseif ping < 110 then
              getgenv().Looten.Silent.Prediction.Prediction = 1344
          elseif ping < 100 then
              getgenv().Looten.Silent.Prediction.Prediction =0.1300
          elseif ping < 90 then
              getgenv().Looten.Silent.Prediction.Prediction = 0.1295
          elseif ping < 80 then
              getgenv().Looten.Silent.Prediction.Prediction = 0.1295
          elseif ping < 70 then
              getgenv().Looten.Silent.Prediction.Prediction = 0.1300
          elseif ping < 60 then
              getgenv().Looten.Silent.Prediction.Prediction = 0.1290
          elseif ping < 50 then
              getgenv().Looten.Silent.Prediction.Prediction = 0.1250
          elseif ping < 40 then
              getgenv().Looten.Silent.Prediction.Prediction = 0.1230
          elseif ping < 30 then
              getgenv().Looten.Silent.Prediction.Prediction = 0.1190
          elseif ping < 20 then
              getgenv().Looten.Silent.Prediction.Prediction = 0.1100
          elseif ping < 10 then
              getgenv().Looten.Silent.Prediction.Prediction = 0.1000
          end
      end
  end
)

Mouse.KeyDown:Connect(
  function(Key, t)
      local Keybind = getgenv().Looten.Adjustment.TriggerBot.KeyBinds.KeyBind:lower()
      if not t then
          if
              (Key == Keybind) and getgenv().Looten.Adjustment.TriggerBot.Enabled == true and
                  getgenv().Looten.Adjustment.TriggerBot.KeyBinds.Enabled == true
           then
              if getgenv().EnableTriggerStuff == true then
                  getgenv().EnableTriggerStuff = false
                  if getgenv().Looten.Adjustment.TriggerBot.KeyBinds.Notifications then
                      game.StarterGui:SetCore(
                          "SendNotification",
                          {
                              Title = "💰 Looten 💰",
                              Text = " Disabled TriggerBot ",
                              Icon = "",
                              Duration = 1
                          }
                      )
                  end
              else
                  getgenv().EnableTriggerStuff = true
                  if getgenv().Looten.Adjustment.TriggerBot.KeyBinds.Notifications then
                      game.StarterGui:SetCore(
                          "SendNotification",
                          {
                              Title = "💰 Looten 💰",
                              Text = " Enabled TriggerBot ",
                              Icon = "",
                              Duration = 1
                          }
                      )
                  end
              end
          end
      end
  end
)

if Looten.CamLock.Style.First == "Elastic" then
  getgenv().FMS = Enum.EasingStyle.Elastic
elseif Looten.CamLock.Style.First == "Linear" then
  getgenv().FMS = Enum.EasingStyle.Linear
elseif Looten.CamLock.Style.First == "Sine" then
  getgenv().FMS = Enum.EasingStyle.Sine
elseif Looten.CamLock.Style.First == "Back" then
  getgenv().FMS = Enum.EasingStyle.Back
elseif Looten.CamLock.Style.First == "Quad" then
  getgenv().FMS = Enum.EasingStyle.Quad
elseif Looten.CamLock.Style.First == "Quart" then
  getgenv().FMS = Enum.EasingStyle.Quart
elseif Looten.CamLock.Style.First == "Quint" then
  getgenv().FMS = Enum.EasingStyle.Quint
elseif Looten.CamLock.Style.First == "Bounce" then
  getgenv().FMS = Enum.EasingStyle.Bounce
elseif Looten.CamLock.Style.First == "Exponential" then
  getgenv().FMS = Enum.EasingStyle.Exponential
elseif Looten.CamLock.Style.First == "Circular" then
  getgenv().FMS = Enum.EasingStyle.Circular
elseif Looten.CamLock.Style.First == "Cubic" then
  getgenv().FMS = Enum.EasingStyle.Cubic
end

if Looten.CamLock.Style.Second == "Elastic" then
  getgenv().SMS = Enum.EasingStyle.Elastic
elseif Looten.CamLock.Style.Second == "Linear" then
  getgenv().SMS = Enum.EasingStyle.Linear
elseif Looten.CamLock.Style.Second == "Sine" then
  getgenv().SMS = Enum.EasingStyle.Sine
elseif Looten.CamLock.Style.Second == "Back" then
  getgenv().SMS = Enum.EasingStyle.Back
elseif Looten.CamLock.Style.Second == "Quad" then
  getgenv().SMS = Enum.EasingStyle.Quad
elseif Looten.CamLock.Style.Second == "Quart" then
  getgenv().SMS = Enum.EasingStyle.Quart
elseif Looten.CamLock.Style.Second == "Quint" then
  getgenv().SMS = Enum.EasingStyle.Quint
elseif Looten.CamLock.Style.Second == "Bounce" then
  getgenv().SMS = Enum.EasingStyle.Bounce
elseif Looten.CamLock.Style.Second == "Exponential" then
  getgenv().SMS = Enum.EasingStyle.Exponential
elseif Looten.CamLock.Style.Second == "Circular" then
  getgenv().SMS = Enum.EasingStyle.Circular
elseif Looten.CamLock.Style.Second == "Cubic" then
  getgenv().SMS = Enum.EasingStyle.Cubic
end

local uis = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
local keybindTime2 = 0
local cooldownTime2 = 4

local function onGunReload(input, gameProcessed)
  if
      input.KeyCode == Enum.KeyCode.R and Looten.CamLock.AutoUnLock.Typing == true and
          not gameProcessed
   then
      local backpack = player.Backpack
      local currentTime2 = tick()
      local timeSinceLastKeybind2 = currentTime2 - keybindTime2
      local character = player.Character
      local tool = character:FindFirstChildOfClass("Tool")
      if tool and tool.Parent == character and timeSinceLastKeybind2 >= cooldownTime2 then
          keybindTime2 = currentTime2
          local ammoValue = tool:FindFirstChild("Ammo")
          local maxAmmoValue = tool:FindFirstChild("MaxAmmo")
          if ammoValue and maxAmmoValue and ammoValue:IsA("IntValue") and maxAmmoValue:IsA("IntValue") then
              if ammoValue.Value < maxAmmoValue.Value and Delay then
                  AHAHAHAHAHAHAHAHAAA = nil
              end
          end
      end
  end
end

uis.InputBegan:Connect(onGunReload)

AHAHAHAHAAHAHAHAAH.InputBegan:Connect(
  function(input, gameProcessedEvent)
      if Looten.CamLock.AutoUnLock.Typing == true then
          if gameProcessedEvent then
              AHAHAHAHAHAHAHAHAAA = nil
          end
      end
  end
)

getgenv().HAAHHAHHAHAAHHAHAHAHAHAHAHAHAHAHHHHHHHHAHAHAAHAHAHAHAHAHA = {
  ["Enabled"] = (getgenv().Looten.Adjustment.Gun_Fov.Enabled),
  ["Double-Barrel SG"] = {["FOV"] = (getgenv().Looten.Adjustment.Gun_Fov.DoubleBarrel)},
  ["DoubleBarrel"] = {["FOV"] = (getgenv().Looten.Adjustment.Gun_Fov.DoubleBarrel)},
  ["Revolver"] = {["FOV"] = (getgenv().Looten.Adjustment.Gun_Fov.Revolver)},
  ["SMG"] = {["FOV"] = (getgenv().Looten.Adjustment.Gun_Fov.Smg)},
  ["Shotgun"] = {["FOV"] = (getgenv().Looten.Adjustment.Gun_Fov.Shotgun)},
  ["TacticalShotgun"] = {["FOV"] = (getgenv().Looten.Adjustment.Gun_Fov.TacticalShotgun)},
  ["Silencer"] = {["FOV"] = (getgenv().Looten.Adjustment.Gun_Fov.Silencer)}
}

local Script = {Functions = {}}
Script.Functions.getToolName = function(name)
  local split = string.split(string.split(name, "[")[2], "]")[1]
  return split
end
Script.Functions.getEquippedWeaponName = function()
  if (Client.Character) and Client.Character:FindFirstChildWhichIsA("Tool") then
      local Tool = Client.Character:FindFirstChildWhichIsA("Tool")
      if
          string.find(Tool.Name, "%[") and string.find(Tool.Name, "%]") and not string.find(Tool.Name, "Wallet") and
              not string.find(Tool.Name, "Phone")
       then
          return Script.Functions.getToolName(Tool.Name)
      end
  end
  return nil
end
HHAAHAHAHHAHAHAHAHAHHAHAH.RenderStepped:Connect(
  function()
      if Script.Functions.getEquippedWeaponName() ~= nil then
          local WeaponSettings =
              getgenv().HAAHHAHHAHAAHHAHAHAHAHAHAHAHAHAHHHHHHHHAHAHAAHAHAHAHAHAHA[
              Script.Functions.getEquippedWeaponName()
          ]
          if WeaponSettings ~= nil and getgenv().Looten.Adjustment.Gun_Fov.Enabled == true then
              getgenv().Looten.Fov.SilentAim.Radius = WeaponSettings.FOV
          else
              getgenv().Looten.Fov.SilentAim.Radius = getgenv().Looten.Fov.SilentAim.Radius
          end
      end
  end
)



  -- lay

  AHAHAHAHAAHAHAHAAH.InputBegan:Connect(function(input, t)
    local laykeybind = getgenv().Looten.Adjustment.Animation.LayKey
    if not t and input.KeyCode == laykeybind and getgenv().Looten.Adjustment.Animation.Lay == true then
              local args = {[1] = "AnimationPack",[2] = "Lay"}
              game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))
      end
    end)

    -- greet

    AHAHAHAHAAHAHAHAAH.InputBegan:Connect(function(input, t)
    local laykeybind = getgenv().Looten.Adjustment.Animation.GreetKey
    if not t and input.KeyCode == laykeybind and getgenv().Looten.Adjustment.Animation.Greet == true then
      local args = {[1] = "AnimationPack",[2] = "Greet"}
      game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))
      end
    end)

    -- Speed

    AHAHAHAHAAHAHAHAAH.InputBegan:Connect(function(input, t)
    local laykeybind = getgenv().Looten.Adjustment.Animation.SpeedKey
    if not t and input.KeyCode == laykeybind and getgenv().Looten.Adjustment.Animation.Speed == true then
      local args = {[1] = "AnimationPack2",[2] = "Speed Blitz"}
      game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))
      end
    end)

    -- Sturdy

    AHAHAHAHAAHAHAHAAH.InputBegan:Connect(function(input, t)
    local laykeybind = getgenv().Looten.Adjustment.Animation.SturdyKey
    if not t and input.KeyCode == laykeybind and getgenv().Looten.Adjustment.Animation.Sturdy == true then
      local args = {[1] = "AnimationPack2",[2] = "Sturdy"}
      game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))
      end
    end)

    -- Griddy

    AHAHAHAHAAHAHAHAAH.InputBegan:Connect(function(input, t)
    local laykeybind = getgenv().Looten.Adjustment.Animation.GriddyKey
    if not t and input.KeyCode == laykeybind and getgenv().Looten.Adjustment.Animation.Griddy == true then
      local args = {[1] = "AnimationPack2",[2] = "Griddy"}
      game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))
      end
    end)


-- // MEM Spoofer DjdynPjQ


if getgenv().Looten.Adjustment.Memory.Enable == true then

  loadstring(req({Url = "https://pastebin.com/raw/bcnf2Cxe", Method = "Get"}).Body)(); -- memory spoofer

end
if getgenv().Looten.StartUP.Intro then
local soundId = "rbxassetid://3422389728"  -- Replace with your desired sound asset ID
local ImageIdfr = "http://www.roblox.com/asset/?id=14731199492" -- replace with ur image id ( decale thingy)

-- Load the sound
local sound = Instance.new("Sound")
sound.SoundId = soundId
sound.Volume = 10


local Intro = {
    Intro = Instance.new("ScreenGui"),
    Anchored_Frame = Instance.new("Frame"),
    ImageLabel = Instance.new("ImageLabel")
  }
  
  
  function Tween(Object, Size1,Size2,Size3,Size4, Speed)
    Object:TweenSize(UDim2.new(Size1,Size2,Size3,Size4), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, Speed, true)
  end
  
  
  Intro.Intro.Name = "Intro"
  Intro.Intro.Parent = game.CoreGui
  Intro.Intro.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  Intro.Anchored_Frame.Name = "Anchored_Frame"
  Intro.Anchored_Frame.Parent = Intro.Intro
  Intro.Anchored_Frame.AnchorPoint = Vector2.new(0.5, 0.5)
  Intro.Anchored_Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Intro.Anchored_Frame.BackgroundTransparency = 1.000
  Intro.Anchored_Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
  Intro.Anchored_Frame.Size = UDim2.new(0, 100, 0, 100)
  Intro.ImageLabel.Parent = Intro.Anchored_Frame
  Intro.ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
  Intro.ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Intro.ImageLabel.BackgroundTransparency = 1.000
  Intro.ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
  Intro.ImageLabel.Size = UDim2.new(0, 0, 0, 0)
  Intro.ImageLabel.Image = ImageIdfr
  Intro.ImageLabel.ScaleType = Enum.ScaleType.Crop
  local ImageLabel = game.CoreGui:FindFirstChild("Intro").Anchored_Frame.ImageLabel
  local BlurEffect = Instance.new("BlurEffect", game.Lighting)
  BlurEffect.Size = 0
  for i = 0, 24, 1 do
    wait()
    BlurEffect.Size = i
  end
  
  sound.Parent = game.Workspace  -- You can replace this with any appropriate parent object
sound:Play()
  
  Tween(ImageLabel, 0, 350, 0, 395, 0.8)
  wait(2.2)
  Tween(ImageLabel, 0, 0, 0, 0, 0.8)
  for i = 24, 1, -1 do
    wait()
    BlurEffect.Size = i
  end
  wait(1)
  Intro.Intro:Destroy()
  BlurEffect:Destroy()
end

local Toggle = true
game:GetService("UserInputService").InputBegan:Connect(function(keybind, processed)
    if keybind.KeyCode == Enum.KeyCode.J and processed == false then
        if Toggle == false then
                   game.StarterGui:SetCore("SendNotification", {
                Title = "😎Looten anti on😎",
                Text = "Enabled"
            })
            Toggle = true
        elseif Toggle == true then
                   game.StarterGui:SetCore("SendNotification", {
                Title = "😎Looten anti off😎",
                Text = "Disabled"
            })
            Toggle = false
        end
    end
end)


game.RunService.Heartbeat:Connect(function()
    if Toggle  then
        local Old =  game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity * 2
        game.RunService.RenderStepped:Wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Old
    end
end)

         game.StarterGui:SetCore("SendNotification", {
                Title = "😎Looten anti😎",
                Text = "Loaded"
            }) 
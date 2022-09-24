local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Tick = tick()

local Window = OrionLib:MakeWindow({Name = "The Trials Script", HidePremium = true, SaveConfig = false, ConfigFolder = "TheTrialsConfig"})

if game.PlaceId == tonumber(8473958692) then
 local Lobby = Window:MakeTab({
  Name = "Lobby"
 })

 Lobby:AddParagraph("The Trials Script | Made By Rizve#3400","Join A Phase To Continue.\n\n\nPhase 2 script discontinued because i'm too lazy sorry.\n\nEnjoy the script!")

 local Misc = Lobby:AddSection({
  Name = "Misc"
 })
 Misc:AddSlider({
  Name = "Speed",
  Min = 16,
  Max = 200,
  Default = 16,
  Color = Color3.fromRGB(50,50,50),
  Increment = 1,
  ValueName = "WalkSpeed",
  Callback = function(Value)
   game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Value
  end    
 })
elseif game.PlaceId == tonumber(8473959225) then

 local Phase_1 = Window:MakeTab({
  Name = "Phase 1",
  Icon = "rbxassetid://347504260"
 })


 local Phase_1_Trial_1 = Phase_1:AddSection({
  Name = "Trial 1"
 })
 Phase_1_Trial_1:AddToggle({
  Name = "Auto Press Buttons",
  Default = false,
  Callback = function(Value)
   _G.AutoPressButton_Phase1_Trial1 = Value
  end    
 })

 local Phase_1_Trial_2 = Phase_1:AddSection({
  Name = "Trial 2"
 })
 Phase_1_Trial_2:AddButton({
  Name = "Open All Crates",
  Callback = function()
   for _, Item in pairs(game:GetService("Workspace").TrialParts.Trial2:GetDescendants()) do
    if Item:IsA("ClickDetector") and Item.Parent.Parent.Name == "Latch" then
     fireclickdetector(Item)
    end
   end
  end    
 })
 Phase_1_Trial_2:AddButton({
  Name = "Complete Trial 2",
  Callback = function()
   local x = 0

   local function MakeChamberGreen(Chamber)
    for _, Stuff in pairs(Chamber:GetDescendants()) do
     if Stuff:IsA("Part") then
      Stuff.Color = Color3.fromRGB(85, 255, 135)
     end
    end
   end
   local function GetShapeFromCrate(Shape)
    local Trail2Parts = game:GetService("Workspace").TrialParts.Trial2

    for _, instance in pairs(Trail2Parts.UsedCrates:GetDescendants()) do
     if (instance.Name == Shape and instance.Parent.Open.Value == true) then
      local CorrectShape = instance
      for _, Stuff in pairs(instance:GetDescendants()) do
       if Stuff:IsA("ClickDetector") then
        fireclickdetector(Stuff)
        return CorrectShape.Name
       end
      end
      break
     else
      continue
     end
    end
   end

   local Chambers = game:GetService("Workspace").TrialParts.Trial2.Chambers
   local ChamberOpened = false

   for _, Chamber in ipairs(Chambers:GetChildren()) do

    local Shape

    for _, TheShape in pairs(Chamber.Lock.CorrectShape:GetChildren()) do
     Shape = TheShape.Name
    end


    if not Shape then 
     OrionLib:MakeNotification({
      Name = "Error..",
      Content = "Can't Find the Correct Shape From The chamber. Makesure the trial has started.",
      Image = "rbxassetid://163905184",
      Time = 5
     })
     return 
    end

    local PlayerShape = GetShapeFromCrate(Shape)
    local OccupiedPlayer = Chamber.Lock.PlayerName

    if (OccupiedPlayer.Value == nil or OccupiedPlayer.Value == "" or OccupiedPlayer.Value == " ") then
     if PlayerShape ~= nil then
      local ClickPart = Chamber.Lock.ClickPart
      local ClickDetector = ClickPart.ClickDetector

      fireclickdetector(ClickDetector)
      ChamberOpened = true

      OrionLib:MakeNotification({
       Name = "Success!",
       Content = "Chamber Was Successfuly Opened. Enter The Green(Client) Chamber To Escape. (Chamber #" .. Chamber.Name ..")",
       Image = "rbxassetid://2022095751",
       Time = 10
      })

      MakeChamberGreen(Chamber)

      break
     else
      continue
     end
    else
     continue
    end
   end

   if ChamberOpened == false then
    OrionLib:MakeNotification({
     Name = "Error..",
     Content = "No correct key found from opened crates.. Makesure that crates are open with keys",
     Image = "rbxassetid://163905184",
     Time = 10
    })
   end
  end  
 })

 local Phase_1_Trial_3 = Phase_1:AddSection({
  Name = "Trial 3"
 })
 Phase_1_Trial_3:AddButton({
  Name = "Finish Trial 3 & Kill All",
  Callback = function()
   OrionLib:MakeNotification({
    Name = "Warning!",
    Content = "Makesure no one qualified before you. if they do then they wont get killed. if you dont wanna kill anyone, then press this button when everyone qualifies.",
    Image = "rbxassetid://163905184",
    Time = 15
   })
   local function GetHorseNumber()
    local Trial3RemoteGui = game:GetService("Players").LocalPlayer:FindFirstChild("Trial3Remote")
    if Trial3RemoteGui then
     return Trial3RemoteGui.HorseRemoteNumber.Value
    end
   end
   game:GetService("ReplicatedStorage").Trial3.Pass:FireServer(GetHorseNumber())
  end    
 })
 Phase_1_Trial_3:AddToggle({
  Name = "Auto Complete",
  Default = false,
  Callback = function(Value)
   _G.Phase1_Trial3_AutoComplete = Value
  end
 })

 local Phase_1_Trial_4 = Phase_1:AddSection({
  Name = "Trial 4"
 })
 Phase_1_Trial_4:AddButton({
  Name = "Teleport To A Safe Place",
  Callback = function()
   if not _G.Phase1_Trial4_TeleportToSafePlace_BOX then
    _G.Phase1_Trial4_TeleportToSafePlace_BOX = true
    local Floor = Instance.new("Part", game:GetService("Workspace"))
    Floor.Transparency = 1
    Floor.Anchored = true
    Floor.CFrame = CFrame.new(-124, -26.4999828, -165.400024, 1, 0, 0, 0, 1, 0, 0, 0, 0.99999994)
    Floor.Size = Vector3.new(19, 1, 19)

    local Wall_2 = Instance.new("Part", game:GetService("Workspace"))
    Wall_2.Transparency = 1
    Wall_2.Anchored = true
    Wall_2.CFrame = CFrame.new(-113.5, -17.4999943, -165.400024, 0, 0, -0.999999762, 0, 0.999999642, 0, 0.999999881, 0, 0)
    Wall_2.Size = Vector3.new(23, 17, 2)

    local Wall_3 = Instance.new("Part", game:GetService("Workspace"))
    Wall_3.Transparency = 1
    Wall_3.Anchored = true
    Wall_3.CFrame = CFrame.new(-124, -17.4999905, -154.900024, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994)
    Wall_3.Size = Vector3.new(19, 17, 2)

    local Wall_1 = Instance.new("Part", game:GetService("Workspace"))
    Wall_1.Transparency = 1
    Wall_1.Anchored = true
    Wall_1.CFrame = CFrame.new(-134.499985, -17.4999943, -165.400024, 0, 0, -0.999999762, 0, 0.999999642, 0, 0.999999881, 0, 0)
    Wall_1.Size = Vector3.new(23, 17, 2)

    local Wall_4 = Instance.new("Part", game:GetService("Workspace"))
    Wall_4.Transparency = 1
    Wall_4.Anchored = true
    Wall_4.CFrame = CFrame.new(-124, -17.4999905, -175.900024, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994)
    Wall_4.Size = Vector3.new(19, 17, 2)

    local Roof = Instance.new("Part", game:GetService("Workspace"))
    Roof.Transparency = 1
    Roof.Anchored = true
    Roof.CFrame = CFrame.new(-124, -8.49998283, -165.400024, 1, 0, 0, 0, 1, 0, 0, 0, 0.99999994)
    Roof.Size = Vector3.new(19, 1, 19)
   end

   game:GetService("TweenService"):Create(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart", math.huge), TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {CFrame = CFrame.new(-124.5, -20.4999828, -164.900024, 1, 0, 0, 0, 1, 0, 0, 0, 1)}):Play()

  end
 })
 Phase_1_Trial_4:AddButton({
  Name = "Tag Someone Random",
  Callback = function()
   local Character = game:GetService("Players").LocalPlayer.Character
   local LastCFrame = Character:WaitForChild("HumanoidRootPart").CFrame

   local Players = game:GetService("Players"):GetPlayers()

   local function GetRandomPlayerWithHumanoidRootPart()
    task.wait(0.05)
    local RandomPlayer = Players[math.random(1, #Players)]
    if RandomPlayer.Character:FindFirstChild("HumanoidRootPart") then
     return RandomPlayer
    else
     return GetRandomPlayerWithHumanoidRootPart()
    end
   end
   local RandomPlayer = GetRandomPlayerWithHumanoidRootPart()

   Character:WaitForChild("HumanoidRootPart").CFrame = RandomPlayer.Character:WaitForChild("HumanoidRootPart").CFrame

   task.wait(0.4)

   Character:WaitForChild("HumanoidRootPart").CFrame = LastCFrame
  end
 })
 Phase_1_Trial_4:AddButton({
  Name = "Teleport To End",
  Callback = function()
   game:GetService("TweenService"):Create(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart", math.huge), TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {CFrame = CFrame.new(-122.053452, -52.9894905, -230.886536, 0.999938965, -1.51395753e-07, 0.0110488636, 1.51032751e-07, 1, 3.3688881e-08, -0.0110488636, -3.20180824e-08, 0.999938965)}):Play()
  end
 })

 local Phase_1_Trial_5 = Phase_1:AddSection({
  Name = "Trial 5"
 })
 Phase_1_Trial_5:AddToggle({
  Name = "Auto Complete Trial 5",
  Default = false,
  Callback = function(Value)
   _G.AutoComplete_Phase1_Trial5 = Value
  end    
 })

 local Phase_1_Trial_6 = Phase_1:AddSection({
  Name = "Trial 6"
 })
 Phase_1_Trial_6:AddToggle({
  Name = "Auto Click Light",
  Callback = function(Value)
   local function GetStand()
    for _, Stand in pairs(game:GetService("Workspace").TrialParts.Trial6.Stands:GetChildren()) do
     local PersonAttached = Stand.CollarAttachment.PersonAttached
     if PersonAttached.Value == game:GetService("Players").LocalPlayer.Name then
      return Stand.Name
     end
    end
   end

   _G.Phase1_Trial6_STAND = GetStand()
   _G.Phase1_Trial6_AutoClickLight = Value

  end
 })

 local Phase_1_Trial_7 = Phase_1:AddSection({
  Name = "Trial 7"
 })
 Phase_1_Trial_7:AddButton({
  Name = "Get Key",
  Callback = function()
   local x = 0

   local function MakeChamberGreen(Chamber)
    for _, Stuff in pairs(Chamber:GetDescendants()) do
     if Stuff:IsA("Part") then
      Stuff.Color = Color3.fromRGB(85, 255, 135)
     end
    end
   end

   local Key = game:GetService("Workspace").IceKeyZel
   fireclickdetector(Key.ClickPart.ClickDetector)

   local Character = game:GetService("Players").LocalPlayer.Character

   for _, Chamber in pairs(game:GetService("Workspace").TrialParts.Trial7.Chambers:GetChildren()) do
    local touchinterest = Chamber.Lock.TouchPart.TouchInterest

    firetouchinterest(touchinterest, Character.HumanoidRootPart, 0)

    task.wait(0.1)

    firetouchinterest(touchinterest, Character.HumanoidRootPart, 1)

    MakeChamberGreen(Chamber)

    OrionLib:MakeNotification({
     Name = "Success!",
     Content = "Touch The Green(Client) Chamber To Escape. (Chamber #" .. Chamber.Name ..")",
     Time = 10
    })

    break
   end
  end
 })

 local Phase_1_Trial_8 = Phase_1:AddSection({
  Name = "Trial 8"
 })
 Phase_1_Trial_8:AddToggle({
  Name = "Automatically Speed Up Other Participant And Win.",
  Callback = function(Value)
   task.spawn(function()
    _G.Phase1_Trial8_SpeepUpOtherPlayerAndWin = Value

    local function FindDisanceFromPlayer(Part)
     return (Part.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart", math.huge).Position).Magnitude
    end

    local Transporter_1_Distance
    local Transporter_2_Distance

    for _, Chamber in pairs(game:GetService("Workspace").TrialParts.Trial8.Transporters:GetChildren()) do
     if Chamber.Name == "1" then
      Transporter_1_Distance = FindDisanceFromPlayer(Chamber.RootTp)
     elseif Chamber.Name == "2" then
      Transporter_2_Distance = FindDisanceFromPlayer(Chamber.RootTp)
     end
    end

    local MaxDistance = math.max(Transporter_1_Distance, Transporter_2_Distance)

    if _G.Phase1_Trial8_SpeepUpOtherPlayerAndWin and (not _G.Phase1_Trial8_SpeepUpOtherPlayerAndWin_Notification) then
     _G.Phase1_Trial8_SpeepUpOtherPlayerAndWin_Notification = true
     OrionLib:MakeNotification({
      Name = "Notice",
      Content = "Makesure You are sitting on the transporter or it might not work. If you are. then toggle off and toggle it on",
      Time = 15
     })
    end

    while _G.Phase1_Trial8_SpeepUpOtherPlayerAndWin do task.wait(0.05)
     if MaxDistance == Transporter_1_Distance then
      game:GetService("ReplicatedStorage").Trial8:FireServer(0.1, 1)
     elseif MaxDistance == Transporter_2_Distance then
      game:GetService("ReplicatedStorage").Trial8:FireServer(0.1, 2)
     end
    end
   end)
  end
 })

 Phase_1:AddParagraph("The Trials Script | Made By Rizve#3400","phase 1 works for now. Phase 2 script discontinued because i'm too lazy sorry. only 2 features are available on phase 2")

 local function AutoPressButton_Phase1_Trial1()
  task.wait(0.05)

  if _G.AutoPressButton_Phase1_Trial1 then
   for _, Room in ipairs(game.Workspace.TrialParts.Trial1.Rooms:GetChildren()) do
    for ButtonNumber in ipairs(Room.Buttons:GetChildren()) do
     local ButtonStand = Room.Buttons[ButtonNumber]
     local Button = ButtonStand.Button
     if Button.BrickColor == BrickColor.new("Lime green") then
      local ClickDetector = Button.ClickDetector
      fireclickdetector(ClickDetector)
     end
    end
   end
  end

  AutoPressButton_Phase1_Trial1()
 end
 task.spawn(AutoPressButton_Phase1_Trial1)

 local function Phase1_Trial3_AutoComplete()
  task.wait(0.05)

  if _G.Phase1_Trial3_AutoComplete then
   if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Trial3Remote") then
    local Trial3Remote_GUI = game:GetService("Players").LocalPlayer.PlayerGui.Trial3Remote

    Trial3Remote_GUI.ImageLabel.Paused.Value = false
   end
  end

  Phase1_Trial3_AutoComplete()
 end
 task.spawn(Phase1_Trial3_AutoComplete)

 game.ReplicatedStorage.Trial5.OnClientEvent:Connect(function()
  if _G.AutoComplete_Phase1_Trial5 then
   game:GetService("ReplicatedStorage").Trial5:FireServer()
  end
 end)

 local function Phase1_Trial6_AutoClickLight()
  task.wait(0.05)

  if _G.Phase1_Trial6_AutoClickLight and _G.Phase1_Trial6_STAND then
   local Stand = game:GetService("Workspace").TrialParts.Trial6.Stands[_G.Phase1_Trial6_STAND]

   if game:GetService("Workspace").TrialParts.Trial6.DangleLight.Bulb.Color == Color3.fromRGB(255, 228, 90) then
    local ClickDetector = Stand.Switch.ClickPart.ClickDetector
    fireclickdetector(ClickDetector)
   end

  end

  Phase1_Trial6_AutoClickLight()
 end
 task.spawn(Phase1_Trial6_AutoClickLight)

elseif game.PlaceId == tonumber(9940470699) then
 local Phase_2_Lobby = Window:MakeTab({
  Name = "Phase 2 Lobby"
 })

 local LobbySection = Phase_2_Lobby:AddSection({
  Name = "Lobby"
 })
 LobbySection:AddButton({
  Name = "Invite Everyone",
  Callback = function()
   for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
    local Event = game:GetService("ReplicatedStorage").PartnerSystem.SendRequest
    Event:FireServer(Player.Name)
   end
  end    
 })
 LobbySection:AddToggle({
  Name = "Loop Invite Everyone (OP)",
  Default = false,
  Callback = function(Value)
   _G.LoopInviteEveryone_Lobby = Value
  end    
 })

 Phase_2_Lobby:AddParagraph("The Trials Script | Made By Rizve#3400","phase 1 works for now. Phase 2 script discontinued because i'm too lazy sorry. only 2 features are available on phase 2 (hint: use vfly on infinite yeild on phase 2 to fly the chicken)")


 local function LoopInviteEveryone_Lobby()
  task.wait(0.05)

  if _G.LoopInviteEveryone_Lobby then
   for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
    local Event = game:GetService("ReplicatedStorage").PartnerSystem.SendRequest
    Event:FireServer(Player.Name)
   end
  end

  LoopInviteEveryone_Lobby()
 end
 task.spawn(LoopInviteEveryone_Lobby)

elseif game.PlaceId == tonumber(9096540323) then
 local Phase_2 = Window:MakeTab({
  Name = "Phase 2",
  Icon = "rbxassetid://347504278"
 })


 local Phase_2_Trial_1 = Phase_2:AddSection({
  Name = "Trial 1"
 })
 Phase_2_Trial_1:AddToggle({
  Name = "Auto Complete Trial 1",
  Default = false,
  Callback = function(Value)
   _G.AutoComplete_Phase2_Trial1 = Value
  end    
 })
 
 local Phase_2_Trial_3 = Phase_2:AddSection({
  Name = "Trial 3"
 })
 Phase_2_Trial_3:AddToggle({
  Name = "Auto Press Proximity Prompt",
  Default = false,
  Callback = function(Value)
   _G.Phase2_Trial3_AutoPressProximityPrompt = Value
  end    
 })
 
 --[[Phase_2_Trial_3:AddButton({
  Name = "Reveal All Buttons",
  Callback = function()
   local function GetNumber(Button, Buttons, CheckSameButton)
    if Button and (not Buttons and (not CheckSameButton)) then
     local MatchNumber = Button.Push.LatchMatch
     if MatchNumber and MatchNumber.Value and MatchNumber.Value ~= nil then
      return MatchNumber.Value
     else
      warn("--- Get number function: failed to get match number")
     end
    elseif Button and Buttons and CheckSameButton then
     for _, Button in pairs(Buttons:GetChildren()) do
      for _, instance in pairs(Button:GetDescendants()) do
       local FoundSecondButton = false
       if instance:IsA("StringValue") and tostring(instance.Value) == tostring(Button) and (not instance == CheckSameButton) then
        return instance
       else
        continue
       end

      end
     end
    end
   end

   local SuccessCount = 0
   local ErrorFindingButtonCount = 0
   local Phase2_Trial3_RevealButtons_SHOWEDSUCCESSCOUNTS = false

   for _, Room in pairs(game:GetService("Workspace").Trials.Trial3.Rooms:GetChildren()) do
    local Buttons = Room.Lift.Buttons
    for _, Button in pairs(Buttons:GetChildren()) do
     local ButtonNumber = GetNumber(Button)
     if ButtonNumber then
      print("Got match Number (" .. ButtonNumber .. ") for the button " .. Button.Name)
      local SecondButton = GetNumber(ButtonNumber, Buttons, Button)
      if SecondButton then
       print("Got second button for the button " .. Button.Name .. ". Match Number " .. ButtonNumber)

       Button.LightPart.Color = Color3.fromRGB(ButtonNumber * ButtonNumber, 255, ButtonNumber * ButtonNumber)
       Button.LightPart.PointLight.Color = Color3.fromRGB(ButtonNumber * ButtonNumber, 255, ButtonNumber * ButtonNumber)
       SecondButton.LightPart.Color = Color3.fromRGB(ButtonNumber * ButtonNumber, 255, ButtonNumber * ButtonNumber)
       SecondButton.LightPart.PointLight.Color = Color3.fromRGB(ButtonNumber * ButtonNumber, 255, ButtonNumber * ButtonNumber)


      else
       print("Failed to get second button. match number: " .. ButtonNumber)
       ErrorFindingButtonCount += 1
       continue
      end
     else
      print("Error getting match number for the button " .. Button.Name)
      ErrorFindingButtonCount += 1
      continue
     end
    end
   end
   ----------------------------------------------------
   if SuccessCount >= 1 and ErrorFindingButtonCount < 1 then
    warn("!!Sucess!! Successfuly revealed all buttons.")
    Phase2_Trial3_RevealButtons_SHOWEDSUCCESSCOUNTS = true
   elseif SuccessCount >= 1 and ErrorFindingButtonCount >= 1 then
    warn("!!Warning!! Successfuly some buttons. But some weren't able to be revealed. (Buttons revealed: " .. SuccessCount .. ". Error encountered: " .. ErrorFindingButtonCount .. ".)")
    warn("Try revealing buttons again..")

    Phase2_Trial3_RevealButtons_SHOWEDSUCCESSCOUNTS = true
   end

   if not Phase2_Trial3_RevealButtons_SHOWEDSUCCESSCOUNTS then
    if ErrorFindingButtonCount >= 1 then
     warn("!!Error!! There was error revealing buttons. Total buttons error count: " .. ErrorFindingButtonCount .. ". Total success count: " .. SuccessCount)
     warn("!!Info!! Maybe wait for the round to start")
    end
   end
  end
 })]]
 Phase_2:AddParagraph("The Trials Script | Made By Rizve#3400","phase 1 works for now. I'm too lazy to work on phase 2. only 2 features are available on phase 2 (hint: use vfly on infinite yeild on phase 2 to fly the chicken)")

 local function GetRemote_Phase2_Trial1()
  local Trail1 = game:GetService("Workspace").Trials.Trial1
  for _, Mover in pairs(Trail1.Movers:GetChildren()) do
   for _, Part in pairs(Mover:GetDescendants()) do
    if Part:IsA("Seat") then
     if Part.Occupant and Part.Occupant.Parent.Name == game:GetService("Players").LocalPlayer.Name then
      local Remote = Mover.Main.RemoteEvent

      return Remote
     else
      continue
     end
    end
   end
  end
 end

 local Phase2_Trial1_Remote = GetRemote_Phase2_Trial1()

 local function AutoComplete_Phase2_Trial1()
  task.wait(0.05)

  if _G.AutoComplete_Phase2_Trial1 then
   Phase2_Trial1_Remote:FireServer(false)
  end

  AutoComplete_Phase2_Trial1()
 end
 task.spawn(AutoComplete_Phase2_Trial1)
 
 local function GetRootPosition()
  local Player = game:GetService("Players").LocalPlayer
  local Character = Player.Character

  if Character:FindFirstChild("HumanoidRootPart") then
   local HumanoidRootPart = Character.HumanoidRootPart
   return HumanoidRootPart.Position
  else
   task.wait(0.1)
   local SecondTry = GetRootPosition()
   return SecondTry
  end
 end
 local function Phase2_Trial3_AutoPressProximityPrompt()
  task.wait(0.05)
  
  if _G.Phase2_Trial3_AutoPressProximityPrompt then
   for _, Room in pairs(game:GetService("Workspace").Trials.Trial3.Rooms:GetChildren()) do
    local Buttons = Room.Lift.Buttons
    for _, Button in pairs(Buttons:GetChildren()) do
     local PushButton = Button.Push
     local ProximityPrompt = PushButton.ProximityPrompt
     if ((GetRootPosition() - PushButton.Position).Magnitude <= 10) and ProximityPrompt.Enabled then
      fireproximityprompt(ProximityPrompt, 10)
     end
    end
   end
  end

  Phase2_Trial3_AutoPressProximityPrompt()
 end
 task.spawn(Phase2_Trial3_AutoPressProximityPrompt)
end

OrionLib:Init()
OrionLib:MakeNotification({
 Name = "Script",
 Content = "Script Took " .. tick() - Tick .. " Second(s) To Load",
 Time = 5
})

local queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)

Players.LocalPlayer.OnTeleport:Connect(function(State)
 if State == Enum.TeleportState.Started then
  if  queueteleport then
   queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/R1zve/Roblox-Scripts/main/The%20Trials.lua'))()")
  end
 end
end)
--[[
 XRAF v4.3
 Swear to god xonae you won't be autobanning now >:(
 Im still in the Arsenal discord Spying on you hehe
 I also know which non arsenal related server youre in. :)
]]

if not game:IsLoaded() then game.Loaded:Wait() end
local versionId = 10165

local Player = game:GetService("Players").LocalPlayer
repeat task.wait() until Player:FindFirstChild("DataLoaded")
if game:GetService("ReplicatedStorage").wkspc.VersionID.Value ~= versionId then
 local m = Instance.new("ScreenGui")
 m.Name = "ShadowNotify" -- what you gonna do xonae detect your own guis? :)
 m.IgnoreGuiInset = true
 local x = Instance.new("TextLabel")
 x.Size = UDim2.new(1, 0, 1, 0)
 x.BackgroundColor3 = Color3.new(0, 0, 0)
 x.TextColor3 = Color3.new(1, 1, 1)
 x.TextSize = 30
 x.RichText = true
 x.TextStrokeTransparency = 0.5
 x.TextStrokeColor3 = Color3.new(0, 0, 0)
 x.Font = Enum.Font.SourceSansBold
 x.Text = "The script is <font color='rgb(160, 0, 0)'>patched</font>, wait for an update.\nLast Update: <font color='rgb(180, 0, 180)'>[Version "..tostring(versionId).."]</font>"
 x.Parent = m
 m.Parent = Player.PlayerGui
 wait(5)
 m:Destroy()
else
 loadstring(game:HttpGet("https://raw.githubusercontent.com/XR97onYT/Arsenal-Autofarm/main/test.lua"))()

 function HopServers()
  local ServerList = {}
  local ServersURL = "https://games.roblox.com/v1/games/286090429/servers/Public?limit=100"

  for i, s in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGet(ServersURL)).data) do
   if type(s) == "table" and s.playing <= 15 and s.id ~= game.JobId then -- Rolve if I can make it exclude the same server, so can you in the browser please thanks
    table.insert(ServerList, s.id)
   end
  end

  if #ServerList > 0 then
   game:GetService("TeleportService"):TeleportToPlaceInstance(286090429, ServerList[math.random(1, #ServerList)])
  end
 end

 function Chat(Message)
  if Player.Status.Team.Value ~= "Spectator" then
   --game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer("Haha!", Message, false, false, true)
  end
 end

 function JoinTeam()
  task.spawn(function()
   repeat
    task.wait(1)

    game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer("TRC", "bro")

    Player.PlayerGui.Menew.Enabled = false
    Player.PlayerGui.GUI.Enabled = true
    Player.PlayerGui.GUI.TeamSelection.Visible = false
    Player.PlayerGui.GUI.BottomFrame.Visible = false
    Player.PlayerGui.GUI.Interface.Visible = true
    Player.PlayerGui.MapVoting.MapVote.Visible = false

    task.wait(0.75)

    if Player.Status.Team.Value == "Spectator" then
     game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer("TRC", "bro")

     Player.PlayerGui.Menew.Enabled = false
     Player.PlayerGui.GUI.Enabled = true
     Player.PlayerGui.GUI.TeamSelection.Visible = false
     Player.PlayerGui.GUI.BottomFrame.Visible = false
     Player.PlayerGui.GUI.Interface.Visible = true
     Player.PlayerGui.MapVoting.MapVote.Visible = false
    else
     break
    end

    task.wait(0.75)

    if Player.Status.Team.Value == "Spectator" then
     game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer("TBC", "bro")

     Player.PlayerGui.Menew.Enabled = false
     Player.PlayerGui.GUI.Enabled = true
     Player.PlayerGui.GUI.TeamSelection.Visible = false
     Player.PlayerGui.GUI.BottomFrame.Visible = false
     Player.PlayerGui.GUI.Interface.Visible = true
     Player.PlayerGui.MapVoting.MapVote.Visible = false
    else
     break
    end

    task.wait(0.75)

    if Player.Status.Team.Value == "Spectator" then
     game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer("TGC", "bro")

     Player.PlayerGui.Menew.Enabled = false
     Player.PlayerGui.GUI.Enabled = true
     Player.PlayerGui.GUI.TeamSelection.Visible = false
     Player.PlayerGui.GUI.BottomFrame.Visible = false
     Player.PlayerGui.GUI.Interface.Visible = true
     Player.PlayerGui.MapVoting.MapVote.Visible = false
    else
     break
    end

    task.wait(0.75)

    if Player.Status.Team.Value == "Spectator" then
     game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer("TYC", "bro")

     Player.PlayerGui.Menew.Enabled = false
     Player.PlayerGui.GUI.Enabled = true
     Player.PlayerGui.GUI.TeamSelection.Visible = false
     Player.PlayerGui.GUI.BottomFrame.Visible = false
     Player.PlayerGui.GUI.Interface.Visible = true
     Player.PlayerGui.MapVoting.MapVote.Visible = false
    else
     break
    end

    task.wait(0.75)

    if Player.Status.Team.Value == "Spectator" then
     game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer("Random", "bro")

     Player.PlayerGui.Menew.Enabled = false
     Player.PlayerGui.GUI.Enabled = true
     Player.PlayerGui.GUI.TeamSelection.Visible = false
     Player.PlayerGui.GUI.BottomFrame.Visible = false
     Player.PlayerGui.GUI.Interface.Visible = true
     Player.PlayerGui.MapVoting.Enabled = false
    else
     break
    end
   until Player.Status.Team.Value ~= "Spectator" or game:GetService("ReplicatedStorage").wkspc.Status.RoundOver.Value == true
  end)
 end

 function HasBadWeapon()
  return (game:GetService("Players").LocalPlayer.NRPBS.EquippedTool.Value:find("Bow") or game:GetService("Players").LocalPlayer.NRPBS.EquippedTool.Value:find("Flamethrower") or game:GetService("Players").LocalPlayer.NRPBS.EquippedTool.Value:find("Acid") or game:GetService("Players").LocalPlayer.NRPBS.EquippedTool.Value:find("Launcher") or game:GetService("Players").LocalPlayer.NRPBS.EquippedTool.Value:find("Water") or game:GetService("Players").LocalPlayer.NRPBS.EquippedTool.Value:find("Present") or game:GetService("Players").LocalPlayer.NRPBS.EquippedTool.Value:find("Flaming") or game:GetService("Players").LocalPlayer.NRPBS.EquippedTool.Value:find("Bomb") or game:GetService("Players").LocalPlayer.NRPBS.EquippedTool.Value:find("Barrel") or game:GetService("Players").LocalPlayer.NRPBS.EquippedTool.Value:find("RPG") or game:GetService("Players").LocalPlayer.NRPBS.EquippedTool.Value:find("Rocket") or game:GetService("Players").LocalPlayer.NRPBS.EquippedTool.Value:find("Cannon")) and true or false
 end

 local FakePing = 30
 local VirtualInput = game:GetService("VirtualInputManager")
 local VirtualUser = game:GetService("VirtualUser")

 local LoopCheck1 = tick()
 local LoopCheck2 = tick()
 local LoopCheck21 = false
 local LoopCheck22 = false
 local LoopCheck3 = tick()
 local LoopCheck4 = tick()
 local LoopCheck5 = tick()
 local LoopCheck6 = tick()
 local LoopCheck7 = tick()
 local LoopCheck77 = false

 local Farming = false
 local ServerHopped = false
 local TimeToHop = 25
 local SwitchPlayer = 3
 local ChatSpam = getfenv().Message or "I AM CLEARLY BETTER THEN DRACOO AND TANKR COMBINED. I AM GOD"
 local Target

 local SwitchToKnifeWeapons = {
  "Electric Revoler", --[[Because if you kill too many people it bans you :skull:]] "Paintball", "Dispenser", "Bow", "Flamethrower", "Acid", "Cannon", "Launcher", "RPG", "Water Balloon", "Presents", "Bomb", "Explosive Barrel", "Knife"
 }

 function Farm()
     repeat task.wait() until game:GetService("ReplicatedStorage").wkspc.Status.RoundOver.Value == false
     
  JoinTeam()

  repeat task.wait() until game:GetService("ReplicatedStorage").wkspc.Status.RoundOver.Value == false and Player.Status.Team.Value ~= "Spectator"

  if game:GetService("ReplicatedStorage").wkspc.Status.LastGamemode.Value == "Hackula" then
   HopServers()
   return
  end

  Farming = true
  game:GetService("ReplicatedStorage").wkspc.TimeScale.Value = 4
  game:GetService("ReplicatedStorage").wkspc.CurrentCurse.Value = "Infinite Ammo"
  task.spawn(function()
   repeat
    if Player.Status.Team.Value ~= "Spectator" then
     for i,v in pairs(game:GetService("Players"):GetPlayers()) do
      if v ~= Player then
       if v.Character and v.NRPBS.Health.Value > 0 and v.Status.Team.Value ~= "Spectator" then
        if v.Status.Team.Value ~= Player.Status.Team.Value then
         if v.Character:FindFirstChild("Spawned") then
          TimeToHop = 25
          SwitchPlayer = 3
          repeat
           Target = v
           Chat(ChatSpam)
           SwitchPlayer = SwitchPlayer - 0.1
           if SwitchPlayer <= 0 then break end
           task.wait(0.1)
          until game:GetService("ReplicatedStorage").wkspc.Status.RoundOver.Value or not v or not v.Character or not v.Character:FindFirstChild("Spawned") or v.NRPBS.Health.Value <= 0 or v.Status.Team.Value == "Spectator" or v.Status.Alive.Value == false or Player.Status.Team.Value == v.Status.Team.Value
         end
        end
       end
      end
     end
    end
    task.wait(0.5)
   until game:GetService("ReplicatedStorage").wkspc.Status.RoundOver.Value == true
   Farming = false
   task.wait(4)
   HopServers()
  end)
 end

 if _G.XRAutofarmRender then
  _G.XRAutofarmRender:Disconnect()
  _G.XRAutofarmRender = nil
 end

 _G.XRAutofarmRender = game:GetService("RunService").RenderStepped:Connect(function()
  Player.Ping.Value = FakePing

  if Farming then
   if Player.Status.Team.Value ~= "Spectator" then
    if Target and Target.Character and Target.NRPBS.Health.Value > 0 and Target.Character:FindFirstChild("HeadHB") then
     if Player.NRPBS.EquippedTool.Value:find("Knife") then
      workspace.CurrentCamera.CameraSubject = Player.Character.Humanoid
      Player.Character:SetPrimaryPartCFrame(Target.Character.HumanoidRootPart.CFrame * CFrame.new(-2, 0, 4))
      workspace.CurrentCamera.CFrame = CFrame.new(
       (Target.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 6)).Position, Target.Character.Head.Position
      )
     else
      workspace.CurrentCamera.CameraSubject = Target.Character.HeadHB
      workspace.CurrentCamera.CFrame = CFrame.new(
       (Target.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 6)).Position, Target.Character.Head.Position + Vector3.new(0, .1, 0)
      )
     end

     local RP = RaycastParams.new()
     RP.FilterType = Enum.RaycastFilterType.Blacklist
     RP.FilterDescendantsInstances = {workspace.CurrentCamera, Player.Character, workspace.Map}

     local Res = workspace:Raycast(workspace.CurrentCamera.CFrame.Position, workspace.CurrentCamera.CFrame.LookVector * 10000, RP)

     if Res and Res.Instance then
      if Res.Instance:IsDescendantOf(Target.Character) then
       VirtualUser:Button1Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
      end
     end

     if (tick() - LoopCheck7) >= 0.05 and not LoopCheck77 then
      if HasBadWeapon() then
       VirtualInput:SendKeyEvent(true, 51, false, game)
       VirtualInput:SendKeyEvent(false, 51, false, game)
       LoopCheck77 = true
      end
      LoopCheck7 = tick()
     else
      LoopCheck77 = false
     end
    else
     workspace.CurrentCamera.CameraSubject = Player.Character.Humanoid
    end
   end
  end

  if (tick() - LoopCheck1) >= 1 then
   if game:GetService("GuiService"):GetErrorMessage() ~= nil and game:GetService("GuiService"):GetErrorMessage() ~= "" then
    HopServers()
    LoopCheck1 = tick() + 10
   end
  end

  if (tick() - LoopCheck2) >= 3 then
   if not LoopCheck21 then
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    LoopCheck21 = true
   end
   if (tick() - LoopCheck2) >= 4 then
    if not LoopCheck22 then
     VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
     LoopCheck22 = true
    end
   end
  else
   LoopCheck2 = tick()
   LoopCheck21 = false
   LoopCheck22 = false
  end

  if (tick() - LoopCheck3) >= 1 then
   FakePing = math.random(30, 70)
   LoopCheck3 = tick()
  end

  if (tick() - LoopCheck4) >= 0.05 then
   if Player.NRPBS.Health.Value <= 0 and Player.Status.Team.Value ~= "Spectator" then
    game:GetService("ReplicatedStorage").Events.LoadCharacter:FireServer()
   end
   LoopCheck4 = tick()
  end

  if (tick() - LoopCheck5) >= 1 then
   if Farming then
    TimeToHop = TimeToHop - 1

    if TimeToHop <= 0 then
     HopServers()
     LoopCheck5 = tick() + 1000000 -- no server crash
    else
     Player.PlayerGui.GUI.TeamSelection.Visible = false
     Player.PlayerGui.MapVoting.MapVote.Visible = false
    end
   end
   LoopCheck5 = tick()
  end

  if game:GetService("ReplicatedStorage").wkspc.Status.RoundOver.Value == true then Target = nil end
  if not Player.Character then Target = nil end
  if Player.NRPBS.Health.Value <= 0 then Target = nil end
 end)

 Farm()
end
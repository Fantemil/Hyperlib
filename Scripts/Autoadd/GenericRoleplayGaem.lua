-- **IF YOU USE ANY OF THIS CODE IN YOUR SCRIPT, CREDIT ME.**
-- enjoy
-- my code is shit, just a forewarning


local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)


-- predefine some vars
local UserInputService = game:GetService('UserInputService')
sprintSpeed = 24
walkSpeed = 16
farmTime = 1 / 9.6
killHeight = -7
swordToUse = nil
back = CFrame.Angles(0, math.rad(0), 0)
front = CFrame.Angles(0, math.rad(180), 0)
right  = CFrame.Angles(0, math.rad(90), 0)
left  = CFrame.Angles(0, math.rad(270), 0)
isViewing = false
Clip = true
playerIsInVehicle = false


function AutoVote(vehicleOrHumanoid)
    councilAdjourned = true
    if game.Workspace.CouncilHouse.Board.SurfaceGui.LawStatus.Text ~= "COUNCIL ADJOURNED" then
                        wasRun = true
                        councilAdjourned = false
                        Clip = false
                        noclip()
                        canRunFarm()
                    if vehicleOrHumanoid == "Vehicle" and isDead == false and notSeated == false and kartExists == true then
                        seat = game.Players.LocalPlayer.Character.Humanoid.SeatPart
                            vehicleModel = seat.Parent
                            vehicleModel:SetPrimaryPartCFrame(CFrame.new(339, 58, 430))
                        elseif vehicleOrHumanoid == "Humanoid" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(339, 58, 430)
                    end
                    
                    
                         
                         if game:GetService("Workspace").CouncilHouse.Board.SurfaceGui.Prompt.Text == "Should guards be allowed to vote?" then
                             if guardsCanVote1 == true then
                                 fireproximityprompt(game:GetService("Workspace").CouncilHouse.Yes.ProximityPrompt, 1)
                             else
                                 fireproximityprompt(game:GetService("Workspace").CouncilHouse.No.ProximityPrompt, 1)
                             end
                             
                             
                         elseif game:GetService("Workspace").CouncilHouse.Board.SurfaceGui.Prompt.Text == "Should civilians be able to riot?" then
                             if riotingAllowed1 == true then
                                 fireproximityprompt(game:GetService("Workspace").CouncilHouse.Yes.ProximityPrompt, 1)
                             else
                                 fireproximityprompt(game:GetService("Workspace").CouncilHouse.No.ProximityPrompt, 1)
                             end
                             
                         elseif game:GetService("Workspace").CouncilHouse.Board.SurfaceGui.Prompt.Text == "Should only guards purchase weapons?" then
                             if guardsCanPurchaseWeapons1 == true then
                                 fireproximityprompt(game:GetService("Workspace").CouncilHouse.Yes.ProximityPrompt, 1)
                             else
                                 fireproximityprompt(game:GetService("Workspace").CouncilHouse.No.ProximityPrompt, 1)
                             end
                             
                         elseif game:GetService("Workspace").CouncilHouse.Board.SurfaceGui.Prompt.Text == "Should violence be allowed in the town?" then
                                if violenceAllowed1 == true then
                                    fireproximityprompt(game:GetService("Workspace").CouncilHouse.Yes.ProximityPrompt, 1)
                             else
                                 fireproximityprompt(game:GetService("Workspace").CouncilHouse.No.ProximityPrompt, 1)
                             end
                           
                           
                         elseif game:GetService("Workspace").CouncilHouse.Board.SurfaceGui.Prompt.Text == "Can council members be arrested?" then
                                 if councilCanBeArrested1 == true then
                                    fireproximityprompt(game:GetService("Workspace").CouncilHouse.Yes.ProximityPrompt, 1)
                             else
                                 fireproximityprompt(game:GetService("Workspace").CouncilHouse.No.ProximityPrompt, 1)
                             end
                           
                           
                         elseif game:GetService("Workspace").CouncilHouse.Board.SurfaceGui.Prompt.Text == "Should council members pay taxes?" then
                                if councilPaysTax1 == true then
                                    fireproximityprompt(game:GetService("Workspace").CouncilHouse.Yes.ProximityPrompt, 1)
                             else
                                 fireproximityprompt(game:GetService("Workspace").CouncilHouse.No.ProximityPrompt, 1)
                             end
                           
                           
                         elseif game:GetService("Workspace").CouncilHouse.Board.SurfaceGui.Prompt.Text == "Should doctors pay taxes?" then
                               if doctorsPayTax1 == true then
                                    fireproximityprompt(game:GetService("Workspace").CouncilHouse.Yes.ProximityPrompt, 1)
                             else
                                 fireproximityprompt(game:GetService("Workspace").CouncilHouse.No.ProximityPrompt, 1)
                             end
                           
                           
                         elseif game:GetService("Workspace").CouncilHouse.Board.SurfaceGui.Prompt.Text == "Should healthcare be free?" then
                                 if healthcareFree1 == true then
                                    fireproximityprompt(game:GetService("Workspace").CouncilHouse.Yes.ProximityPrompt, 1)
                             else
                                 fireproximityprompt(game:GetService("Workspace").CouncilHouse.No.ProximityPrompt, 1)
                             end
                           
                         elseif game:GetService("Workspace").CouncilHouse.Board.SurfaceGui.Prompt.Text == "Should peasants be allowed in the town?" then
                                if peasantsAllowed == true then
                                    fireproximityprompt(game:GetService("Workspace").CouncilHouse.Yes.ProximityPrompt, 1)
                             else
                                 fireproximityprompt(game:GetService("Workspace").CouncilHouse.No.ProximityPrompt, 1)
                             end
                           
                         elseif game:GetService("Workspace").CouncilHouse.Board.SurfaceGui.Prompt.Text == "Should jail time be longer?" then
                                if jailTimesLong1 == true then
                                    fireproximityprompt(game:GetService("Workspace").CouncilHouse.Yes.ProximityPrompt, 1)
                             else
                                 fireproximityprompt(game:GetService("Workspace").CouncilHouse.No.ProximityPrompt, 1)
                             end
                           
                         elseif game:GetService("Workspace").CouncilHouse.Board.SurfaceGui.Prompt.Text == "Should guards pay taxes?" then
                                if guardTax1 == true then
                                    fireproximityprompt(game:GetService("Workspace").CouncilHouse.Yes.ProximityPrompt, 1)
                             else
                                 fireproximityprompt(game:GetService("Workspace").CouncilHouse.No.ProximityPrompt, 1)
                             end
                         end
                         if Noclipping then
                             Noclipping:Disconnect()
                            end
                         if vehicleOrHumanoid == "Vehicle" and isDead == false and notSeated == false and kartExists == true then
                             seat = game.Players.LocalPlayer.Character.Humanoid.SeatPart
                                vehicleModel = seat.Parent
                                vehicleModel:SetPrimaryPartCFrame(CFrame.new(339, 58, 430))
                            elseif vehicleOrHumanoid == "Humanoid" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(339, 58, 430)
                            end 
                    
    end
            --[[if councilAdjourned == true and wasRun == true then 
                wasRun = false
                canRunFarm()
                if vehicleOrHumanoid == "Vehicle" and isDead == false and notSeated == false then
                    
                else 
                    
                end
            end]]
end
function ServerHopz(Decision)
    rejoining = true
    
    local GUIDs = {}
    local maxPlayers = 0
    local pagesToSearch = 100
    if Decision == "fast" then pagesToSearch = 5 end
    local Http = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100&cursor="))
    for i = 1,pagesToSearch do
        for i,v in pairs(Http.data) do
            if v.playing ~= v.maxPlayers and v.id ~= game.JobId then
                maxPlayers = v.maxPlayers
                table.insert(GUIDs, {id = v.id, users = v.playing})
            end
        end
        
        if Http.nextPageCursor ~= null then Http = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100&cursor="..Http.nextPageCursor)) else break end
    end
    
    if Decision == "any" or Decision == "fast" then
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, GUIDs[math.random(1,#GUIDs)].id, game.Players.LocalPlayer)
    elseif Decision == "smallest" then
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, GUIDs[#GUIDs].id, game.Players.LocalPlayer)
    elseif Decision == "largest" then
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, GUIDs[1].id, game.Players.LocalPlayer)
    else
        
    end
    wait(3)
    rejoining = false
end

local function tpToLocation(location)
 game.Players.LocalPlayer.Character.Humanoid.Sit = false
 wait(0.1)
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(location)
 wait(0.5)
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(location)
 wait(0.5)
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(location)
 
 
end

local function buyFromShop(storeName, itemName)
 
plr1 = game.Players.LocalPlayer.Character
workPlr = workspace[game.Players.LocalPlayer.Name]    
 --check if team is not spectator
 if storeName == "Kart" then
 
  if itemName == "RegularKart" then
   tpToLocation(Vector3.new(403.231384, 0.760007024, -128.842789))
  elseif itemName == "DoubleKart" then
   tpToLocation(Vector3.new(409.595337, 0.760007024, -76.0248718))
  elseif itemName == "RaceKart" then
   tpToLocation(Vector3.new(372.777405, 0.760007024, -69.6609116))
  elseif itemName == "BusKart" then
   tpToLocation(Vector3.new(371, 0.750000119, -129.5))
  elseif itemName == "FarmKart" then
   tpToLocation(Vector3.new(318.595337, 0.760007024, 144.975128))
   end
  end
  
 if storeName == "SwordStore" then
  
  if itemName == "BasicSword" then
   tpToLocation(Vector3.new(56, 20.8300018, 346))
  elseif itemName == "GoodSword" then
   tpToLocation(Vector3.new(61.5, 20.8300018, 346))
  elseif itemName == "BestSword" then
   tpToLocation(Vector3.new(50.5, 20.8300018, 346))
  end
 end
 --needs completion
 if storeName == "WeaponStore" then
  if itemName == "Musket" then
   tpToLocation(Vector3.new(75, 20.8300018, 346))
  elseif itemName == "Gun" then
   tpToLocation(Vector3.new(80.5, 20.8300018, 346))
  elseif itemName == "Rocket" then
   tpToLocation(Vector3.new(69.5, 20.8300018, 346))
  end
 end
 
 if storeName == "AxeStore" then
  if itemName == "BasicAxe" then
   tpToLocation(Vector3.new(89, 20.7900009, 279))
  elseif itemName == "GoodAxe" then
   tpToLocation(Vector3.new(89, 20.7900009, 273.5))
  elseif itemName == "BestAxe" then
   tpToLocation(Vector3.new(89, 20.7900009, 284.5))
  end
 end
 
 if storeName == "SickleStore" then
  if itemName == "BasicSickle" then
   tpToLocation(Vector3.new(89, 20.7900009, 298))
  elseif itemName == "GoodSickle" then
   tpToLocation(Vector3.new(89, 20.7900009, 292.5))
  elseif itemName == "BestSickle" then
   tpToLocation(Vector3.new(89, 20.7900009, 303.5))
  end
 end
 
 if storeName == "HammerStore" then
  if itemName == "BasicHammer" then
   tpToLocation(Vector3.new(89, 20.7900009, 317))
  elseif itemName == "GoodHammer" then
   tpToLocation(Vector3.new(89, 20.7900009, 311.5))
  elseif itemName == "BestHammer" then
   tpToLocation(Vector3.new(89, 20.7900009, 322.5))
  end
 end
  
 if storeName == "FoodStore" then
  if itemName == "BasicFood" then
   tpToLocation(Vector3.new(-8.99998474, 20.7900009, 317))
  elseif itemName == "GoodFood" then
   tpToLocation(Vector3.new(-8.99998474, 20.7900009, 322.5))
  elseif itemName == "BestFood" then
   tpToLocation(Vector3.new(-8.99998474, 20.7900009, 311.5))
  end
 end
 
 if storeName == "FishingNet" then
  if itemName == "BasicNet" then
   tpToLocation(Vector3.new(-8.99998474, 20.7900009, 279))
  elseif itemName == "GoodNet" then
   tpToLocation(Vector3.new(-8.99998474, 20.7900009, 284.5))
  elseif itemName == "BestNet" then
   tpToLocation(Vector3.new(-8.99998474, 20.7900009, 273.5))
  end
 end
 
 if storeName == "DoctorsOffice" then
  if itemName == "Heal" then
   tpToLocation(Vector3.new(-3, 20.8300018, 346))
  elseif itemName == "Limbs" then
   tpToLocation(Vector3.new(2.5, 20.8300018, 346))
  elseif itemName == "Wheelchair" then
   tpToLocation(Vector3.new(-8.5, 20.8300018, 346))
  end
 end

end


-- Find da player 
local function GetPlayer(Input)
    for _, Player in ipairs(game.Players:GetPlayers()) do
     if (string.lower(Input) == string.sub(string.lower(Player.Name), 1, #Input)) or (string.lower(Input) == string.sub(string.lower(Player.DisplayName), 1, #Input))then
      return Player;
     end
    end
end

if Noclipping then
 Noclipping:Disconnect()
end


function noclip()
 Clip = false
 function NoclipLoop()
  if Clip == false and game.Players.LocalPlayer.Character ~= nil then
   for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
    if child:IsA("BasePart") and child.CanCollide == true then
     child.CanCollide = false
    end
   end
  end
 end
 Noclipping = game:GetService('RunService').Stepped:connect(NoclipLoop)
end

-- Kill player function

local function killPlayer(playerToKill, swordToUse)
  
 for i,v in pairs(game.Workspace.Houses:GetChildren()) do
        if v:FindFirstChild("Boundary") then
            v.Boundary:Destroy()
        end
    end
        
    

 
 
 players = game.Players:GetChildren()
 wasPlayerKilled = false
 workPlr = workspace[game.Players.LocalPlayer.Name]
 poopyFrame = Vector3.new(0,-4,1.5)
 rotateAngle = Vector3.new(0,999999,0)
 
 if swordToUse and swordToUse ~= "Autoselect" then
     tool = swordToUse
 elseif swordToUse == nil or not swordToUse or swordToUse == "Autoselect" then
 
     if game.Players.LocalPlayer.Backpack:FindFirstChild("Best Sword") then
      tool = game.Players.LocalPlayer.Backpack["Best Sword"]
     elseif workPlr:FindFirstChild("Best Sword") then 
      tool = workPlr["Best Sword"]
     elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Good Sword") then
      tool = game.Players.LocalPlayer.Backpack["Good Sword"]
     elseif workPlr:FindFirstChild("Good Sword") then 
      tool = workPlr["Good Sword"]
     elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Sword") then
      tool = game.Players.LocalPlayer.Backpack["Sword"]
     elseif workPlr:FindFirstChild("Sword") then 
      tool = workPlr["Sword"]
     elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Guard Sword") then
      tool = game.Players.LocalPlayer.Backpack["Guard Sword"]
     elseif workPlr:FindFirstChild("Guard Sword") then 
      tool = workPlr["Guard Sword"]
     elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Basic Sword") then
      tool = game.Players.LocalPlayer.Backpack["Basic Sword"]
     elseif workPlr:FindFirstChild("Basic Sword") then 
      tool = workPlr["Basic Sword"]
     else
         Notify("Autokill", "You need a sword! (recommended to become a Barbarian)", 5)
     end
    end
 
 
 killFuncPlayer = game.Workspace:WaitForChild(playerToKill)
 playerinPlayers = game.Players:WaitForChild(playerToKill)
 
 if tool ~= nil then
  game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
  
  for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
   if v:IsA("Tool") then

    currentToolSize = v.Handle.Size
    currentGripPos = v.GripPos
   
    
  
    v.Handle.Massless = true
    v.Handle.Size = Vector3.new(0.5,0.5,60)
    v.GripPos = Vector3.new(0,0,0)
    game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
   
   end
  end
  wait(0.1)
  game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
  
  noclip = false
    
  game:GetService('RunService').Stepped:connect(function()
   if noclip then
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
   end
  end)
  
  
  noclip = true
  game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
 
  game.Workspace.Camera.CameraSubject = playerinPlayers.Character.Humanoid
  
  while wasPlayerKilled == false do
   wait()
   
   if game.Players.LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Seated then
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Running)
   end
   
   poopyPlayerFrame = Vector3.new(0,killHeight,1.5)
   velocityPlayer = killFuncPlayer.Torso.Velocity
            targetPlayerLocation = Vector3.new(killFuncPlayer.Torso.Position.x + (velocityPlayer.x * predIntensity), killFuncPlayer.Torso.Position.y, killFuncPlayer.Torso.Position.z + (velocityPlayer.z * predIntensity))

   newtargetPlayerLocation = targetPlayerLocation + poopyPlayerFrame

   
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(newtargetPlayerLocation, rotateAngle)
   
   tool.Equipped:Connect(function()    
    tool:Activate()
   end)
   
   if killFuncPlayer.Humanoid.Health == 0 or workPlr.Humanoid.Health == 0 or not game.Players:FindFirstChild(playerinPlayers.Name) or game.Players[playerToKill].Character.Humanoid.Health == 0 then -- stop when ded
    wasPlayerKilled = true
    
    
   end            
  end
  noclip = false
  game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
  plr1 = game.Players.LocalPlayer.Character
  
  if game.Players.LocalPlayer.Team == game:GetService("Teams").Barbarian then 
  
      plr1.HumanoidRootPart.CFrame = CFrame.new(-81, 29, -952)
  
  else
      plr1.HumanoidRootPart.CFrame = CFrame.new(-233, -5, 492)
  end
  
  -- change this later to be dependent on team
  game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
 end
end

-- Notify
function Notify(titletxt, text, time)
    local GUI = Instance.new("ScreenGui")
    local Main = Instance.new("Frame", GUI)
    local title = Instance.new("TextLabel", Main)
    local message = Instance.new("TextLabel", Main)
    GUI.Name = "NotificationOof"
    GUI.Parent = game.CoreGui
    Main.Name = "MainFrame"
    Main.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(1, 5, 0, 50)
    Main.Size = UDim2.new(0, 330, 0, 110)
    Main.BackgroundTransparency = 0.1

    title.BackgroundColor3 = Color3.new(0, 0, 0)
    title.BackgroundTransparency = 0.9
    title.Size = UDim2.new(1, 0, 0, 30)
    title.Font = Enum.Font.SourceSansSemibold
    title.Text = titletxt
    title.TextColor3 = Color3.new(1, 1, 1)
    title.TextSize = 17
    
    message.BackgroundColor3 = Color3.new(0, 0, 0)
    message.BackgroundTransparency = 1
    message.Position = UDim2.new(0, 0, 0, 30)
    message.Size = UDim2.new(1, 0, 1, -30)
    message.Font = Enum.Font.SourceSans
    message.Text = text
    message.TextColor3 = Color3.new(1, 1, 1)
    message.TextSize = 16

    wait(0.1)
    Main:TweenPosition(UDim2.new(1, -330, 0, 50), "Out", "Sine", 0.5)
    wait(time)
    Main:TweenPosition(UDim2.new(1, 5, 0, 50), "Out", "Sine", 0.5)
    wait(0.6)
    GUI:Destroy();
end

Notify("Warning: Script detected", "The anticheat has been updated, use the script at your own risk.", 20)

function WeaponsGUI(titletxt, text)
    
    local GUI = Instance.new("ScreenGui")

    local Main = Instance.new("Frame", GUI)
    local title = Instance.new("TextLabel", Main)
    local message = Instance.new("TextLabel", Main)
    local rounded = Instance.new("UICorner", Main)
    local titleRounded = Instance.new("UICorner", title)
    rounded.CornerRadius = UDim.new(0.05, 0)
    titleRounded.CornerRadius = UDim.new(0.05, 0)
    GUI.Name = "NotificationOof"
    GUI.Parent = game.CoreGui
    Main.Name = "MainFrame"
    Main.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(1, 5, 0, 50)
    Main.Size = UDim2.new(0, 400, 0, 200 + numLines * 6)
    Main.BackgroundTransparency = 0.2

    title.BackgroundColor3 = Color3.new(0, 0, 0)
    title.BackgroundTransparency = 1
    title.Size = UDim2.new(1, 0, 0, 30)
    title.Font = Enum.Font.GothamSemibold
    title.Text = titletxt
    title.TextColor3 = Color3.new(1, 1, 1)
    title.TextSize = 17
    
    message.BackgroundColor3 = Color3.new(0, 0, 0)
    message.BackgroundTransparency = 1
    message.Position = UDim2.new(0, 0, 0, 30)
    message.Size = UDim2.new(1, 0, 1, -30)
    message.Font = Enum.Font.Gotham
    message.Text = text
    message.TextColor3 = Color3.new(1, 1, 1)
    message.TextSize = 12

    
    Main:TweenPosition(UDim2.new(1, -400, 0, 520), "Out", "Sine", 0)

 local UserInputService = game:GetService("UserInputService")

    local gui = game.CoreGui.NotificationOof.MainFrame

    local dragging
    local dragInput
    local dragStart
    local startPos

    local function update(input)
     local delta = input.Position - dragStart
     gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    gui.InputBegan:Connect(function(input)
     if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
      dragging = true
      dragStart = input.Position
      startPos = gui.Position
      
      input.Changed:Connect(function()
       if input.UserInputState == Enum.UserInputState.End then
        dragging = false
       end
      end)
     end
    end)

    gui.InputChanged:Connect(function(input)
     if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
      dragInput = input
     end
    end)

    UserInputService.InputChanged:Connect(function(input)
     if input == dragInput and dragging then
      update(input)
     end
    end)

  
    
end

function getWeaponString()
    
    bestStr = ""
    goodStr= ""
    basicStr= ""
    miscStr= ""
    str = "2"
    numLines = 50
    numLines = numLines + 1
    
    for i, player in pairs(game.Players:GetChildren()) do 
         
     bp = player.Backpack
     workspacePlayer = game.Workspace:FindFirstChild(player.Name)
     
     if workspacePlayer ~= nil then
        
         if bp:FindFirstChild("Best Sword") or workspacePlayer:FindFirstChild("Best Sword") then
          bestStr = bestStr .. player.Name .. " (" .. tostring(player.Team) .. ") " .. "has a Best Sword!\n\n"
          numLines = numLines + 1
         end    
         if bp:FindFirstChild("Rocket") or workspacePlayer:FindFirstChild("Rocket") then
          bestStr = bestStr .. player.Name .. " (" .. tostring(player.Team) .. ") " .. "has a Rocket Launcher!\n\n"
          numLines = numLines + 1
         end     
         if bp:FindFirstChild("Gun") or workspacePlayer:FindFirstChild("Gun") then
          bestStr = bestStr .. player.Name .. " (" .. tostring(player.Team) .. ") " .. "has a Gun!\n\n"
          numLines = numLines + 1
            end  
         if bp:FindFirstChild("Good Sword") or workspacePlayer:FindFirstChild("Good Sword") then
          goodStr = goodStr .. player.Name .. " (" .. tostring(player.Team) .. ") " .. "has a Good Sword\n\n"
          numLines = numLines + 1
            end  
         if bp:FindFirstChild("Basic Sword") or workspacePlayer:FindFirstChild("Basic Sword") then
          basicStr = basicStr .. player.Name .. " (" .. tostring(player.Team) .. ") " .. "has a Basic Sword\n\n"
          numLines = numLines + 1
          end 
         if bp:FindFirstChild("Musket") or workspacePlayer:FindFirstChild("Musket") then
          goodStr = goodStr .. player.Name .. " (" .. tostring(player.Team) .. ") " .. "has a Musket\n\n"
          numLines = numLines + 1
            end  
         if bp:FindFirstChild("Sword") or workspacePlayer:FindFirstChild("Sword") then
          miscStr = miscStr .. player.Name .. " (" .. tostring(player.Team) .. ") " .. "has a Barbarian Sword\n\n"
          numLines = numLines + 1
          end 
         if bp:FindFirstChild("Bow") or workspacePlayer:FindFirstChild("Bow") then
          miscStr = miscStr .. player.Name .. " (" .. tostring(player.Team) .. ") " .. "has a Bow\n\n"
          numLines = numLines + 1
          end 
         if bp:FindFirstChild("Bomb") or workspacePlayer:FindFirstChild("Bomb") then
          miscStr = miscStr .. player.Name .. " (" .. tostring(player.Team) .. ") " .. "has a Bomb\n\n"
          numLines = numLines + 1
         end
        end
    
    end
    finalStr = bestStr .. "\n\n" .. goodStr .. "\n\n" .. basicStr .. "\n\n" .. miscStr .. "\n\n"
    return finalStr
end

-- Setup Autofarm function 

function setUpCarAutofarm(bla)
        
            
        if bla ~= false then
            
            finishedSetUp = false
            
            if game.Players.LocalPlayer.stats.Hunger.Value < 25 then
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                
                repeat          
                    wait(2) 
                    game.ReplicatedStorage.RemoteEvent:FireServer("Respawn")
                until game.Players.LocalPlayer.Character.Humanoid.Health > 0
            end
        
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart", 30)
            
            
            workPlr = game.Workspace[game.Players.LocalPlayer.Name]
            plr1 = game.Players.LocalPlayer.Character
            
            if game.Players.LocalPlayer.Team == game:GetService("Teams").Spectating then
               fireproximityprompt(game:GetService("Workspace").SpawnArea.PeasantSpawnArea.PeasantTP.ProximityPrompt, 1)
            end
            
            for i,v in pairs(game.Workspace.Ragdolls:GetChildren()) do
                if v:IsA("Model") then 
                    v:Destroy()
                end
            end
            
            game.Players.LocalPlayer.Character.Humanoid.Sit = false
           
            
            plr1.Humanoid:UnequipTools()
            wait()
            canRunFarm()
            
            if floodActive == true then
                plr1.HumanoidRootPart.CFrame = CFrame.new(335, 36, -133)
                repeat wait(0.5) canRunFarm() until floodActive == false 
            end
            
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Kart") == nil then
                repeat
             wait(0.5)
             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(403.231384, 0.760007024, -128.842789)
                until plr1.Humanoid:GetState() == Enum.HumanoidStateType.Seated
             
             Notify("Autofarm", "Setting up. Please wait...\nNote: It's HIGHLY recommended you use this \non a VIP server!\n(Faster cash, less chance of ban)", 6.5)
            end
            
           
            
         plr1.HumanoidRootPart.CFrame = CFrame.new(335, 36, -133)
         
         
         plr1.Humanoid:UnequipTools()
         wait(1)
         kartTool = game.Players.LocalPlayer.Backpack["Kart"]
         game.Players.LocalPlayer.Character.Humanoid:EquipTool(kartTool)
         
         
         repeat
             kartTool:Activate()
             
             wait(2)
             daSeat = game.Workspace.Karts[game.Players.LocalPlayer.Name].VehicleSeat
                plr1.HumanoidRootPart.CFrame = CFrame.new(daSeat.Position.x, daSeat.Position.y + 17, daSeat.Position.z)
                wait(1)
                
                if plr1.Humanoid:GetState() ~= Enum.HumanoidStateType.Seated then
                    plr1.HumanoidRootPart.CFrame = CFrame.new(335, 36, -133)
                    wait(0.5)
                end
            
            until plr1.Humanoid:GetState() == Enum.HumanoidStateType.Seated 
                
              
            
            seat = game.Players.LocalPlayer.Character.Humanoid.SeatPart
            vehicleModel = seat.Parent
            
        
            
            
            wait(0.1)
            
           
        
           
            
            wait(1)
            if plr1.Humanoid:GetState() == Enum.HumanoidStateType.Seated then
                finishedSetUp = true
            else
                finishedSetUp = false
            end
            plr1.Humanoid:UnequipTools()
            return finishedSetUp
    else
        finishedSetUp = false
        return finishedSetUp
    end
    
end

function teleportVehicle(vehicleModel, location)
    vehicleModel:SetPrimaryPartCFrame(location)
end

-- Autofarm function 
function carAutofarm(time)
    

    
    
    local seat = game.Players.LocalPlayer.Character.Humanoid.SeatPart
    local vehicleModel = seat.Parent
    
    
    
    repeat
        if vehicleModel.ClassName ~= "Model" then
         vehicleModel = vehicleModel.Parent
        end
    until vehicleModel.ClassName == "Model"
    
    canRunFarm()
    
        
        --if notSeated == false and floodActive == false and isDead == false then
                wait(time)
        if game.Workspace.Karts:FindFirstChild(game.Players.LocalPlayer.Name) then
            firetouchinterest(game.Workspace.Karts[game.Players.LocalPlayer.Name].Root, game.Workspace.KartTrack.Nodes.NodeParts["1"], 0)

            firetouchinterest(game.Workspace.Karts[game.Players.LocalPlayer.Name].Root, game.Workspace.KartTrack.Nodes.NodeParts["1"], 1)
        end
        wait(time)
        if game.Workspace.Karts:FindFirstChild(game.Players.LocalPlayer.Name) then
            firetouchinterest(game.Workspace.Karts[game.Players.LocalPlayer.Name].Root, game.Workspace.KartTrack.Nodes.NodeParts["2"], 0)
    
            firetouchinterest(game.Workspace.Karts[game.Players.LocalPlayer.Name].Root, game.Workspace.KartTrack.Nodes.NodeParts["2"], 1)
        end
        wait(time)
        if game.Workspace.Karts:FindFirstChild(game.Players.LocalPlayer.Name) then
            firetouchinterest(game.Workspace.Karts[game.Players.LocalPlayer.Name].Root, game.Workspace.KartTrack.Nodes.NodeParts["3"], 0)
    
            firetouchinterest(game.Workspace.Karts[game.Players.LocalPlayer.Name].Root, game.Workspace.KartTrack.Nodes.NodeParts["3"], 1)
        end
        wait(time)
        if game.Workspace.Karts:FindFirstChild(game.Players.LocalPlayer.Name) then
            firetouchinterest(game.Workspace.Karts[game.Players.LocalPlayer.Name].Root, game.Workspace.KartTrack.Nodes.NodeParts["4"], 0)
    
            firetouchinterest(game.Workspace.Karts[game.Players.LocalPlayer.Name].Root, game.Workspace.KartTrack.Nodes.NodeParts["4"], 1)
        end
        wait(time)
        if game.Workspace.Karts:FindFirstChild(game.Players.LocalPlayer.Name) then
            firetouchinterest(game.Workspace.Karts[game.Players.LocalPlayer.Name].Root, game.Workspace.KartTrack.Nodes.NodeParts["5"], 0)
    
            firetouchinterest(game.Workspace.Karts[game.Players.LocalPlayer.Name].Root, game.Workspace.KartTrack.Nodes.NodeParts["5"], 1)
        end
        wait(time)
        if game.Workspace.Karts:FindFirstChild(game.Players.LocalPlayer.Name) then
            firetouchinterest(game.Workspace.Karts[game.Players.LocalPlayer.Name].Root, game.Workspace.KartTrack.Nodes.NodeParts["6"], 0)
    
            firetouchinterest(game.Workspace.Karts[game.Players.LocalPlayer.Name].Root, game.Workspace.KartTrack.Nodes.NodeParts["6"], 1)
        end
        wait(time)
        if game.Workspace.Karts:FindFirstChild(game.Players.LocalPlayer.Name) then
            firetouchinterest(game.Workspace.Karts[game.Players.LocalPlayer.Name].Root, game.Workspace.KartTrack.Nodes.NodeParts["7"], 0)
    
            firetouchinterest(game.Workspace.Karts[game.Players.LocalPlayer.Name].Root, game.Workspace.KartTrack.Nodes.NodeParts["7"], 1)
        end
        wait(time)
        if game.Workspace.Karts:FindFirstChild(game.Players.LocalPlayer.Name) then
            firetouchinterest(game.Workspace.Karts[game.Players.LocalPlayer.Name].Root, game.Workspace.KartTrack.Nodes.NodeParts["8"], 0)
    
            firetouchinterest(game.Workspace.Karts[game.Players.LocalPlayer.Name].Root, game.Workspace.KartTrack.Nodes.NodeParts["8"], 1)
        end
        wait(time)
        if game.Workspace.Karts:FindFirstChild(game.Players.LocalPlayer.Name) then
            firetouchinterest(game.Workspace.Karts[game.Players.LocalPlayer.Name].Root, game.Workspace.KartTrack.Nodes.NodeParts["9"], 0)
    
            firetouchinterest(game.Workspace.Karts[game.Players.LocalPlayer.Name].Root, game.Workspace.KartTrack.Nodes.NodeParts["9"], 1)
        end
        

        
        
        
    
    
    return finishedSetUp
end

function canRunFarm()
    
    function canRunFarm()
    
    floodActive = false
    notSeated = false
    isDead = false
    kartExists = false
    
    if game.ReplicatedStorage.IsFlooding.Value == true then
        floodActive = true

    end
    
    if game.Players.LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Seated then
        notSeated = true
    end
    
    if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
        isDead = true
    end
    
    if game.Workspace.Karts:FindFirstChild(game.Players.LocalPlayer.Name) then
        kartExists = true
    end
    
    return floodActive, notSeated, isDead, kartExists
    
end
    
    
    
end

-- UI here we are!
local Finity = loadstring(game:HttpGet("https://raw.githubusercontent.com/Boardbot/grg/main/ui.lua"))()



-- Create Window
local FinityWindow = Finity.new(true)
FinityWindow.ChangeToggleKey(Enum.KeyCode.RightControl)

-- Create categories
local PlayerCategory = FinityWindow:Category("Player")
local FunctionsCategory = FinityWindow:Category("Functions")
local AutofarmCategory = FinityWindow:Category("Autofarm")
local TeamSpecificCategory = FinityWindow:Category("Team-Specific")
local TeleportsCategory = FinityWindow:Category("Teleports")
local CreditsCategory = FinityWindow:Category("Credits & Info")



-- Create sectors for categories

-- PlayerCategory Sectors
local SpeedSettings = PlayerCategory:Sector("Speed Settings")
local miscPlayer = PlayerCategory:Sector("Miscellaneous")
local ServerHop = PlayerCategory:Sector("Serverhop")
local MiscSector = PlayerCategory:Sector("")

local fillCategory = PlayerCategory:Sector("")
local DiscordSector = PlayerCategory:Sector("")

-- FunctionsCategory Sectors
local SelectPlayer = FunctionsCategory:Sector("Autokill")
local ScanWeapons = FunctionsCategory:Sector("Scan for Player Weapons")
local placeholderFuncSector = FunctionsCategory:Sector("")

local SpoofSettings = FunctionsCategory:Sector("Spoofing")

-- TeleportsCategory Sectors
local TPSector = TeleportsCategory:Sector("Teleports")
local ShopSector2 = TeleportsCategory:Sector("")
local ShopSector1 = TeleportsCategory:Sector("Shops")

--AutofarmCategory Sectors
local Autofarm1 = AutofarmCategory:Sector("Autofarm Settings")
local Autofarm2 = AutofarmCategory:Sector("")


-- CreditsCategory Sectors
local DiscordCredits = CreditsCategory:Sector("Discord")
local CreditsCredits = CreditsCategory:Sector("Credits")

-- TeamSpecificCategory Sectors
local AutoVoteSector = TeamSpecificCategory:Sector("Auto-Vote (Leader / Council Member only)")
local AutoArrestSector1 = TeamSpecificCategory:Sector("Auto Arrest (Guard only)")

-- Speed
SpeedSettings:Cheat("Slider", "Sprint Speed (Q)", function(sliderSprint)
 
 sprintSpeed = sliderSprint
end, {min = 24, max = 100, suffix = ""})

SpeedSettings:Cheat("Slider", "Walkspeed", function(sliderWalk)
   
 walkSpeed = sliderWalk
end, {min = 16, max = 100, suffix = ""})

UserInputService.InputBegan:Connect(function(inputObject, gameProcessedEvent) 
    
    
 local isQHeld = UserInputService:IsKeyDown(Enum.KeyCode.Q)

 
 
 if gameProcessedEvent == true then
  
  if isQHeld == true then
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = sprintSpeed
  end
  
 end
 
 if isQHeld == false and gameProcessedEvent == false then 
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = walkSpeed
  
 end
end)

-- Spoofing
SpoofSettings:Cheat("Textbox", "Player to Spoof", function(playerToSpoofTextbox)
 playerToSpoof = GetPlayer(playerToSpoofTextbox).Name
 
end, {
 placeholder = "Enter Player Name"
})

SpoofSettings:Cheat("Textbox", "Spoof Name", function(desiredName)
 game.Workspace[playerToSpoof].HumanoidRootPart.HeadGui.Title.Text = desiredName
 game.Players.LocalPlayer.PlayerGui.SpectateGui.Bar.Title.Text = desiredName
end, {
 placeholder = "Enter Desired Name"
})

SpoofSettings:Cheat("Dropdown", "Spoof Status", function(statusOption)
 
 if statusOption == "VIP" then
     game.Workspace[playerToSpoof].HumanoidRootPart.HeadGui.Status.Text = "VIP"
        game.Workspace[playerToSpoof].HumanoidRootPart.HeadGui.Status.TextColor3 = Color3.new(239/256, 184/256, 56/256)
 elseif statusOption == "None" then 
     game.Workspace[playerToSpoof].HumanoidRootPart.HeadGui.Status.Text = ""
    elseif statusOption == "Fan" then
        game.Workspace[playerToSpoof].HumanoidRootPart.HeadGui.Status.Text = "fan"
        game.Workspace[playerToSpoof].HumanoidRootPart.HeadGui.Status.TextColor3 = Color3.new(99/256, 95/256, 98/256)
    end
 
end, {
 options = {
     "None",
  "VIP",
  "Fan",
 }
})

SpoofSettings:Cheat("Dropdown", "Spoof Team", function(spoofedTeam)
 
 game.Workspace[playerToSpoof].HumanoidRootPart.HeadGui.Team.Text = spoofedTeam
  
  if spoofedTeam == "Council Member" then
   game.Workspace[playerToSpoof].HumanoidRootPart.HeadGui.Team.TextColor3 = Color3.new(107/256, 50/256, 124/256)
   game.Workspace[playerToSpoof].Torso.Color = Color3.new(107/256, 50/256, 124/256)
  elseif spoofedTeam == "Leader" then
   game.Workspace[playerToSpoof].HumanoidRootPart.HeadGui.Team.TextColor3 = Color3.new(255/256, 0/256, 0/256)
   game.Workspace[playerToSpoof].Torso.Color =Color3.new(255/256, 0/256, 0/256)
  elseif spoofedTeam == "Landlord" then
   game.Workspace[playerToSpoof].HumanoidRootPart.HeadGui.Team.TextColor3 = Color3.new(218/256, 133/256, 65/256)
   game.Workspace[playerToSpoof].Torso.Color =Color3.new(218/256, 133/256, 65/256)
  elseif spoofedTeam == "Guard" then
   game.Workspace[playerToSpoof].HumanoidRootPart.HeadGui.Team.TextColor3 = Color3.new(39/256, 70/256, 45/256)
   game.Workspace[playerToSpoof].Torso.Color =Color3.new(39/256, 70/256, 45/256)
  elseif spoofedTeam == "Doctor" then
   game.Workspace[playerToSpoof].HumanoidRootPart.HeadGui.Team.TextColor3 = Color3.new(248/256, 248/256, 248/256)
   game.Workspace[playerToSpoof].Torso.Color =Color3.new(248/256, 248/256, 248/256)
  elseif spoofedTeam == "Jester" then
   game.Workspace[playerToSpoof].HumanoidRootPart.HeadGui.Team.TextColor3 = Color3.new(245/256, 205/256, 48/256)
   game.Workspace[playerToSpoof].Torso.Color =Color3.new(245/256, 205/256, 48/256)
  elseif spoofedTeam == "Civilian" then
   game.Workspace[playerToSpoof].HumanoidRootPart.HeadGui.Team.TextColor3 = Color3.new(33/256, 84/256, 185/256)
   game.Workspace[playerToSpoof].Torso.Color =Color3.new(33/256, 84/256, 185/256)
   
  elseif spoofedTeam == "Peasant" then
    game.Workspace[playerToSpoof].HumanoidRootPart.HeadGui.Team.TextColor3 = Color3.new(106/256, 57/256, 9/256)
    game.Workspace[playerToSpoof].Torso.Color =Color3.new(106/256, 57/256, 9/256)
  elseif spoofedTeam == "Barbarian" then
   game.Workspace[playerToSpoof].HumanoidRootPart.HeadGui.Team.TextColor3 = Color3.new(86/256, 36/256, 36/256/256)
   game.Workspace[playerToSpoof].Torso.Color =Color3.new(86/256, 36/256, 36/256/256)
  elseif spoofedTeam == "Criminal" then
   game.Workspace[playerToSpoof].HumanoidRootPart.HeadGui.Team.TextColor3 = Color3.new(27/256, 42/256, 53/256)
   game.Workspace[playerToSpoof].Torso.Color =Color3.new(27/256, 42/256, 53/256)
  elseif spoofedTeam == "Spectating" then
   game.Workspace[playerToSpoof].HumanoidRootPart.HeadGui.Team.TextColor3 = Color3.new(27/255, 42/255, 53/255)
   game.Workspace[playerToSpoof].Torso.Color =Color3.new(27/255, 42/255, 53/255)
  end
 
end, {
 options = {
     "Leader",
  "Council Member",
  "Landlord",
  "Guard",
  "Doctor",
  "Jester",
  "Civilian",
  "Peasant",
  "Criminal",
  "Spectating",
 }
})


SpoofSettings:Cheat("Label", "")
SpoofSettings:Cheat("Label", "\nSpoof features are clientside only.\nUse them to submit a fake exploit report\non the GRG discord.")

-- Misc Settings





-- Discord


-- FunctionsCategory Category

-- Select Player Textbox
SelectPlayer:Cheat("Textbox", "Player to Kill", function(killPlrText)
 playerToKill = GetPlayer(killPlrText).Name
 
end, {
 placeholder = "Enter Player Name"
})

-- Kill Height Slider 
SelectPlayer:Cheat("Slider", "Kill Height", function(h)
 killHeight = h
end, {min = -12, max = 0, suffix = " studs"})

predIntensity = 0.1

SelectPlayer:Cheat("Slider", "Prediction Intensity", function(pred)
 predIntensity = (pred / 100) / 2
end, {min = 0.1, max = 100, suffix = " %"})

SelectPlayer:Cheat("Label", "Adjust the prediction intensity to\nincrease autokill effectiveness")


SelectPlayer:Cheat("Dropdown", "Sword to Use", function(Option)
    
    
 if Option == "Autoselect Sword" then
     swordToUse = "Autoselect"
 elseif Option == "Barbarian Sword" then
     if game.Players.LocalPlayer.Backpack:FindFirstChild("Sword") then
      swordToUse = game.Players.LocalPlayer.Backpack["Sword"]
     elseif workPlr:FindFirstChild("Sword") then 
      swordToUse = workPlr["Sword"]
     else Notify("Autokill", "You do not have this sword!", 5)
     end 
 elseif Option == "Guard Sword" then
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Guard Sword") then
      swordToUse = game.Players.LocalPlayer.Backpack["Guard Sword"]
     elseif workPlr:FindFirstChild("Guard Sword") then 
      swordToUse = workPlr["Guard Sword"]
     else Notify("Autokill", "You do not have this sword!", 5)
     end
 elseif Option == "Best Sword" then
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Best Sword") then
      swordToUse = game.Players.LocalPlayer.Backpack["Best Sword"]
     elseif workPlr:FindFirstChild("Best Sword") then 
      swordToUse = workPlr["Best Sword"]
     else Notify("Autokill", "You do not have this sword!", 5)
     end
 elseif Option == "Good Sword" then
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Good Sword") then
      swordToUse = game.Players.LocalPlayer.Backpack["Good Sword"]
     elseif workPlr:FindFirstChild("Good Sword") then 
      swordToUse = workPlr["Good Sword"]
     else Notify("Autokill", "You do not have this sword!", 5)
     end
 elseif Option == "Basic Sword" then
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Basic Sword") then
      swordToUse = game.Players.LocalPlayer.Backpack["Basic Sword"]
     elseif workPlr:FindFirstChild("Basic Sword") then 
      swordToUse = workPlr["Basic Sword"]
     else Notify("Autokill", "You do not have this sword!", 5)
     end
    end
     
end, {
 options = {
  "Autoselect Sword",
     "Barbarian Sword",
     "Guard Sword",
     "Best Sword",
     "Good Sword",
     "Basic Sword"
 }
})



SelectPlayer:Cheat("Button", "", function()
 killPlayer(playerToKill, swordToUse)
end, "Kill Selected Player")


SelectPlayer:Cheat("Label", "")
SelectPlayer:Cheat("Label", "Kill all players in chosen team")


local teamToKill = ""
SelectPlayer:Cheat("Dropdown", "Select Team", function(Option)
    if Option == "Leader" then
        teamToKill = "Leader"
    elseif Option == "Council Member" then
        teamToKill = "Council Member"
    elseif Option == "Landlord" then
        teamToKill = "Landlord"
    elseif Option == "Guard" then
        teamToKill = "Guard"
    elseif Option == "Jester" then
        teamToKill = "Jester"
    elseif Option == "Janitor" then
        teamToKill = "Janitor"
    elseif Option == "Civilian" then
        teamToKill = "Civilian"
    elseif Option == "Peasant" then
        teamToKill = "Peasant"
    elseif Option == "Barbarian" then
        teamToKill = "Barbarian"
    elseif Option == "Criminal" then
        teamToKill = "Criminal"
    elseif Option == "Spectating" then
        teamToKill = "Spectating"
    elseif Option == "Doctor" then
        teamToKill = "Doctor"
    end
end, {
    options = {
        "Leader",
        "Council Member",
        "Landlord",
        "Guard",
        "Doctor",
        "Jester",
        "Janitor",
        "Civilian",
        "Peasant",
        "Barbarian",
        "Criminal",
        "Spectating"
    }
})

SelectPlayer:Cheat("Button", "", function()
    
    if teamToKill == nil or teamToKill == "Leader" or not teamToKill or teamToKill == "" then
        teamToKill = "Leader"
    end
    
    for i, playertarget in pairs(game.Players:GetPlayers()) do
        if game.Players:FindFirstChild(playertarget.Name) then
            if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then break end
            --[[if playertarget.Name ~= game.Players.LocalPlayer.Name and playertarget.Team.Name == teamToKill then
                killPlayer(playertarget.Name, swordToUse)
            end]]
            
            
            pcall(function()
                if playertarget.Name ~= game.Players.LocalPlayer.Name and playertarget.Team.Name == teamToKill then
                    killPlayer(playertarget.Name, swordToUse)
                    wait(0.5)
                end
            end)
        end
    end
end, "Kill All Players in Team")

SelectPlayer:Cheat("Label", "")

SelectPlayer:Cheat("Label", "")
SelectPlayer:Cheat("Label", "")
SelectPlayer:Cheat("Label", "")
SelectPlayer:Cheat("Label", "")
SelectPlayer:Cheat("Label", "")
SelectPlayer:Cheat("Label", "")
-- Scan for player Weapons

bruhMomento = nil

ScanWeapons:Cheat(
 "Checkbox", -- Type
 "Scan Enabled", -- Name
 function(scanEnabled) -- Callback function
     bruhMomento = scanEnabled
    if scanEnabled == true then
        getWeaponString()
        WeaponsGUI("Player Weapon Scan", finalStr)
    elseif scanEnabled == false then
        game.CoreGui.NotificationOof:Destroy()
    end
end)

ScanWeapons:Cheat("Button", "", function()
    if bruhMomento == true then
        game.CoreGui.NotificationOof:Destroy()
     getWeaponString()
        WeaponsGUI("Player Weapon Scan", finalStr)
    end
end, "Refresh Scan")

miscPlayer:Cheat("Textbox", "Select Player", function(selectedPlayerTextbox)
    
    selectedPlayer1 = GetPlayer(selectedPlayerTextbox)    
    end, {
 placeholder = "Enter Player Name"
})


--imhere
miscPlayer:Cheat("Button", "", function()
    
    isViewing = not isViewing
    if isViewing == true then
        game.Workspace.Camera.CameraSubject = selectedPlayer1.Character.Humanoid
    else
        game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
   end
    
end, "View / Unview")


miscPlayer:Cheat("Button", "", function()
    
    plr1 = game.Players.LocalPlayer.Character
    plr1.HumanoidRootPart.CFrame = CFrame.new(selectedPlayer1.Character.HumanoidRootPart.Position)
 
    
end, "Teleport to Player")

miscPlayer:Cheat("Label", "")

miscPlayer:Cheat("Button", "", function()
 game.Workspace.Gate.Door:Destroy()
 game.Workspace.Gate.Exit:Destroy()
end, "Remove Gate")

miscPlayer:Cheat("Button", "", function()
 game.Players.LocalPlayer.Character.Humanoid.Health = 0
 wait(0.01)
 
 game.ReplicatedStorage.RemoteEvent:FireServer("Respawn")
 wait(0.49)    
 game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
 
 noclip = false
 game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end, "Instant Respawn")

miscPlayer:Cheat("Button", "", function()
 game.Players.LocalPlayer.Character.Head.face:Destroy()
 
 local Player = game.Players.LocalPlayer

 for i,v in pairs(Player.Character:GetDescendants())do
   if v:IsA("BillboardGui") or v:IsA("SurfaceGui") then
    v:Destroy()
   end
 end
 
 for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
 if v:IsA("Hat") or v:IsA("Accessory") then
  v.Handle:Destroy()
 end
    end
end, "Hide Identity")

miscPlayer:Cheat(
 "Checkbox", -- Type
 "Kick on Mod Join", -- Name
 function(antiModToggle) -- Callback function
  if antiModToggle == true then
      game.Players.PlayerAdded:Connect(function(player)
        if player:GetRoleInGroup(5574524) == "trial mod." or player:GetRoleInGroup(5574524) == "mod." or player:GetRoleInGroup(5574524) == "admin." or player:GetRoleInGroup(5574524) == "hunger boi." then 
       game.Players.LocalPlayer:Kick("(Anti-mod) A moderator joined.")
        end
      end)
    
      for i,v in pairs(game.Players:GetPlayers()) do
       if v:GetRoleInGroup(5574524) == "trial mod." or v:GetRoleInGroup(5574524) == "mod." or v:GetRoleInGroup(5574524) == "admin." or v:GetRoleInGroup(5574524) == "hunger boi." then 
        game.Players.LocalPlayer:Kick("(Anti-mod) A moderator is here.")
       end
       end
     end
 end
)

miscPlayer:Cheat(
 "Checkbox", -- Type
 "Spam Sounds (may break game)", -- Name
 function(State) -- Callback function
     shouldSpamSounds = State
     while shouldSpamSounds == true do
      for i,v in pairs(game.Workspace:GetDescendants()) do
       if v:IsA("Sound") then
        v:Play()
       end
      end
      
      wait(0.75)
      State = false
     end
     shouldSpamSounds = State  
 end
)



--this isnt close to being finished lol




TPSector:Cheat("Dropdown", "Town Locations", function(Option)
 if Option == "Beach" then
     plr1 = game.Players.LocalPlayer.Character
    plr1.HumanoidRootPart.CFrame = CFrame.new(-182, -5, 455)
 elseif Option == "Council Area" then
     plr1 = game.Players.LocalPlayer.Character
    plr1.HumanoidRootPart.CFrame = CFrame.new(344, 51, 430)
 elseif Option == "Gate Scaffold" then
        plr1 = game.Players.LocalPlayer.Character
    plr1.HumanoidRootPart.CFrame = CFrame.new(17, 43, 261)
 elseif Option == "Leader Tower" then
       plr1 = game.Players.LocalPlayer.Character
    plr1.HumanoidRootPart.CFrame = CFrame.new(40, 42, 301)
 elseif Option == "Jail Gate" then
       plr1 = game.Players.LocalPlayer.Character
    plr1.HumanoidRootPart.CFrame = CFrame.new(190, 11, 300)
 elseif Option == "Rice Field" then
       plr1 = game.Players.LocalPlayer.Character
    plr1.HumanoidRootPart.CFrame = CFrame.new(15, 3, 160)
 elseif Option == "Town Plaza" then
          plr1 = game.Players.LocalPlayer.Character
   plr1.HumanoidRootPart.CFrame = CFrame.new(38, 23, 321)
    end
end, {
 options = {
  "Beach",
  "Council Area",
  "Gate Scaffold",
  "Leader Tower",
  "Jail Gate",
  "Rice Field",
  "Town Plaza"
 }
})

TPSector:Cheat("Dropdown", "Barbarian Locations", function(Option)
    if Option == "Barb Admissions" then
        plr1 = game.Players.LocalPlayer.Character
    plr1.HumanoidRootPart.CFrame = CFrame.new(25, 3, -903)
    elseif Option == "Barb Base" then
        plr1 = game.Players.LocalPlayer.Character
    plr1.HumanoidRootPart.CFrame = CFrame.new(-81, 29, -952)
    elseif Option == "Secret Barb Path" then
        plr1 = game.Players.LocalPlayer.Character
    plr1.HumanoidRootPart.CFrame = CFrame.new(539, -5, 246)
    
    end
end, {
options = {
 "Barb Admissions",
 "Barb Base",
 "Secret Barb Path"
}
})

TPSector:Cheat("Dropdown", "Misc Locations", function(Option)
if Option == "Server Portals" then
plr1 = game.Players.LocalPlayer.Character
    plr1.HumanoidRootPart.CFrame = CFrame.new(-354, 11, -201)
elseif Option == "Northern Wall" then
    plr1 = game.Players.LocalPlayer.Character
    plr1.HumanoidRootPart.CFrame = CFrame.new(64, 109, 1008)
elseif Option == "Karl's Karts" then
    plr1 = game.Players.LocalPlayer.Character
    plr1.HumanoidRootPart.CFrame = CFrame.new(346, 29, -143)
elseif Option == "Farm Karts" then
    plr1 = game.Players.LocalPlayer.Character
    plr1.HumanoidRootPart.CFrame = CFrame.new(294, 3, 129)
   end
end, {
options = {
 "Server Portals",
 "Northern Wall",
 "Karl's Karts",
 "Farm Karts"
}
})

-- Shops
ShopSector1:Cheat("Dropdown", "Axes", function(Option)
 if Option == "Basic Axe" then
     if game:GetService("Workspace").Stores.Axe.CustomerSeats["1"] then
     buyFromShop("AxeStore", "BasicAxe")
     
    end
 elseif Option == "Good Axe" then
     if game:GetService("Workspace").Stores.Axe.CustomerSeats["2"] then
     buyFromShop("AxeStore", "GoodAxe")
    end
 elseif Option == "Best Axe" then
     if game:GetService("Workspace").Stores.Axe.CustomerSeats["3"] then
     buyFromShop("AxeStore", "BestAxe")
    end
 end
end, {
 options = {
  "Basic Axe",
  "Good Axe",
  "Best Axe"
 }
})

ShopSector1:Cheat("Dropdown", "Sickles", function(Option)
 if Option == "Basic Sickle" then
     if game:GetService("Workspace").Stores.Sickle.CustomerSeats["1"] then
     buyFromShop("SickleStore", "BasicSickle")
    end
 elseif Option == "Good Sickle" then
     if game:GetService("Workspace").Stores.Sickle.CustomerSeats["2"] then
     buyFromShop("SickleStore", "GoodSickle")
    end
 elseif Option == "Best Sickle" then
 if game:GetService("Workspace").Stores.Sickle.CustomerSeats["3"] then
     buyFromShop("SickleStore", "BestSickle")
    end
 end
end, {
 options = {
  "Basic Sickle",
  "Good Sickle",
  "Best Sickle"
 }
})


ShopSector1:Cheat("Dropdown", "Hammers", function(Option)
 if Option == "Basic Hammer" then
     if game:GetService("Workspace").Stores.Hammer.CustomerSeats["1"] then
     buyFromShop("HammerStore", "BasicHammer")
    end
 elseif Option == "Good Hammer" then
     if game:GetService("Workspace").Stores.Hammer.CustomerSeats["2"] then
     buyFromShop("HammerStore", "GoodHammer")
    end
 elseif Option == "Best Hammer" then
 if game:GetService("Workspace").Stores.Hammer.CustomerSeats["3"] then
     buyFromShop("HammerStore", "BestHammer")
    end
 end
end, {
 options = {
  "Basic Hammer",
  "Good Hammer",
  "Best Hammer"
 }
})

ShopSector2:Cheat("Dropdown", "Swords", function(Option)
 if Option == "Basic Sword" then
     if game:GetService("Workspace").Stores.Sword.CustomerSeats["1"] then
     buyFromShop("SwordStore", "BasicSword")
    end
 elseif Option == "Good Sword" then
     if game:GetService("Workspace").Stores.Sword.CustomerSeats["2"] then
     buyFromShop("SwordStore", "GoodSword")
    end
 elseif Option == "Best Sword" then
 if game:GetService("Workspace").Stores.Sword.CustomerSeats["3"] then
     buyFromShop("SwordStore", "BestSword")
    end
 end
end, {
 options = {
  "Basic Sword",
  "Good Sword",
  "Best Sword"
 }
})

ShopSector2:Cheat("Dropdown", "Ranged Weapons", function(Option)
 if Option == "Musket" then
     if game:GetService("Workspace").Stores.Weapons.CustomerSeats["1"] then
     buyFromShop("WeaponStore","Musket")
    end
 elseif Option == "Gun" then
     if game:GetService("Workspace").Stores.Weapons.CustomerSeats["2"] then
     buyFromShop("WeaponStore","Gun")
    end
 elseif Option == "Rocket Launcher" then
 if game:GetService("Workspace").Stores.Weapons.CustomerSeats["3"] then
     buyFromShop("WeaponStore","Rocket")
    end
 end
end, {
 options = {
  "Musket",
  "Gun",
  "Rocket Launcher"
 }
})

ShopSector2:Cheat("Dropdown", "Food", function(Option)
 if Option == "Basic Food" then
     if game:GetService("Workspace").Stores.Food.CustomerSeats["1"] then
     buyFromShop("FoodStore", "BasicFood")
    end
 elseif Option == "Good Food" then
     if game:GetService("Workspace").Stores.Food.CustomerSeats["2"] then
     buyFromShop("FoodStore", "GoodFood")
    end
 elseif Option == "Best Food" then
 if game:GetService("Workspace").Stores.Food.CustomerSeats["3"] then
     buyFromShop("FoodStore", "BestFood")
    end
 end
end, {
 options = {
  "Basic Food",
  "Good Food",
  "Best Food"
 }
})

ShopSector2:Cheat("Dropdown", "Fishing Nets", function(Option)
 if Option == "Basic Net" then
     if game:GetService("Workspace").Stores.FishingNet.CustomerSeats["1"] then
     buyFromShop("FishingNet", "BasicNet")
    end
 elseif Option == "Good Net" then
     if game:GetService("Workspace").Stores.FishingNet.CustomerSeats["2"] then
     buyFromShop("FishingNet", "GoodNet")
    end
 elseif Option == "Best Net" then
 if game:GetService("Workspace").Stores.FishingNet.CustomerSeats["3"] then
     buyFromShop("FishingNet", "BestNet")
    end
 end
end, {
 options = {
  "Basic Net",
  "Good Net",
  "Best Net"
 }
})


ShopSector2:Cheat("Dropdown", "Doctor's Office", function(Option)
 if Option == "Heal" then
     if game:GetService("Workspace").Stores.Doctor.CustomerSeats["1"] then
     buyFromShop("DoctorsOffice", "Heal")
    end
 elseif Option == "Limbs" then
     if game:GetService("Workspace").Stores.Doctor.CustomerSeats["2"] then
     buyFromShop("DoctorsOffice", "Limbs")
    end
 elseif Option == "Wheelchair" then
 if game:GetService("Workspace").Stores.Doctor.CustomerSeats["3"] then
     buyFromShop("DoctorsOffice", "Wheelchair")
    end
 end
end, {
 options = {
  "Heal",
  "Limbs",
  "Wheelchair"
 }
})

ShopSector2:Cheat("Dropdown", "Kart Shops", function(Option)
 if Option == "Kart" then
     if game:GetService("Workspace").BarbarianVillage.Stores.Kart.CustomerSeat then
     buyFromShop("Kart", "RegularKart")
    end
 elseif Option == "Doublekart" then
     if game:GetService("Workspace").BarbarianVillage.Stores.Kart.CustomerSeat then
     buyFromShop("Kart", "DoubleKart")
    end
 elseif Option == "Farmkart" then
     if game:GetService("Workspace").BarbarianVillage.Stores.Kart.CustomerSeat then
     buyFromShop("Kart", "FarmKart")
    end
 elseif Option == "Racekart" then
     if game:GetService("Workspace").BarbarianVillage.Stores.Kart.CustomerSeat then
     buyFromShop("Kart", "RaceKart")
    end
 elseif Option == "Buskart" then
 if game:GetService("Workspace").BarbarianVillage.Stores.Kart.CustomerSeat then
     buyFromShop("Kart", "BusKart")
    end
 end
end, {
 options = {
  "Kart",
  "Doublekart",
  "Farmkart",
  "Racekart",
  "Buskart"
 }
})
ShopSector1:Cheat("Label", "\n\nLeader must have bought tool stores for them to work.")

-- Serverhopping

settin = nil

ServerHop:Cheat("Dropdown", "Serverhop Setting", function(Option)
    settin = Option
end, {
    options = {
        "Random Server",
        "Most Players",
        "Least Players",
        "Highest Leader Time"
        
    }
})

ServerHop:Cheat("Button", "", function()
    if settin == "Random Server" then
        ServerHopz("any")
        Notify("Serverhop", "Serverhopping to random server. Please wait...", 10)
    elseif settin == "Most Players" then
        ServerHopz("largest")
        Notify("Serverhop", "Serverhopping to largest server. Please wait...", 10)
    elseif settin == "Least Players" then
        ServerHopz("smallest")
        Notify("Serverhop", "Serverhopping to smallest server. Please wait...", 10)
    elseif settin  == "Highest Leader Time" then
        
        portal1 = tonumber(game.Workspace.ServerPortals["1"].BillboardGui.Frame.Days.Amount.Text)
        portal2 = tonumber(game.Workspace.ServerPortals["2"].BillboardGui.Frame.Days.Amount.Text)
        portal3 = tonumber(game.Workspace.ServerPortals["3"].BillboardGui.Frame.Days.Amount.Text)
        
        local values = {portal1, portal2, portal3}
        local highest = nil

        for _, value in pairs(values) do
         if not highest then
          highest = value
          continue
         end
         
         if value > highest then
          highest = value
         end
        end

        if highest == portal1 then
            plr1 = game.Players.LocalPlayer.Character
   plr1.HumanoidRootPart.CFrame = CFrame.new(-375.000122, 13.0600309, -255.998352)
   wait(6)
   Notify("Serverhop", "Serverhop failed. Please try a different setting or walk through a portal manually.", 10)
        elseif highest == portal2 then
            plr1 = game.Players.LocalPlayer.Character
   plr1.HumanoidRootPart.CFrame = CFrame.new(-370.000092, 13.06003, -232.338058)
   wait(6)
   Notify("Serverhop", "Serverhop failed. Please try a different setting or walk through a portal manually.", 10)
        elseif highest == portal3 then
            plr1 = game.Players.LocalPlayer.Character
   plr1.HumanoidRootPart.CFrame = CFrame.new(-370.000092, 13.06003, -279.65863)
   wait(6)
   Notify("Serverhop", "Serverhop failed. Please try a different setting or walk through a portal manually.", 10)
        end
    elseif settin == nil then
        ServerHopz("any")
        Notify("Serverhop", "Serverhopping to random server. Please wait...", 10)
    end
end, "Serverhop")

ServerHop:Cheat("Button", "", function()
    rejoining = true
    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players"))
 wait(3)
 rejoining = false
    
end, "Rejoin Server")

ServerHop:Cheat("Label", "")
ServerHop:Cheat("Label", "")

ServerHop:Cheat("Label", "GUI Toggle: Right Control")
MiscSector:Cheat("Label", "")
--[[ServerHop:Cheat("Label", "\n\nHave problems? Want updates? Join the Discord!\n\ndiscord.gg/BgaWVXUduZ")
ServerHop:Cheat("Button", "Discord", function()
    setclipboard("discord.gg/BgaWVXUduZ")
end, "Copy Discord Invite")

DiscordSector:Cheat("Label", "")]]

--AutofarmCategory stuff

Autofarm1:Cheat(
 "Checkbox", -- Type
 "Enabled", -- Name
 
 function(autofarmEnabled) -- Callback function EZWAYTO
    
     bla = autofarmEnabled
     
     
     autofarmEnabled = autofarmEnabled
     if autofarmEnabled == true then
        
      if game.Players.LocalPlayer.leaderstats.Money.Value < 100 then
          
          Notify("Autofarm", "You need at least $100 starting cash for this!", 5)
      else
          game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart", 31)
                setUpCarAutofarm(bla)
         
          
          if finishedSetUp == true then
                   
                    repeat
                        canRunFarm()
                        if notSeated == false and isDead == false and kartExists == true then
                            
                            carAutofarm(farmTime)
                            if game.Players.LocalPlayer.Team == game:GetService("Teams").Leader or game.Players.LocalPlayer.Team == game.Teams["Council Member"] then
                                AutoVote("Vehicle")
                            end
                        elseif isDead == true then 
                            finishedSetUp = false
                                repeat 
                                  
                                    wait(2) 
                                    game.ReplicatedStorage.RemoteEvent:FireServer("Respawn")
                                until game.Players.LocalPlayer.Character.Humanoid.Health > 0
                        
                        --[[elseif floodActive == true then
                            
                          --placeholder]]
                            
                        elseif notSeated == true then
                          
                            finishedSetUp = false        
                            repeat 
                               
                                
                                wait(0.4)
                                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart", 31)
                                setUpCarAutofarm(true)
                                wait(0.4)
                            until game.Players.LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Seated
                        
                        elseif kartExists == false then
                            finishedSetUp = false
                        
                        end
                        
                        
                        
                        
                        
                        if finishedSetUp == false then
                            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart", 31)
                            setUpCarAutofarm(bla)
                            wait(0.5)
                        end
                        wait()
                    until autofarmEnabled == false or bla == false
                    
                else
                   
                    Notify("Autofarm", "Autofarm setup failed, please try again.", 5)
                
          end
         
      end
       
     elseif autofarmEnabled == false and finishedSetUp == true then 
           
            finishedSetUp = false
            
        end
    
end
  
  
 
)




farmtime = 9.6
Autofarm1:Cheat("Slider", "Autofarm Speed", function(laTime)
 farmTime = 1 / laTime
end, {min = 3.2, max = 16, suffix = " nodes / sec"})

Autofarm1:Cheat("Label", "Recommended Autofarm Speed: 9.4 - 9.8")
Autofarm2:Cheat("Label", "")
Autofarm2:Cheat("Label", "The autofarm is ping-dependent, so speeds above 9\nmay not register for some users.\n\nPlay around with the speed\nto see what works best.")

Autofarm2:Cheat("Label", "")
Autofarm2:Cheat("Label", "\n\n\nHighly recommended to use on VIP servers.\nVIP servers are FREE.")
Autofarm2:Cheat("Label", "")
--[[Autofarm2:Cheat("Label", "\n\n\n\nJoin the Discord!")

Autofarm2:Cheat("Button", "", function()
    setclipboard("discord.gg/BgaWVXUduZ")
end, "Copy Discord Invite")
]]

AutoVoteSector:Cheat(
 "Checkbox", -- Type
 "Enabled", -- Name
 function(autoVoteEnabled) -- Callback function
     isAutoVoteOn = autoVoteEnabled
     
     if bla == true then
         Notify("Autovote", "You already enabled Autofarm!\n(Autovote is automatically enabled\nwhen you enable Autofarm", 7)
    else
     if game.Players.LocalPlayer.Team == game:GetService("Teams").Leader or game.Players.LocalPlayer.Team == game.Teams["Council Member"] then
         
         repeat
             
             AutoVote("Humanoid")
         
             wait()
         until isAutoVoteOn ~= true
         
     else
         Notify("Auto-Vote", "You must be a Leader or Council Member for this!", 5)
     end
     end
     
end)
AutoVoteSector:Cheat("Label", "")
AutoVoteSector:Cheat("Label", "Law Settings")

AutoVoteSector:Cheat("Checkbox", "Guards pay taxes", function(guardTax) guardTax1 = guardTax end)
AutoVoteSector:Cheat("Checkbox", "Peasants allowed in town", function(peasantsAllowed) peasantsAllowed1 = peasantsAllowed end)
AutoVoteSector:Cheat("Checkbox", "Violence is allowed", function(violenceAllowed) violenceAllowed1 = violenceAllowed end)
AutoVoteSector:Cheat("Checkbox", "Rioting is allowed", function(riotingAllowed) riotingAllowed1 = riotingAllowed end)
AutoVoteSector:Cheat("Checkbox", "Only guards can purchase weapons", function(guardsCanPurchaseWeapons) guardsCanPurchaseWeapons1 = guardsCanPurchaseWeapons end)
AutoVoteSector:Cheat("Checkbox", "Council Members can be arrested", function(councilCanBeArrested) councilCanBeArrested1 = councilCanBeArrested end)
AutoVoteSector:Cheat("Checkbox", "Council Members pay taxes", function(councilPaysTax) councilPaysTax1 = councilPaysTax end)
AutoVoteSector:Cheat("Checkbox", "Doctors pay taxes", function(doctorsPayTax) doctorsPayTax1 = doctorsPayTax end)
AutoVoteSector:Cheat("Checkbox", "Healthcare is free", function(healthcareFree) healthcareFree1 = healthcareFree end)
AutoVoteSector:Cheat("Checkbox", "Guards can vote (1/2 power)", function(guardsCanVote) guardsCanVote1 = guardsCanVote end)
AutoVoteSector:Cheat("Checkbox", "Jail times are long", function(jailTimesLong) jailTimesLong1 = jailTimesLong end)

AutoArrestSector1:Cheat(
 "Checkbox", -- Type
 "Enabled", -- Name
 function(autoArrestEnabled) -- Callback function
     bla1 = autoArrestEnabled
     workPlr = workspace[game.Players.LocalPlayer.Name]
        plr1 = game.Players.LocalPlayer.Character
       
    if bla1 == true and game.Players.LocalPlayer.Team == game:GetService("Teams").Guard then
        repeat
        arrestablePlayersExist = false
      
     for poop, sock in pairs(game.Players:GetChildren()) do
            
            
            
            if sock.stats:FindFirstChild("Arrestable") and bla1 ~= false then
              
                if sock.stats.Arrestable.Value == true then
                    
                     arrestablePlayersExist = true
                     hasJustRan = true
                     
                   
                        --[[Clip = false
                        if Noclipping then
                            Noclipping:Disconnect()
                        end
                        noclip()]]
                        
                        
                        
                        
                        
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Handcuffs") then
                      handcuffs = game.Players.LocalPlayer.Backpack["Handcuffs"]
                     elseif workPlr:FindFirstChild("Handcuffs") then 
                      handcuffs = workPlr["Handcuffs"]
                     end
                     repeat
                     sock.Character.HumanoidRootPart.CanCollide = false
                     sock.Character.HumanoidRootPart.Size = Vector3.new(4000, 4000, 4000)
                     
                    
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(handcuffs)
                     
               
                       
              
        
              
               
                        handcuffs:Activate()
                        wait()
                        
                     until sock.stats.Arrestable.Value == false or game.Players.LocalPlayer.Character.Humanoid.Health == 0 or bla1 == false
                     
                        sock.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                        sock.Character.HumanoidRootPart.CanCollide = true
                     
                end
            end
        end
    
        if arrestablePlayersExist == false then
        
            
           
            if hasJustRan == true then
                hasJustRan = false
                wait(0.1)
                --game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(currentPos.x, currentPos.y + 16, currentPos.z) * CFrame.Angles(0,0,0)
                
                
               
                wait(1)
            end
        end
        
        wait()
      
        until bla1 == false or game.Players.LocalPlayer.Character.Humanoid.Health == 0
        
        Clip = true
        if Noclipping then
         Noclipping:Disconnect()
        end
        elseif bla1 == true and game.Players.LocalPlayer.Team ~= game:GetService("Teams").Guard then
            Notify("Auto Arrest", "You must be guard for this!", 5)
            
           
        elseif
            bla1 == false then
                
                end
        
      
     
     
end)
-- Credits category
DiscordCredits:Cheat("Label", "\nBugs? Issues? Want to see the changelog?\nWant to contact me? Add me on Discord!\nBoardbot#7385")
DiscordCredits:Cheat("Label", "")
--[[DiscordCredits:Cheat("Button", "", function()
    setclipboard("discord.gg/BgaWVXUduZ")
end, "Copy Discord Invite")
]]
CreditsCredits:Cheat("Label", "Everything in this menu is\ncreated by Boardbot")
CreditsCredits:Cheat("Label", "")
CreditsCredits:Cheat("Label", "Contact me on Discord: Boardbot#7385")






game.Workspace.CouncilHouse.COUNCILONLY:Destroy()
game.Workspace.LeaderTower.LEADERONLY:Destroy()
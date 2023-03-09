local TravelSpeed = 20 -- going too fast might get you kicked
local ToggleFuelKey = Enum.KeyCode.P
local ToggleCleanKey = Enum.KeyCode.M
local ToggleCashierKey = Enum.KeyCode.L
local MoneySource = "Station" -- Choose "Station" or "Client" ( auto refuel will use this to buy gas )

--[[

   Gas Station Simulator Autofarm ( Does not have restocking autofarm )

   Made by TheSynapseGuy on V3rm ( SomethingElse#0024 on discord )
   Last tested for V1.0.2c

   Default kebyinds
   P - Auto refuel
   L - Auto cashier
   M - Auto clean

   Not recommended to use in public servers with a main account
]]








-- Ignore everything below here
local GasEnabled = false
local CleaningEnabled = false
local CashierEnabled = false
local ReplicatedStorage = game:GetService("ReplicatedStorage"); local Players = game:GetService("Players"); local LocalPlayer = Players.LocalPlayer; local RunService = game:GetService("RunService")
local ActionRemote = ReplicatedStorage:WaitForChild("Remote")
local PumpsFolder = workspace:WaitForChild("Pumps")
local StatsHolder = require(ReplicatedStorage:WaitForChild("StatHolder"))
local InputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local function GetPlayerCharacter() return LocalPlayer.Character or LocalPlayer.CharacterAdded:wait(); end
local function GetStoreGasoline() return PumpsFolder:GetAttribute("Gasoline"); end
local function BuyFuel() ActionRemote:FireServer("BuyItem","Syntin Petrol Co","Gasoline 87", 1,MoneySource); end
local function GetPlayerStamina() return LocalPlayer:GetAttribute("Stamina"); end

if _G.dAAcG3fvBqVoPzVnAFk == nil then _G.dAAcG3fvBqVoPzVnAFk = "" end function notify(a,b,c)local d=c or function()return end;local e=b or false;if a==_G.dAAcG3fvBqVoPzVnAFk and e==false then return end;spawn(function()for f,g in pairs(game.CoreGui:GetChildren())do spawn(function()if g.Name=="MNotify"then pcall(function()g.ImageButton.ZIndex=58;g.ImageButton.TextLabel.ZIndex=59;g.ImageButton:TweenPosition(UDim2.new(0.01,0,1,0),"Out","Quint",.7,true)game:GetService("TweenService"):Create(g.ImageButton.TextLabel,TweenInfo.new(0.8,Enum.EasingStyle.Quint,Enum.EasingDirection.Out,0,false,0),{TextTransparency=1})wait(1)g:Destroy()end)end end)end;_G.dAAcG3fvBqVoPzVnAFk=a;local d=c or function()return end;local function h(i,j)local k=Instance.new(i)for f,g in pairs(j)do k[f]=g end;return k end;local l=h('ScreenGui',{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name='MNotify',Parent=game.CoreGui})local m=h('ImageButton',{Image='rbxassetid://1051186612',ImageColor3=Color3.new(0.129412,0.129412,0.129412),ImageRectOffset=Vector2.new(0,0),ImageRectSize=Vector2.new(0,0),ImageTransparency=0,ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(20,20,20,20),AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882,0.164706,0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.00999999978,0,1,0),Rotation=0,Selectable=true,Size=UDim2.new(0,234,0,40),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=60,Name='ImageButton',Parent=l})local n=h('TextLabel',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size24,Text=a,TextColor3=Color3.new(0.807843,0.807843,0.807843),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882,0.164706,0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.132478639,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,174,0,40),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=61,Name='TextLabel',Parent=m})local o=h('UIListLayout',{Padding=UDim.new(0,0),FillDirection=Enum.FillDirection.Vertical,HorizontalAlignment=Enum.HorizontalAlignment.Center,SortOrder=Enum.SortOrder.Name,VerticalAlignment=Enum.VerticalAlignment.Top,Name='UIListLayout',Parent=m})local p=1;if string.len(a)<=49 then m.Size=UDim2.new(0,game:GetService("TextService"):GetTextSize(a,24,Enum.Font.SourceSansLight,Vector2.new(500,900)).X+57,0,40)elseif string.len(a)>49 then p=math.ceil(string.len(string.sub(a,49))/9)m.Size=UDim2.new(0,game:GetService("TextService"):GetTextSize(a,24,Enum.Font.SourceSansLight,Vector2.new(500+p*100,900)).X+57,0,40)end;m:TweenPosition(UDim2.new(0.01,0,1,-60),"Out","Quint",.7,true)spawn(function()wait(6.7)pcall(function()m.ZIndex=58;n.ZIndex=59;m:TweenPosition(UDim2.new(0.01,0,1,0),"Out","Quint",.7,true)_G.dAAcG3fvBqVoPzVnAFk=""wait(1)l:Destroy()end)end)m.MouseButton1Up:Connect(function()if c==nil then return end;spawn(function()pcall(function()m.ZIndex=58;n.ZIndex=59;m:TweenPosition(UDim2.new(0.01,0,1,0),"Out","Quint",.7,true)_G.dAAcG3fvBqVoPzVnAFk=""wait(1)l:Destroy()end)end)d()end)end)end
function roundNumber(num, numDecimalPlaces) -- https://devforum.roblox.com/t/rounding-to-1-decimal-point/673504
 return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
end

local function TravelToCFrame(TargetCFrame : CFrame)
   local PlayerCharacter = GetPlayerCharacter()
   if PlayerCharacter then
       local DistanceBetweenPoints = ( PlayerCharacter.HumanoidRootPart.Position - TargetCFrame.Position ).Magnitude
       local TimeNeeded = roundNumber(DistanceBetweenPoints / TravelSpeed, 3)
       local Tween = TweenService:Create(
           PlayerCharacter.HumanoidRootPart,
           TweenInfo.new(
               TimeNeeded,
               Enum.EasingStyle.Linear,
               Enum.EasingDirection.Out
           ),
           {
               CFrame = TargetCFrame
           }
       )
       Tween:Play()
       task.wait(TimeNeeded)
   end
end

local function RestoreEnergy(MinimumEnergy : IntValue)
   notify("Resting",true)
   local PlayerCharacter = GetPlayerCharacter()
   local PreviousCFrame = PlayerCharacter.HumanoidRootPart.CFrame
   TravelToCFrame(workspace.Ceilings.Sofa.Seat.CFrame)
   task.wait(2)
   while true do
       if GetPlayerStamina() >= MinimumEnergy then
           break
       end
       task.wait(0.5)
   end
   PlayerCharacter.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
   TravelToCFrame(PreviousCFrame)
end

local function FindPumpToCar(CarModel : Instance)
   local CarPosition = CarModel.PrimaryPart.Position
   local Pump
   local PumpDistance = 999
   for _,v in pairs(PumpsFolder:GetChildren()) do
       local DistanceBetweenPump = (CarPosition - v.Screen.Position).Magnitude
       if DistanceBetweenPump < PumpDistance then
           Pump = v
           PumpDistance = DistanceBetweenPump
       end
   end
   return Pump
end

local function DoesPumpNeedToBeTakenOut(CarModel : Instance)
   if CarModel:FindFirstChild("Lid") then
       if CarModel.Lid:FindFirstChild("FinishFuel") then
           return true
       end
   end
   return false
end

local function RefuelCar(CarModel : Instance)
   local CarPump = FindPumpToCar(CarModel)
   if DoesPumpNeedToBeTakenOut(CarModel) then
       TravelToCFrame(CarModel.Lid.CFrame)
       ActionRemote:FireServer("FinishFuel", CarModel, CarPump)
       return
   end
   if CarModel:GetAttribute("IsRefueld") or CarModel:GetAttribute("IsRefilling") then return end
   local RequiredFuel = CarModel:GetAttribute("RequiredFuel")
   local TotalAttempts = 0
   while true do
       TotalAttempts += 1
       local StoreFuel = GetStoreGasoline()
       if StoreFuel >= RequiredFuel then
           break
       end
       notify("Attempting to buy 15L of fuel",true)
       BuyFuel()
       task.wait(1)
       if TotalAttempts > 10 then
           break
       end
   end

   if GetPlayerStamina() < 5 then
       RestoreEnergy(95)
   end
   if CarModel.Lid:FindFirstChild("Refuel") then
       TravelToCFrame(CarModel.Lid.CFrame)
       notify("Refilling "..CarModel.Name,true)
       ActionRemote:FireServer("FuelCustomer", CarModel, CarPump)
       task.wait(4)
   end
end
local PreviousItem
local function ScanItem(Item : Instance, CashierModel : Instance)
   if GetPlayerStamina() < 5 then
       RestoreEnergy(95)
   end
   if Item ~= PreviousItem then
       local DistanceFromItem = ( Item.Root.Position - GetPlayerCharacter().HumanoidRootPart.Position ).Magnitude
       if DistanceFromItem > 10 then
           notify("Too far away from cash register",true)
           TravelToCFrame(CFrame.new(1.46752572, 3, -6.53523779, 0.726744831, -4.74023416e-08, 0.68690753, 9.53963948e-08, 1, -3.19205924e-08, -0.68690753, 8.87266296e-08, 0.726744831))
       end
       if Item.Root:FindFirstChild("Scan") then
           if Item.Root:FindFirstChild("Scan").Enabled then
               if not CashierModel:GetAttribute("InUse") then
                   notify("Scanning "..Item.Name,true)
                   ActionRemote:FireServer("ScanItem",Item,CashierModel)
                   Item.Root:FindFirstChild("Scan").Enabled = false
                   PreviousItem = Item
                   task.wait(3)
               end
           end
       end
   end
end
InputService.InputBegan:Connect(function(input, gameProcessedEvent)
   if not gameProcessedEvent then
       if input.KeyCode == ToggleFuelKey then
           GasEnabled = not GasEnabled
           notify("Fuel enabled: "..tostring(GasEnabled),true)
       end
       if input.KeyCode == ToggleCashierKey then
           CashierEnabled = not CashierEnabled
           notify("Cashier enabled: "..tostring(CashierEnabled),true)
       end
       if input.KeyCode == ToggleCleanKey then
           CleaningEnabled = not CleaningEnabled
           notify("Cleaning enabled: "..tostring(CleaningEnabled),true)
       end
   end
end)

while true do
   task.wait(0.1)
   if GasEnabled then
       pcall(function()
           for _,v in pairs(workspace:GetChildren()) do
               if v.Name:sub(1,4) == "Car_" then
                   RefuelCar(v)
                   task.wait(1)
               end
           end
       end)
   end
   if CashierEnabled then
       pcall(function()
           for _,v in pairs(workspace.Checkouts:GetChildren()) do
               for _,h in pairs(v.Items:GetChildren()) do
                   ScanItem(h,v)
               end
           end
       end)
   end
   if CleaningEnabled then
       pcall(function()
           if GetPlayerStamina() < 5 then
               RestoreEnergy(95)
           end
           for _,v in pairs(workspace.Windows:GetChildren()) do
               if v:FindFirstChild("Attachment") then
                   if v.Attachment.Clean.Enabled then
                       notify("Cleaning window",true)
                       TravelToCFrame(v.CFrame)
                       ActionRemote:FireServer("Clean",v.Attachment.Clean)
                       task.wait(2.5)
                   end
               end
           end
           for _,v in pairs(workspace:GetChildren()) do
               if v.Name == "Spot" then
                   notify("Cleaning spill")
                   TravelToCFrame(v.CFrame + Vector3.new(0,3,0))
                   ActionRemote:FireServer("Clean",v.Clean)
               end
           end
       end)
   end
end
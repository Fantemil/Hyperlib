if not _G.AlreadyExecuted then
   local Index; Index = hookmetamethod(game, "__index", newcclosure(function(self, index)
       if tostring(self) == "Humanoid" then
           if index == "WalkSpeed" then
               return 16
           elseif index == "JumpPower" then
               return 50
           elseif index == "UseJumpPower" then
               return false
           end
       end
       return Index(self, index)
   end))
   
   local Player = game:GetService("Players").LocalPlayer
   local RS = game:GetService("RunService")

   local Module = require(game:GetService("ReplicatedStorage").LoadModule)
   local Constants = Module("Constants")
   local ChunkUtil = Module("ChunkUtil")
   local GetSellArea = Module("GetSellTeleport")
   local Network = Module("Network")
   
   local MaxDistance = Constants.MaxSelectionDistance
   local RebirthBaseCost = Constants.RebirthBaseCost

   local MineBlock = game:GetService("ReplicatedStorage").Events.MineBlock
   local GetData = game:GetService("ReplicatedStorage").Functions.GetData

   local Repository = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'
   local Library = loadstring(game:HttpGet(Repository .. 'Library.lua'))()
   local ThemeManager = loadstring(game:HttpGet(Repository .. 'addons/ThemeManager.lua'))()
   local SaveManager = loadstring(game:HttpGet(Repository .. 'addons/SaveManager.lua'))()

   local Window = Library:CreateWindow({
       Title = "Magnet's Mining Simulator 2 GUI | Press Right CTRL to toggle UI",
       Center = true,
       AutoShow = true
   })
   local Main = Window:AddTab("Main")
   local Settings = Window:AddTab("UI Settings")
   local LGB = Main:AddLeftGroupbox("AutoFarm")
   local RGB = Main:AddRightGroupbox("Misc")
   
   LGB:AddToggle("AutoFarm", {
       Text = "Toggle AutoFarm",
       Default = false,
       Tooltip = "Toggles whether the script will automatically mine the block under you"
   })
   LGB:AddToggle("AutoSell", {
       Text = "Toggle AutoSell",
       Default = false,
       Tooltip = "Toggles whether the script will automatically sell your mined blocks"
   })
   LGB:AddToggle("AutoRebirth", {
       Text = "Toggle AutoRebirth",
       Default = false,
       Tooltip = "Toggles whether the script will automatically rebirth when you have enough coins"
   })
   RGB:AddSlider("WalkSpeed", {
       Text = "WalkSpeed",
       Default = 16,
       Min = 0,
       Max = 28,
       Rounding = 1
   })
   RGB:AddSlider("JumpPower", {
       Text = "JumpPower",
       Default = 50,
       Min = 0,
       Max = 150,
       Rounding = 1
   })

   Toggles["AutoFarm"]:OnChanged(function()
       _G.AutoFarm = Toggles["AutoFarm"].Value
   end)
   Toggles["AutoSell"]:OnChanged(function()
       _G.AutoSell = Toggles["AutoSell"].Value
   end)
   Toggles["AutoRebirth"]:OnChanged(function()
       _G.AutoRebirth = Toggles["AutoSell"].Value
   end)
   Options["WalkSpeed"]:OnChanged(function()
       _G.WalkSpeed = Options["WalkSpeed"].Value
   end)
   Options["JumpPower"]:OnChanged(function()
       _G.JumpPower = Options["JumpPower"].Value
   end)

   local CheckSell = function()
       local Storage = Player.PlayerGui.ScreenGui.HUD.Left.Backpack.Label
       local Blocks = Storage.Text:split(" / ")[1]
       local Limit = Storage.Text:split(" / ")[2]

       if Blocks == Limit and _G.AutoSell then
           local SellArea = GetSellArea(Player)

           Network:FireServer("Teleport", SellArea)
       end
   end
   
   local CheckRebirth = function()
       local Data = GetData:InvokeServer()
       local Coins = Player.leaderstats.Coins.Value
       local Needed = math.floor(RebirthBaseCost * (Data["Rebirths"] + 1))
       
       if Coins >= Needed and _G.AutoRebirth then
           Network:FireServer("Rebirth")
       end
   end

   RS.Stepped:Connect(function()
       pcall(function()
           if _G.AutoFarm then
               local RootPosition = Player.Character.HumanoidRootPart.Position

               local RayParams = RaycastParams.new()
               RayParams.CollisionGroup = Constants.CollisionGroups.MineRaycast

               local Part = workspace:Raycast(RootPosition, Vector3.new(0, -(MaxDistance), 0), RayParams)
               local Position = Part.Position - Part.Normal

               local Cell = ChunkUtil.worldToCell(Position)

               Network:FireServer("MineBlock", Cell)
               CheckSell()
               CheckRebirth()
           end
           
           for _, Connection in next, getconnections(Player.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed")) do
               Connection:Disable()
           end
           for _, Connection in next, getconnections(Player.Character.Humanoid:GetPropertyChangedSignal("JumpPower")) do
               Connection:Disable()
           end
           for _, Connection in next, getconnections(Player.Character.Humanoid:GetPropertyChangedSignal("UseJumpPower")) do
               Connection:Disable()
           end
           
           Player.Character.Humanoid.WalkSpeed = _G.WalkSpeed
           Player.Character.Humanoid.JumpPower = _G.JumpPower
           Player.Character.Humanoid.UseJumpPower = true
       end)
   end)

   Library.ToggleKeybind = Options.MenuKeybind
   ThemeManager:SetLibrary(Library)
   SaveManager:SetLibrary(Library)
   SaveManager:IgnoreThemeSettings()
   SaveManager:SetIgnoreIndexes({'MenuKeybind'})
   ThemeManager:SetFolder('MiningSim2')
   SaveManager:SetFolder('MiningSim2/Settings')
   SaveManager:BuildConfigSection(Settings)
   ThemeManager:ApplyToTab(Settings)

   _G.AlreadyExecuted = true
end
local s,e = pcall(function()
 loadstring(game:HttpGet("https://pastebin.com/raw/t2eBeVPb"))()
end)
if s then    
if game.CoreGui:FindFirstChild("Universal Murder Mystery v("..getgenv().Script_Version..")") then
 game.CoreGui["Universal Murder Mystery v("..getgenv().Script_Version..")"]:Destroy()
elseif game.CoreGui:FindFirstChild("LoaderGUI") then
 game.CoreGui.LoaderGUI:Destroy()
 if game.CoreGui:FindFirstChild("Universal Murder Mystery v("..getgenv().Script_Version..")") then
  game.CoreGui["Universal Murder Mystery v("..getgenv().Script_Version..")"]:Destroy()
 end
end
end
local LoaderGUI = Instance.new("ScreenGui")
local LoaderFrame = Instance.new("Frame")
local LoadingBarBackground = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local LoadingBar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local LoaderDisplay = Instance.new("TextLabel")
LoaderGUI.Name = "LoaderGUI"
LoaderGUI.Parent = game.CoreGui
LoaderGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

LoaderFrame.Name = "LoaderFrame"
LoaderFrame.Parent = LoaderGUI
LoaderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
LoaderFrame.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
LoaderFrame.BackgroundTransparency = 0.075
LoaderFrame.BorderColor3 = Color3.fromRGB(255, 255, 255)
LoaderFrame.Position = UDim2.new(0.5, 0, 0.499569058, 0)
LoaderFrame.Size = UDim2.new(0, 297, 0, 168)

LoadingBarBackground.Name = "LoadingBarBackground"
LoadingBarBackground.Parent = LoaderFrame
LoadingBarBackground.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadingBarBackground.BackgroundTransparency = 0.800
LoadingBarBackground.BorderSizePixel = 0
LoadingBarBackground.ClipsDescendants = true
LoadingBarBackground.Position = UDim2.new(0.0195974223, 0, 0.109371461, 0)
LoadingBarBackground.Size = UDim2.new(0, 285, 0, 12)

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = LoadingBarBackground

LoadingBar.Name = "LoadingBar"
LoadingBar.Parent = LoadingBarBackground
LoadingBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadingBar.BackgroundTransparency = 0.500
LoadingBar.BorderSizePixel = 0
LoadingBar.Size = UDim2.new(0, 0, 0, 12)

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = LoadingBar

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(19, 11, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(14, 90, 255))}
UIGradient.Parent = LoadingBar

LoaderDisplay.Name = "LoaderDisplay"
LoaderDisplay.Parent = LoaderFrame
LoaderDisplay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoaderDisplay.BackgroundTransparency = 1.000
LoaderDisplay.Position = UDim2.new(0.160550416, 0, 0.105938233, 0)
LoaderDisplay.Size = UDim2.new(0, 200, 0, 10)
LoaderDisplay.Font = Enum.Font.SourceSansBold
LoaderDisplay.Text = "Loading..."
LoaderDisplay.TextColor3 = Color3.fromRGB(255, 255, 255)
LoaderDisplay.TextSize = 15.000
LoaderDisplay.TextStrokeTransparency = 0.830
LoaderDisplay.TextWrapped = true
local UpdateNotesScreenGui = Instance.new("ScreenGui")
local UpdateNotesGUI = Instance.new("Frame")
local UpdateNotesUICorner = Instance.new("UICorner")
local UpdateNotesClose = Instance.new("ImageButton")
local UpdateNotesTitle = Instance.new("TextLabel")
local ReleaseNotesMessage = Instance.new("TextLabel")

UpdateNotesScreenGui.Name = "UpdateNotes"
UpdateNotesScreenGui.Parent = game.CoreGui
UpdateNotesScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

UpdateNotesGUI.Name = "UpdateNotesGUI"
UpdateNotesGUI.Parent = UpdateNotesScreenGui
UpdateNotesGUI.AnchorPoint = Vector2.new(0.5, 0.5)
UpdateNotesGUI.BackgroundColor3 = Color3.fromRGB(31, 31, 35)
UpdateNotesGUI.BorderSizePixel = 0
UpdateNotesGUI.Position = UDim2.new(0.49960506, 0, 0.499743313, 0)
UpdateNotesGUI.Size = UDim2.new(0, 773, 0, 486)
UpdateNotesGUI.Visible = false

UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = UpdateNotesGUI

UpdateNotesClose.Name = "close"
UpdateNotesClose.Parent = UpdateNotesGUI
UpdateNotesClose.BackgroundTransparency = 1.000
UpdateNotesClose.Position = UDim2.new(0.966936588, 0, -0.00205761311, 0)
UpdateNotesClose.Size = UDim2.new(0, 25, 0, 25)
UpdateNotesClose.ZIndex = 2
UpdateNotesClose.Image = "rbxassetid://3926305904"
UpdateNotesClose.ImageRectOffset = Vector2.new(284, 4)
UpdateNotesClose.ImageRectSize = Vector2.new(24, 24)

UpdateNotesTitle.Name = "Title"
UpdateNotesTitle.Parent = UpdateNotesGUI
UpdateNotesTitle.AnchorPoint = Vector2.new(0.5, 0)
UpdateNotesTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UpdateNotesTitle.BackgroundTransparency = 1.000
UpdateNotesTitle.Position = UDim2.new(0.5, 0, 0, 0)
UpdateNotesTitle.Size = UDim2.new(0, 203, 0, 25)
UpdateNotesTitle.Font = Enum.Font.SourceSansBold
UpdateNotesTitle.Text = "Version 1.0.0 release notes"
UpdateNotesTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
UpdateNotesTitle.TextSize = 16.000
UpdateNotesTitle.TextWrapped = true

ReleaseNotesMessage.Name = "ReleaseNotesMessage"
ReleaseNotesMessage.Parent = UpdateNotesGUI
ReleaseNotesMessage.AnchorPoint = Vector2.new(0.5, 0)
ReleaseNotesMessage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ReleaseNotesMessage.BackgroundTransparency = 1.000
ReleaseNotesMessage.Position = UDim2.new(0.499639064, 0, 0.0497530699, 0)
ReleaseNotesMessage.Size = UDim2.new(0, 762, 0, 461)
ReleaseNotesMessage.Font = Enum.Font.SourceSansBold
ReleaseNotesMessage.Text = ""
ReleaseNotesMessage.TextColor3 = Color3.fromRGB(255, 255, 255)
ReleaseNotesMessage.TextSize = 17.000
ReleaseNotesMessage.TextStrokeTransparency = 0.520
ReleaseNotesMessage.TextWrapped = true
ReleaseNotesMessage.TextXAlignment = Enum.TextXAlignment.Left
ReleaseNotesMessage.TextYAlignment = Enum.TextYAlignment.Top
local function VMQU_fake_script()
 local script = Instance.new('LocalScript', LoaderFrame)

 local display = script.Parent.LoaderDisplay
 local LOADER_TABLE = {}
 wait()
 function findplace(list,ValueToFind)
  for i,v in pairs(list) do
   if v == ValueToFind then
    return i
   end
  end
 end
 LOADER_TABLE['1'] = {Text="Initializing Setup";
  Init_Function = function()
   if game:GetService("RunService"):IsStudio() then return {true,"Preliminary Checks Complete"} else 
    if game:GetService("RunService") and game and game:IsLoaded() and game.Lighting and game.CoreGui:FindFirstChild("LoaderGUI") and #game.CoreGui.LoaderGUI:GetDescendants() >=7 then
     wait()
     return {true,"Preliminary Checks Complete"}
    else
     return {false,"Mandatory Checks Failed"}
    end
   end
  end;
 }
 LOADER_TABLE['6'] = {Text="Checking Game";
  Init_Function = function()
   if game:GetService("RunService"):IsStudio() then return {true,"Game Supported"} else 
    if game.Name and game.Name:lower():find("mm") or game.Name:lower():find("murder mystery") or game.Name:lower():find("murder") or game.Name:lower():find("mystery") then
     wait()
     return {true,"Game Supported"}
    else
     return {false,"Game Possibly Not Supported"}
    end
   end
  end;
 }
 LOADER_TABLE['13'] = {Text="Checking Version";
  Init_Function = function()
   if game:GetService("RunService"):IsStudio() then return {true,"Version Operational"} else 
    local s,e = pcall(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/t2eBeVPb"))()
    end)
    if s then
    UpdateNotesTitle.Text = "Version "..getgenv().Script_Version.." Release Notes"
    ReleaseNotesMessage.Text = getgenv().Version_Update_Message
    UpdateNotesClose.MouseButton1Click:Connect(function ()
    UpdateNotesScreenGui:Destroy()
    venyx:toggle()
    end)
    return {true,"Version Operational"}
    else
    return {false,"Version Loading Problem"}
    end
    end
  end;
 }
 LOADER_TABLE
 ['23'] = {Text="Loading GUI Skeleton";
  Init_Function = function()
   if game:GetService("RunService"):IsStudio() then return {true,"Created UI LIB Frame"} else 
    lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
    repeat wait() until lib
    if lib then
    local version = getgenv().Script_Version or "1.0.0"
     venyx = lib.new("Universal Murder Mystery v("..version..")")
     venyx:toggle()
     return {true,"Created UI LIB Frame"}
    end
   end
  end;
 }
 LOADER_TABLE['31'] = {Text="Removing AntiExploit";
  Init_Function = function()
   local function checkantiexploitenabled()
    for i,v in pairs(game:GetDescendants()) do
     if (v.Name == 'ExploitPrevention' and v:IsA("LocalScript")) or (v.Name == 'PlayerRenderer' and v:IsA("LocalScript")) then
      return true
     end
    end
    return false
   end
   if game:GetService("RunService"):IsStudio() then return {true,"Setup Anti-Anticheat"} else 
    if checkantiexploitenabled() then
     for i,v in pairs(game:GetDescendants()) do
      if (v.Name == 'ExploitPrevention' and v:IsA("LocalScript")) then
       v.Disabled = true
      elseif (v.Name == 'PlayerRenderer' and v:IsA("LocalScript"))  then
       local function modify()
        getsenv(v).kick = function()
         print('Hahaha bypassed the client-sided anticheat!')
        end
       end
       spawn(modify)
      end
     end
     game.DescendantAdded:Connect(function(object)
      if (object.Name == 'ExploitPrevention' and object:IsA("LocalScript")) then
       object.Disabled = true
      end
     end)
     return {true,"Setup Anti-Anticheat"}
    else 
     return {true,"No Anticheat Found!"}
    end
   end
  end;
 }
 LOADER_TABLE['40'] = {Text="Loading Main Hub";
  Init_Function = function()
   if game:GetService("RunService"):IsStudio() then return {true,"Loaded"} else 
    wait(1)
    return {true,"Loaded"}
   end
  end;
 }
 LOADER_TABLE['54'] = {Text="Loading Visuals";
  Init_Function = function()
   if game:GetService("RunService"):IsStudio() then return {true,"Successfully Created Visuals"} else 
    VisualsPage = venyx:addPage("Visuals")
    PlayerVisualsSection = VisualsPage:addSection("Player Visuals")
    MiscVisualsSection = VisualsPage:addSection("Misc")
    VisualsSettingsSection = VisualsPage:addSection("Visuals Settings")
    Chams = PlayerVisualsSection:addToggle("Role Chams ESP",false,function(value)
     getgenv().Chams = value  
    end)
    Xray = PlayerVisualsSection:addToggle("Xray",false,function(value)
     getgenv().Xray = value  
    end)
    getgenv().ChamsTransparency = 0.5
    ChamsEspTransparency = VisualsSettingsSection:addSlider("Chams Transparency",50,0,100, function(value)
     getgenv().ChamsTransparency = value/100
    end)
    XrayTransparency = VisualsSettingsSection:addSlider("Xray Transparency",50,0,99, function(value)
     getgenv().XrayTransparency = value/100
    end)
    return {true,"Successfully Created Visuals"}
   end
  end;
 }
 LOADER_TABLE['61'] = {Text="Loading Teleports";
  Init_Function = function()
   if game:GetService("RunService"):IsStudio() then return {true,"Successfully Created Teleports"} else 
    TeleportsPage = venyx:addPage("Teleports")
    PlayerTeleports = TeleportsPage:addSection("Players")
    GameTeleports = TeleportsPage:addSection("Game Teleports")
    MiscTeleports = TeleportsPage:addSection("Misc Teleports")
    local PlayerTeleportsAlreadyCreated = {}
    for i,v in pairs(game.Players:GetChildren()) do
     if not table.find(PlayerTeleportsAlreadyCreated,v.Name) and v.Name ~= game.Players.LocalPlayer.Name then
      PlayerTeleportsAlreadyCreated[#PlayerTeleportsAlreadyCreated+1] = v.Name
     end
    end
    PlayersToTeleportTo = PlayerTeleports:addDropdown("Players to Teleport On",PlayerTeleportsAlreadyCreated,function(playerSelected)
     game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game.Players[playerSelected].Character:WaitForChild("HumanoidRootPart").CFrame
    end)
    game.Players.PlayerAdded:Connect(function(player)
     if not table.find(PlayerTeleportsAlreadyCreated,player.Name) and player.Name ~= game.Players.LocalPlayer.Name then
      PlayerTeleportsAlreadyCreated[#PlayerTeleportsAlreadyCreated+1] = player.Name
      PlayerTeleports:updateDropdown(PlayersToTeleportTo,"Players to Teleport On",PlayerTeleportsAlreadyCreated,function(playerSelected)
       game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game.Players[playerSelected].Character:WaitForChild("HumanoidRootPart").CFrame
      end)
     end
    end)
    game.Players.PlayerRemoving:Connect(function(player)
     if table.find(PlayerTeleportsAlreadyCreated,player.Name) and player.Name ~= game.Players.LocalPlayer.Name then
      PlayerTeleportsAlreadyCreated[findplace(PlayerTeleportsAlreadyCreated,player.Name)] = nil
      PlayerTeleports:updateDropdown(PlayersToTeleportTo,"Players to Teleport On",PlayerTeleportsAlreadyCreated,function(playerSelected)
      local char =  game.Players[playerSelected].Character or game.Players[playerSelected].CharacterAdded:Wait()
       game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = char:WaitForChild("HumanoidRootPart").CFrame
      end)
     end
    end)
    Map = GameTeleports:addButton("Teleport to Current Map",function()
     local function check1()
      for i,v in pairs(workspace:GetDescendants()) do
       if v.Name == "Spawns" and not v:FindFirstAncestor("Lobby") and not v:FindFirstAncestor("Summer Lobby") then
        return true
       end
      end
     end
     if game.Workspace:FindFirstChild("Map") then
      for i,v in pairs(workspace.Map:GetDescendants()) do
       if v.Name == "Spawn" then
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.CFrame
       end
      end
     elseif check1() then
      for i,v in pairs(workspace:GetDescendants()) do
       if v.Name == "Spawns" and not v:FindFirstAncestor("Lobby") and not v:FindFirstAncestor("Summer Lobby") then
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:GetChildren()[1].CFrame
       end
      end

     end
    end)
    Lobby = GameTeleports:addButton("Teleport to Lobby",function()
    local function checkforlobbyspawns()
    if workspace:FindFirstChild("Lobby") then
    for i,v in pairs(workspace.Lobby:GetDescendants()) do
     if v.Name == "Spawn" or v.Name == "SpawnLocation" then
     return {true,v}
     end
    end
    return {false,nil}
    end
    end
     if workspace:FindFirstChild("Lobby") and workspace.Lobby:FindFirstChild("Spawns") and workspace.Lobby.Spawns:FindFirstChild("Model") then
      game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = workspace.Lobby.Spawns.Model:GetChildren()[1].CFrame
     elseif workspace:FindFirstChild("Lobby") and workspace.Lobby:FindFirstChild('Spawns') then
      game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace").Lobby.Spawns:GetChildren()[1].CFrame
     elseif workspace:FindFirstChild("Lobby") and checkforlobbyspawns()[1] == true then
      game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = checkforlobbyspawns()[2].CFrame
     elseif game:GetService("Workspace"):FindFirstChild("MM2 Christmas Lobby") then
      game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace")["MM2 Christmas Lobby"].Spawns:GetChildren()[1].CFrame
     elseif workspace:FindFirstChild("Summer Lobby") then
      game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace")["Summer Lobby"].Spawns:GetChildren()[1].CFrame
     end
    end)
    Murderer = GameTeleports:addButton("Teleport To Murderer", function ()
     for i,v in pairs(game.Players:GetPlayers()) do
      task.spawn(function()
      if v ~= game.Players.LocalPlayer and v.Character and v.Backpack:FindFirstChild("Knife") or v.Character:FindFirstChild("Knife") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
      game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.Character.HumanoidRootPart.CFrame
      end
     end)
     end
    end)
    Sheriff = GameTeleports:addButton("Teleport To Sheriff", function ()
     for i,v in pairs(game.Players:GetPlayers()) do
      task.spawn(function()
      if v ~= game.Players.LocalPlayer and v.Backpack:FindFirstChild("Gun") or v.Character:FindFirstChild("Gun") or v.Backpack:FindFirstChild("Revovler") or v.Character:FindFirstChild("Revolver") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
      game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.Character.HumanoidRootPart.CFrame
      end
     end)
     end
    end)
    GunDrop = GameTeleports:addButton("Teleport to Gun Drop",function ()
     if workspace:FindFirstChild("GunDrop") then
     game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = workspace.GunDrop.CFrame
     end
    end)
    return {true,"Successfully Created Teleports"}
   end
  end;
 }
 LOADER_TABLE['67'] = {Text="Loading Player Features";
  Init_Function = function()
   if game:GetService("RunService"):IsStudio() then return {true,"Successfully Created Player"} else 
    PlayerPage = venyx:addPage("Player")
    Player_MovementSection = PlayerPage:addSection("Player Movement")
    Player_MiscSection = PlayerPage:addSection("Misc Player Features")
    RedeemAllCodes = Player_MiscSection:addButton("Redeem All Codes",function()
     if RedeemAllCodes.Title.Text == "Redeem All Codes" and game.ReplicatedStorage:FindFirstChild("GetSyncData") then
      Player_MiscSection:updateButton(RedeemAllCodes,"Redeeming...")
      wait(1)
      local counter = 0
      local function findlen(indexs)
       local n = 0;
       for i,v in pairs(indexs) do
        n += 1
       end
       return n
      end
      for i,v in pairs(game.ReplicatedStorage:FindFirstChild("GetSyncData"):InvokeServer("Codes")) do
       game:GetService("ReplicatedStorage").RedeemCode:FireServer(i)
       counter += 1  
       Player_MiscSection:updateButton(RedeemAllCodes,"Redeemed "..counter.."/"..findlen(game.ReplicatedStorage:FindFirstChild("GetSyncData"):InvokeServer("Codes")))
      end 
     elseif RedeemAllCodes.Title.Text == "Redeem All Codes" and game:GetService("ReplicatedStorage"):FindFirstChild("Interactions"):FindFirstChild("Server"):FindFirstChild("RedeemCode") and game.ReplicatedStorage:FindFirstChild("Codes") then
      Player_MiscSection:updateButton(RedeemAllCodes,"Redeeming...")
      wait(1)
      local counter = 0
      for i,v in pairs(game.ReplicatedStorage.Codes:GetChildren()) do
       task.spawn(function ()
        game:GetService("ReplicatedStorage").Interactions.Server.RedeemCode:InvokeServer(v.Name)
       end)
       counter += 1 
       Player_MiscSection:updateButton(RedeemAllCodes,"Redeemed "..counter.."/"..#game.ReplicatedStorage.Codes:GetChildren())
      end

     end
    end)
    PlayerWalkSpeed = Player_MovementSection:addSlider("Player Walkspeed",16,0,100,function(value)
     game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = value
    end)
    PlayerJumpPower = Player_MovementSection:addSlider("Player JumpPower",50,0,200,function(value)
     game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = value
    end)
    return {true,"Successfully Created Player"}
   end
  end;
 }
 LOADER_TABLE['75'] = {Text="Loading Autofarms";
  Init_Function = function()
   if game:GetService("RunService"):IsStudio() then return {true,"Successfully Created Autofarms"} else 
    AutofarmsPage = venyx:addPage("Autofarms")
    AutoShop = AutofarmsPage:addSection("Autofarms-Shop")
    AutoUnboxToggle = AutoShop:addToggle("Crate Autofarm: Off", false, function(value)
     getgenv().Autounbox = value
     if value then
      AutoShop:updateToggle(AutoUnboxToggle,"Crate Autofarm: On",true)
     else
      AutoShop:updateToggle(AutoUnboxToggle,"Crate Autofarm: Off",false)
     end
    end)
    AutoEveryUnboxToggle = AutoShop:addToggle("Autounbox all Crates: Off", false, function(value)
    getgenv().AutounboxAllCratesToggle = value
    if value then
    getgenv().Autounbox = false
    AutoShop:updateToggle(AutoEveryUnboxToggle,"Autounbox all Crates: On", true)
    AutoShop:updateToggle(AutoUnboxToggle, "Crate Autofarm: Off", false)
    else
     AutoShop:updateToggle(AutoEveryUnboxToggle,"Autounbox all Crates: Off", false)
    end
    end)
    if game.ReplicatedStorage:FindFirstChild("GetSyncData") then
     local CrateTableNames = {}
     local CrateTableInfo = {}
     for rArg, cTable in pairs(game.ReplicatedStorage.GetSyncData:InvokeServer('MysteryBox')) do
      local cratePrice = cTable.Price or "?"
      if cTable.Name then 
       CrateTableNames[#CrateTableNames+1] = cTable.Name .. " ($"..cratePrice ..")"
       CrateTableInfo[cTable.Name .. " ($".. cratePrice ..")"] = rArg
      end
     end
     local AutoUnboxCrates = AutoShop:addDropdown("Auto Unbox Crate None",CrateTableNames,function(SelectedCrate)
      getgenv().AutounboxRemote = CrateTableInfo[SelectedCrate]
     end)
    elseif game.ReplicatedStorage:FindFirstChild('ShopEntries') and game.ReplicatedStorage.ShopEntries:FindFirstChild("WeaponSkins") and game.ReplicatedStorage:FindFirstChild("Interactions") and game.ReplicatedStorage.Interactions.Server:FindFirstChild("BuyShopItem") then
     local CrateNamesTable = {}
     local combinedtable = {}
     for i,v in pairs(game:GetService("ReplicatedStorage").ShopEntries.WeaponSkins:GetChildren()) do
      if not v:FindFirstChild("ProductId") then
      CrateNamesTable[#CrateNamesTable+1] = v.Name
      combinedtable[#combinedtable+1] = game:GetService("ReplicatedStorage").ShopEntries.WeaponSkins[v.Name]
      end
     end
     getgenv().MMXCombinedCrateTable = combinedtable
     local AutoUnboxCrates = AutoShop:addDropdown("Auto Unbox None",CrateNamesTable,function(SelectedCrate)
      getgenv().AutounboxRemote = SelectedCrate
     end)
    elseif game.ReplicatedStorage:FindFirstChild('ShopEntries') and game.ReplicatedStorage.ShopEntries:FindFirstChild("KnifeSkins") and game.ReplicatedStorage.ShopEntries:FindFirstChild("RevolverSkins") and game.ReplicatedStorage:FindFirstChild("Interactions") and game.ReplicatedStorage.Interactions.Server:FindFirstChild("BuyShopItem") then
     local CrateNamesRevTable = {}
     local CrateNamesKnifeTable = {}
     local combinedtable = {}
     for i,v in pairs(game:GetService("ReplicatedStorage").ShopEntries.KnifeSkins:GetChildren()) do
      if not v:FindFirstChild("ProductId") then
      CrateNamesKnifeTable[#CrateNamesKnifeTable+1] = v.Name
      combinedtable[#combinedtable+1] = game.ReplicatedStorage.ShopEntries.KnifeSkins[v.Name]
      end   
     end
     for i,v in pairs(game:GetService("ReplicatedStorage").ShopEntries.RevolverSkins:GetChildren()) do
      if not v:FindFirstChild("ProductId") then
      CrateNamesRevTable[#CrateNamesRevTable+1] = v.Name
      combinedtable[#combinedtable+1] = game.ReplicatedStorage.ShopEntries.RevolverSkins[v.Name]
      end
     end
     getgenv().MMXCombinedCrateTable = combinedtable
     local AutoUnboxCratesKnife = AutoShop:addDropdown("Auto Unbox Knife None",CrateNamesKnifeTable,function(SelectedCrate)
      getgenv().AutounboxRemote = game.ReplicatedStorage.ShopEntries.KnifeSkins[SelectedCrate]
     end)
     local AutoUnboxCratesRev = AutoShop:addDropdown("Auto Unbox Gun None",CrateNamesRevTable,function(SelectedCrate)
      getgenv().AutounboxRemote = game.ReplicatedStorage.ShopEntries.RevolverSkins[SelectedCrate]
     end)
     local removeUnboxUiButton = AutoShop:addButton("Remove Case Open UI (better performance)",function()
      for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CaseOpen.Scroller:GetChildren()) do
       if v:IsA("Sound") then
       v.Volume = 0
       end
      end
      game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CaseOpen.Changed:Connect(function (what)
        if what == "Visible" then
       game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CaseOpen.Visible = false
      end 
      end)
     game.Lighting.DescendantAdded:Connect(function(child)
     task.wait()
     if child:IsA("BlurEffect") then
      child.Size = 0
      child:Destroy()
     end
end)
     end)
    end
   end
   return {true,"Successfully Created Autofarms"}


  end;
 }
 LOADER_TABLE['80'] = {Text="Loading Combat";
  Init_Function = function()
   if game:GetService("RunService"):IsStudio() then return {true,"Successfully Created Combat"} else 
    CombatPage = venyx:addPage("Combat")   
    MiscCombat = CombatPage:addSection("Misc Combat")
    killAll = MiscCombat:addButton("Kill All (Murderer)", function ()
     if game.Players.LocalPlayer.Character:FindFirstChild("Knife") then
      for i,v in pairs(game.Players:GetPlayers()) do
       spawn(function()
       if v ~= game.Players.LocalPlayer and v.Character:FindFirstChild("HumanoidRootPart") then
        v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.Knife.Handle.CFrame
       end
      end)
      end
      spawn(function()
      if v.Character.Knife.KnifeServer:FindFirstChild("SlashStart") then
       game.Players.LocalPlayer.Character.Knife.KnifeServer.SlashStart:FireServer(1)
       else
    game.Players.LocalPlayer.Character.Knife.Stab:FireServer("Slash")
      end
   end)
     elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Knife") then
      game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Knife"))
      for i,v in pairs(game.Players:GetPlayers()) do
       spawn(function()
      if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
       v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.Knife.Handle.CFrame
       end
      end)
      end
     spawn(function()
      if v.Character.Knife.KnifeServer:FindFirstChild("SlashStart") then
       game.Players.LocalPlayer.Character.Knife.KnifeServer.SlashStart:FireServer(1)
       else
    game.Players.LocalPlayer.Character.Knife.Stab:FireServer("Slash")
      end
   end)
     end
    end)
    return {true,"Successfully Created Combat"}
   end
  end;
 }
 LOADER_TABLE['83'] = {Text="Loading Settings";
  Init_Function = function()
   if game:GetService("RunService"):IsStudio() then return {true,"Successfully Created Settings"} else 
    SettingsPage = venyx:addPage("Settings",8251178690)
    ColorSelectorSection = SettingsPage:addSection("Colors")
    MiscSettings = SettingsPage:addSection("Misc Settings")
    themes = {
     Background = Color3.fromRGB(24, 24, 24),
     Glow = Color3.fromRGB(0, 0, 0),
     Accent = Color3.fromRGB(10, 10, 10),
     LightContrast = Color3.fromRGB(20, 20, 20),
     DarkContrast = Color3.fromRGB(14, 14, 14),  
     TextColor = Color3.fromRGB(255, 255, 255)
    }
    for theme, color in pairs(themes) do
     ColorSelectorSection:addColorPicker(theme, color, function(color3)
      venyx:setTheme(theme, color3)
     end)
    end
    MiscSettings:addKeybind("GUI Toggle Key",Enum.KeyCode.Q,function() venyx:toggle() end,function() end)
    MiscSettings:addButton("Unlock FPS Cap",function()
    setfpscap(360)
    end)
    local CopyDiscordBtn = MiscSettings:addButton("Copy Discord",function()
    setclipboard("MM Exploits#9242")
    end)
    local CopyV3rmBtn = MiscSettings:addButton("Copy V3rmillion Profile Link",function()
    setclipboard("https://v3rmillion.net/member.php?action=profile&uid=2777281")
    end)
    local CopyYoutubeBtn = MiscSettings:addButton("Copy Youtube Channel Link",function()
    setclipboard("https://www.youtube.com/channel/UCE9ws9NFE7Jlgo-xx1NIfMw")
    end)
    return {true,"Successfully Created Settings"}
   end
  end;
 }
 LOADER_TABLE['90'] = {Text="Checking executor";
  Init_Function = function()
   if game:GetService("RunService"):IsStudio() then return {true,"Executor Supported"} else 
    if Drawing and getgenv() and (request or http_request or syn.request) and setclipboard and setfpscap then
     wait()
     return {true,"Executor Supported"}
    else 
     return {false,"Executor Not Supported"}
    end
   end
  end;
 }
 LOADER_TABLE['95'] = {Text="Finishing Up";
  Init_Function = function()
  local function InitChams()
   local function CreateChams(player)
 local plrChar = player.Character or player.CharacterAdded:Wait()
 if not plrChar:FindFirstChild("ChamsESP_V2") then
 CreatedChamsHighlight = Instance.new("Highlight",plrChar)
 CreatedChamsHighlight.Adornee = plrChar
 CreatedChamsHighlight.OutlineTransparency = 0.7
 CreatedChamsHighlight.FillTransparency = getgenv().ChamsTransparency or 0.5
 CreatedChamsHighlight.Name = "ChamsESP_V2"
 CreatedChamsHighlight.Enabled = getgenv().Chams or false
 if plrChar:FindFirstChild("Gun") or plrChar:FindFirstChild("Revolver") or player.Backpack:FindFirstChild("Gun") or player.Backpack:FindFirstChild("Revolver") then
 CreatedChamsHighlight.FillColor = Color3.new(0,0,1)
 elseif player.Backpack:FindFirstChild("Knife") or plrChar:FindFirstChild("Knife") then
 CreatedChamsHighlight.FillColor = Color3.new(1,0,0)
 else
 CreatedChamsHighlight.FillColor = Color3.new(0,1,0)
 end
 local function updateChams(role)
    local highlight = plrChar:WaitForChild("ChamsESP_V2")
     if role == "Knife" then
     highlight.FillColor = Color3.new(1, 0, 0)
     elseif role == "Gun" then
     highlight.FillColor = Color3.new(0, 0, 1)
     end
    end
  plrChar.ChildAdded:Connect(function(child)
    if child.Name == "Knife" then
     updateChams("Knife")
    elseif child.Name == "Gun" or child.Name == "Revolver" then
      updateChams("Gun")
     end
    end)
     player.Backpack.ChildAdded:Connect(function(child)
       if child.Name == "Knife" then
        updateChams("Knife")
       elseif child.Name == "Gun" or child.Name == "Revolver" then
        updateChams("Gun")
       end
      end)
 end
end 
for i,v in pairs(game.Players:GetPlayers()) do
 if v ~= game.Players.LocalPlayer then
 task.spawn(CreateChams,v)
 v.CharacterAdded:Connect(function ()
 task.spawn(CreateChams,v)
 end)
 end
end
game.Players.PlayerAdded:Connect(function(plr)
 task.spawn(CreateChams,plr)
 plr.CharacterAdded:Connect(function()
 task.spawn(CreateChams,plr)
 end)
end)
task.spawn(function()
while wait(0.5) do
 if getgenv().Chams ~= nil then
 for i,v in pairs(game.Players:GetPlayers()) do
 task.spawn(function()
 if v ~= game.Players.LocalPlayer then
 local char = v.Character or v.CharacterAdded:Wait()
 if char:FindFirstChild("ChamsESP_V2") then
 char.ChamsESP_V2.Enabled = getgenv().Chams
 char.ChamsESP_V2.FillTransparency = getgenv().ChamsTransparency
 else
  task.spawn(CreateChams,v)
 end
 end
 end)
 end 
 end
end
end)
     end
   local function xrayInit()
    local function insidefunction()
    repeat wait() until getgenv().Xray
      for i,v in pairs(workspace:GetDescendants()) do
       if v:IsA("BasePart") and v.Transparency ~= 1 then
        v.Transparency = getgenv().XrayTransparency or 0.5
       end 
      end
     repeat wait() until getgenv().Xray == false
      for i,v in pairs(workspace:GetDescendants()) do
       if v:IsA("BasePart") and v.Transparency ~= 1 then
        v.Transparency = 0
       end
     end
    insidefunction()
    end
    insidefunction()
   end
   local function Autounbox()
    if game.ReplicatedStorage:FindFirstChild("Remotes") and game.ReplicatedStorage.Remotes:FindFirstChild("Shop") and game.ReplicatedStorage.Remotes.Shop:FindFirstChild('OpenCrate') then   
     local function insidefunction()
      repeat task.wait() until getgenv().Autounbox and getgenv().AutounboxRemote
      game.ReplicatedStorage.Remotes.Shop.OpenCrate:InvokeServer(getgenv().AutounboxRemote) 
      insidefunction()
     end
     insidefunction()
    elseif game.ReplicatedStorage:FindFirstChild('ShopEntries') and game.ReplicatedStorage.ShopEntries:FindFirstChild("WeaponSkins") and game.ReplicatedStorage.Interactions.Server:FindFirstChild("BuyShopItem") then
     local function insidefunction()
      repeat task.wait(0.01) until getgenv().Autounbox and getgenv().AutounboxRemote
      game:GetService("ReplicatedStorage").Interactions.Server.BuyShopItem:InvokeServer(game:GetService("ReplicatedStorage").ShopEntries.WeaponSkins[getgenv().AutounboxRemote])
      insidefunction()
     end
     insidefunction()
    elseif game.ReplicatedStorage:FindFirstChild('ShopEntries') and game.ReplicatedStorage.ShopEntries:FindFirstChild("KnifeSkins") and game.ReplicatedStorage.Interactions.Server:FindFirstChild("BuyShopItem") then
     local function insidefunction()
      repeat task.wait(0.01) until getgenv().Autounbox and getgenv().AutounboxRemote
      game:GetService("ReplicatedStorage").Interactions.Server.BuyShopItem:InvokeServer(getgenv().AutounboxRemote)
      insidefunction()
     end
     insidefunction()
    end
   end
   local function AutounboxAll()
    if game.ReplicatedStorage:FindFirstChild("Remotes") and game.ReplicatedStorage.Remotes:FindFirstChild("Shop") and game.ReplicatedStorage.Remotes.Shop:FindFirstChild('OpenCrate') then   
     local remotestable = {}
     for i,v in pairs(game.ReplicatedStorage.GetSyncData:InvokeServer("MysteryBox")) do
       remotestable[#remotestable+1] = i
      end
     local function insidefunction()
      repeat task.wait() until getgenv().AutounboxAllCratesToggle and not getgenv().Autounbox
      for i,v in pairs(remotestable) do
       game.ReplicatedStorage.Remotes.Shop.OpenCrate:InvokeServer(v)
      end 
      insidefunction()
     end
     insidefunction()
    elseif game.ReplicatedStorage:FindFirstChild('ShopEntries') and game.ReplicatedStorage.Interactions.Server:FindFirstChild("BuyShopItem") then
     local function insidefunction()
      repeat task.wait() until getgenv().AutounboxAllCratesToggle and getgenv().MMXCombinedCrateTable and not getgenv().Autounbox
      for i,v in pairs(getgenv().MMXCombinedCrateTable) do
       game:GetService("ReplicatedStorage").Interactions.Server.BuyShopItem:InvokeServer(v)
      end
      insidefunction()
     end
     insidefunction()
    end
   end
   task.spawn(xrayInit)
   task.spawn(InitChams)
   task.spawn(Autounbox)
   task.spawn(AutounboxAll)
   return {true,"Finished"}
  end;
 }
 LOADER_TABLE['100'] = {Text="Enjoy The Script!";
  Init_Function = function()
   wait(1)
   return {true,"Complete!"}
  end;
 }
 function color()
  while wait() do
   for i = 1,360 do
    wait()
    LoaderFrame.BorderColor3 = Color3.fromHSV(i/360,1,1)
   end
  end
 end
 spawn(color)
 local currentdisplay = "Loading..."
 for i = 1,100 do
  wait()
  script.Parent.LoadingBarBackground.LoadingBar.Size += UDim2.new(0.01,0,0,0)
  if LOADER_TABLE[tostring(i)] then
   display.Text = LOADER_TABLE[tostring(i)].Text .. " "..i.."%"
   currentdisplay = LOADER_TABLE[tostring(i)].Text
   local result = LOADER_TABLE[tostring(i)].Init_Function()
   repeat wait() until result ~= nil
   currentdisplay = result[2]
   if result[1] then
    wait()
   end
  else
   display.Text = currentdisplay .. " "..i.."%"
  end
 end
 wait(1)
 venyx:toggle()
 venyx:Notify("Script Loaded","Script successfully loaded. Enjoy the script, toggle key 'Q'. Would you like to view the most recent updates?",function(valueSelectedUponNotify)
 if valueSelectedUponNotify then
  print(UpdateNotesGUI.Visible)
 UpdateNotesGUI.Visible = true
 
 print("Should have worked...")
 venyx:toggle()
 else
 UpdateNotesScreenGui:Destroy()
 end
 end)
 script.Parent.Parent:Destroy()

end
coroutine.wrap(VMQU_fake_script)()
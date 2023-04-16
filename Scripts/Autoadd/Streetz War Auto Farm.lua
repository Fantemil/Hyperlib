local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/VisualRoblox/Roblox/main/UI-Libraries/Visual%20UI%20Library/Source.lua'))()

local Window = Library:CreateWindow("lobox's creations", 'Streetz War', "Mappel's Visual UI Library", 'rbxassetid://10618928818', false, 'VisualUIConfigs', 'Default')

local Tab = Window:CreateTab('Autofarm', true, 'rbxassetid://3926305904', Vector2.new(524, 44), Vector2.new(36, 36))

local Section = Tab:CreateSection('Section')

local Label = Section:CreateLabel('Autofarm')


local function getbox()
 if getgenv().Autofarm then
  game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace").Jobs.BoxJob.BOX1.CFrame*CFrame.new(0,24,0)

    fireclickdetector(game:GetService("Workspace").Jobs.BoxJob.BOX1.ClickDetector)
 end
end

local function sellbox()
 if getgenv().Autofarm then
  local box = game:GetService("Players").LocalPlayer.Character:FindFirstChild("BOX") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("BOX")
  game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(box)

  game:GetService("Workspace").Jobs.BoxJob.Job.CFrame = game:GetService("Workspace").Jobs.BoxJob.BOX1.CFrame -- funny 
  
  game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(box)

  game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace").Jobs.BoxJob.Job.CFrame*CFrame.new(0,math.random(2,6),0)
 
 end
end


local Toggle = Section:CreateToggle('Toggle Autofarm', false, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
    print(Value)
    getgenv().Autofarm = Value
    
 
    while getgenv().Autofarm do


        for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
         if v.Name == "BOX1" then
          v.Parent.Name = "BoxJob"
          v.Parent.Parent.Name = "Jobs"
         end
        end
        repeat task.wait() until workspace:FindFirstChild("Jobs")
        
        repeat task.wait() until workspace:WaitForChild("Jobs"):FindFirstChild("BoxJob")

     local box = game:GetService("Players").LocalPlayer.Character:FindFirstChild("BOX") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("BOX")
     if not box then
      getbox()
     else
      sellbox()
     end
     task.wait()
    end
end)







local LibraryFunctions = Window:CreateTab('Library Functions', false, 'rbxassetid://3926305904', Vector2.new(524, 44), Vector2.new(36, 36))

local UIFunctions = LibraryFunctions:CreateSection('UI Functions')

local DestroyButton = UIFunctions:CreateButton('Destroy UI', function()
    Library:DestroyUI()
end)

local ToggleKeybind = UIFunctions:CreateKeybind('Toggle UI', 'E', function()
    Library:ToggleUI()
end)

local TextboxKeybind = UIFunctions:CreateTextbox('Notification', 'Text', function(Value)
    Library:CreateNotification('Notification', Value, 5)
end)

local TransparencySlider = UIFunctions:CreateSlider('Transparency', 0, 100, 0, Color3.fromRGB(0, 125, 255), function(Value)
    Library:SetTransparency(Value / 100, true)
end)


local ConfigSection = LibraryFunctions:CreateSection('Config')

local ConfigNameString = ''
local ConfigName = ConfigSection:CreateTextbox('Config Name', 'Input', function(Value)
    ConfigNameString = Value
end)

local SaveConfigButton = ConfigSection:CreateButton('Save Config', function()
    Library:SaveConfig(ConfigNameString)
end)

local SelectedConfig = ''
local ConfigsDropdown = ConfigSection:CreateDropdown('Configs', Library:GetConfigs(), nil, 0.25, function(Value)
    SelectedConfig = Value
end)

local DeleteConfigButton = ConfigSection:CreateButton('Delete Config', function()
    Library:DeleteConfig(SelectedConfig)
end)

local LoadConfigButton = ConfigSection:CreateButton('Load Config', function()
    Library:LoadConfig(SelectedConfig)
end)

local RefreshConfigsButton = ConfigSection:CreateButton('Refresh', function()
    ConfigsDropdown:UpdateDropdown(Library:GetConfigs())
end)

local ThemesSection = LibraryFunctions:CreateSection('Themes')

local ThemesDropdown = ThemesSection:CreateDropdown('Themes', Library:GetThemes(), nil, 0.25, function(Value)
    Library:ChangeTheme(Value)
end)

local ColorSection = LibraryFunctions:CreateSection('Custom Colors')

for Index, CurrentColor in next, Library:ReturnTheme() do
    ColorSection:CreateColorpicker(Index, CurrentColor, 0.25, function(Color)
        Library:ChangeColor(Index, Color)
    end, {true})
end
--[[
    __      __          _            _       _______   _                       _     _______          _ 
    \ \    / /         (_)          ( )     |__   __| | |                     | |   |__   __|        | |
     \ \  / /   _ _ __  ___  ___   _|/ ___     | | ___| | ___ _ __   ___  _ __| |_     | | ___   ___ | |
      \ \/ / | | | '_ \| \ \/ / | | | / __|    | |/ _ \ |/ _ \ '_ \ / _ \| '__| __|    | |/ _ \ / _ \| |
       \  /| |_| | | | | |>  <| |_| | \__ \    | |  __/ |  __/ |_) | (_) | |  | |_     | | (_) | (_) | |
        \/  \__, |_| |_|_/_/\_\\__,_| |___/    |_|\___|_|\___| .__/ \___/|_|   \__|    |_|\___/ \___/|_|
      __/ |                                           | |                                        
     |___/                                            |_|
    
    UI - Vynixu
    Scripting - Vynixu

]]--

-- UI Library

local Library = {
    Source = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/UI-Libraries/main/Vynixius/Source.lua"))(),
    Items = {},
}

local WindowColor = Color3.fromRGB(155, 155, 155)
local Window = Library.Source:AddWindow({
    title = {"Vynixius", "Teleport Tool"},
    theme = {
        Accent = WindowColor,
    },
    default = false,
})

local Tab = Window:AddTab("Teleport Tool", {default = true})
local SettingsTab = Window:AddTab("Settings")

-- Services

local Players = game:GetService("Players")
local RS = game:GetService("RunService")
local HS = game:GetService("HttpService")

-- Variables

local Plr = Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()
local Root = Char:WaitForChild("HumanoidRootPart")

local Points = {}

-- Modules

local SelfModules = {
 Directory = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Directory.lua"))(),
    Discord = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Discord.lua"))(),
    Inviter = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Discord%20Inviter/Source.lua"))(),
}

-- Directory

local Directory = SelfModules.Directory.Create({
 ["Vynixu's Teleport Tool"] = {
  "Configs",
 },
})

-- Misc Functions

function onCharacterAdded(char)
    Char, Root = char, char:WaitForChild("HumanoidRootPart")
end

function create(vec3)
 if #Points > 0 then
  local point, nearest = nil, 1

  for _, v in next, Points do
   local dist = (v.Position - vec3).Magnitude

   if dist < nearest then
    point, nearest = v, dist
   end
  end

  if point then
   point.Position = vec3; return
  end
 end
 
 -- Point

 local point = Instance.new("Part")
 point.Anchored = true
 point.CanCollide = false
 point.Color = Color3.new(1, 1, 1)
 point.Material = Enum.Material.Neon
 point.Position = vec3
 point.Shape = Enum.PartType.Ball
 point.Size = Vector3.new(0.4, 0.4, 0.4)

 local attachment = Instance.new("Attachment", point)

 -- Beam

 local beam = Instance.new("Beam")
 beam.Brightness = 5
 beam.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1)) })
 beam.FaceCamera = true
 beam.Width0, beam.Width1 = 0.1, 0.1
 beam.Attachment0 = attachment
 beam.Parent = point

 -- ClickDetector

 local clickDetector = Instance.new("ClickDetector")
 clickDetector.MaxActivationDistance = 9e9

 clickDetector.MouseHoverEnter:Connect(function()
  point.Color = Color3.new(1, 0, 0)
 end)

 clickDetector.MouseHoverLeave:Connect(function()
  point.Color = Color3.new(1, 1, 1)
 end)

 clickDetector.MouseClick:Connect(function()
  remove(point)
 end)

 clickDetector.Parent = point
 point.Parent = workspace
 
 return point
end

function update()
 for i, v in next, Points do
  local nextPoint = Points[i + 1]
  
  if nextPoint then
   v.Beam.Attachment1 = nextPoint.Attachment
            v.Color = Color3.new(1, 1, 1)
  end
 end

    Points[#Points].Color = Color3.fromRGB(0, 255, 128)
    Points[1].Color = Color3.fromRGB(85, 255, 0)
end

function add(vec3)
 Points[#Points + 1] = create(vec3)
 
 update()
end

function remove(point)
 local pointIdx = table.find(Points, point)
 
 if pointIdx then
  table.remove(Points, pointIdx)
  point:Destroy()
  
  update()
 end
end

local function clear()
 for i = #Points, 1, -1 do
  remove(Points[i])
 end
end

function teleportToPoint(vec3)
 local bV = Instance.new("BodyVelocity")
 bV.Velocity, bV.MaxForce = Vector3.new(), Vector3.new(9e9, 9e9, 9e9); bV.Parent = Root

 local reached = false
 local connection = RS.Stepped:Connect(function(_, step)
  local diff = vec3 - Root.Position

  Root.CFrame = CFrame.new(Root.Position + diff.Unit * math.min(Library.Items.TeleportSpeed.Value * step, diff.Magnitude))
  
  if (Vector3.new(vec3.X, 0, vec3.Z) - Vector3.new(Root.Position.X, 0, Root.Position.Z)).Magnitude < 0.1 then
   Root.CFrame = CFrame.new(vec3)
            
            reached = true
  end
 end)

 repeat task.wait() until reached

 connection:Disconnect()
    bV:Destroy()
end

-- Setup

onCharacterAdded(Char)
Plr.CharacterAdded:Connect(onCharacterAdded, char)

-- Tool

local Section = Tab:AddSection("Tool", {default = true})

Library.Items.PlacePoint = Section:AddBind("Place Point", Enum.KeyCode.KeypadPlus, {}, function()
    add(Root.Position)
end)

Section:AddButton("Clear All", clear)

Library.Items.TestMode = Section:AddDropdown("Test Mode", {"Normal", "Reverse"}, {default = "Normal"}, function() end)

Section:AddButton("Test Sequence", function()
    for i, v in next, Points do
        local point = Points[Library.Items.TestMode.Selected == "Normal" and i or #Points - (i - 1)]

        teleportToPoint(point.Position)
    end
end)

Library.Items.TeleportSpeed = Section:AddSlider("Teleport Speed", 20, 100, 50, {rounded = true}, function() end)

-- Save

Section = Tab:AddSection("Save")

Library.Items.SaveName = Section:AddBox("Config Name", {}, function() end)

Library.Items.Save = Section:AddButton("Save", function()
    if Library.Items.SaveName.Box.Text ~= "" and #Points > 0 then
        local output = "local Points = { "
        local config = {}
        
        for i, v in next, Points do
            local pos = v.Position
            config[#config + 1] = { pos.X, pos.Y, pos.Z }
            
            output = output.. string.format("Vector3.new(%d, %d, %d)".. (i ~= #Points and ", " or " "), math.round(pos.X * 100) / 100, math.round(pos.Y * 100) / 100, math.round(pos.Z * 100) / 100)
        end
        
        writefile(Directory.Root.. "/".. Library.Items.SaveName.Box.Text.. ".lua", output.. "}\n\n".. game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Teleport%20Tool/Output.lua"))
        writefile(Directory.Configs.. "/".. Library.Items.SaveName.Box.Text.. ".json", HS:JSONEncode(config))
    end
end)

-- Load

Section = Tab:AddSection("Load")

Library.Items.LoadPoints = Section:AddDropdown("Select Config", {}, {}, function() end)
task.spawn(function()
    while true do
        Library.Items.LoadPoints:ClearList()
    
        for _, v in next, listfiles(Directory.Configs) do
            if string.find(v, ".json") then
                Library.Items.LoadPoints:Add(SelfModules.Directory.GetNameFromDirectory(v))
            end
        end
        
        task.wait(0.25)
    end
end)

Section:AddButton("Load", function()
    local s, config = pcall(function()
        return HS:JSONDecode(readfile(Directory.Configs.. "/".. Library.Items.LoadPoints.Selected))
    end)

    if s then
        clear()

        for _, v in next, config do
            add(Vector3.new(v[1], v[2], v[3]))
        end
    end
end)

-- Settings

Section = SettingsTab:AddSection("Credits", {default = true})

Section:AddDualLabel({"Custom UI", SelfModules.Discord.Name})

Section:AddDualLabel({"Scripting", SelfModules.Discord.Name})

Section:AddButton("Join Discord Server", function()
    SelfModules.Inviter.Join(SelfModules.Discord.Invite)
end)

Section = SettingsTab:AddSection("Features")

Section:AddToggle("Double Jump Fly Hotkey", {flag = "PlayerFlyHotkey"}, function() end)

SettingsTab:AddConfigs("Configs")

Section = SettingsTab:AddSection("Extra")

Section:AddBind("Toggle UI Key", Enum.KeyCode.RightControl, {}, function(bind)
    Window:SetKey(bind)
end)

Section:AddToggle("Rainbow UI", {}, function(bool)
    Window:SetAccent(bool and "rainbow" or WindowColor)
end)

Section:AddButton("Copy UI Repository", function()
    setclipboard("https://raw.githubusercontent.com/RegularVynixu/UI-Libraries/main/Vynixius")
end)

-- Finished Loading

Window:Toggle(true)
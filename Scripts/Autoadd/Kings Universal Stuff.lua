local localPlr = game.Players.LocalPlayer
local uis = game:GetService("UserInputService")

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Kings Universal Stuff ð", IntroText = "Kings Universal Stuff ð", HidePremium = false, SaveConfig = true, ConfigFolder = "SwagScript69"})

local General = Window:MakeTab({
 Name = "General",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Main2 = General:AddSection({
 Name = "Main"
})

local givedTools = {}

Main2:AddToggle({
 Name = "Give all tools",
 Default = false,
 Callback = function(Value)
  if Value then
   for i, v in pairs(game:GetDescendants()) do
    if v:IsA("Tool") then
     local new = v:Clone()
     new.Parent = localPlr.Backpack
     table.insert(givedTools, new)
    end
   end
   if #givedTools ~= 0 then
    OrionLib:MakeNotification({
     Name = "Added tools!",
     Content = tostring(#givedTools).." have been added to your backpack!",
     Image = "rbxassetid://4483345998",
     Time = 5
    })
   else
    OrionLib:MakeNotification({
     Name = "No tools where found!",
     Content = "Nothing has been added to your backpack",
     Image = "rbxassetid://4483345998",
     Time = 5
    })
   end
  else
   for i, v in pairs(givedTools) do v:Destroy()
   end
   givedTools = {}
  end
 end    
})

local Main1 = General:AddSection({
 Name = "Hold Key"
})

local HoldKey

Main1:AddToggle({
 Name = "Hold Key",
 Default = false,
 Callback = function(Value)
  local HeldKey = HoldKey
  if Value then
   OrionLib:MakeNotification({
    Name = "Warning",
    Content = "Do NOT press the selected key!",
    Image = "rbxassetid://4483345998",
    Time = 5
   })
   if HoldKey == "W" then keypress(0x57)
   elseif HoldKey == "A" then keypress(0x41)
   elseif HoldKey == "S" then keypress(0x53)
   elseif HoldKey == "D" then keypress(0x44)
   end
  else
   if HeldKey == "W" then keyrelease(0x57)
   elseif HeldKey == "A" then keyrelease(0x41)
   elseif HeldKey == "S" then keyrelease(0x53)
   elseif HeldKey == "D" then keyrelease(0x44)
   end
  end    
 end})

Main1:AddDropdown({
 Name = "Key",
 Default = "W",
 Options = {"W", "A", "S", "D"},
 Callback = function(Value)
  HoldKey = Value
 end    
})

local Main = General:AddSection({
 Name = "X-Ray"
})

local XRayOpacity
local XrayToggled

Main:AddToggle({
 Name = "X-Ray",
 Default = false,
 Callback = function(Value)
  XrayToggled = Value
  for i, v in pairs(game.Workspace:GetDescendants()) do
   if v:IsA("Part") and not v.Parent:FindFirstChild("Humanoid") then
    if Value then
     v.LocalTransparencyModifier = XRayOpacity
    else v.LocalTransparencyModifier = 0
    end
   end
  end    
 end
})

Main:AddSlider({
 Name = "X-Ray Transparency",
 Min = 0,
 Max = 1,
 Default = 40,
 Color = Color3.fromRGB(255,255,255),
 Increment = 0.1,
 ValueName = "Transparency",
 Callback = function(Value)
  XRayOpacity = Value
  if XrayToggled then
   for i, v in pairs(game.Workspace:GetDescendants()) do
    if v:IsA("Part") and not v.Parent:FindFirstChild("Humanoid") then
     v.LocalTransparencyModifier = XRayOpacity
    end
   end    
  end
 end    
})

local Misc = General:AddSection({
 Name = "Misc."
})

Misc:AddTextbox({
 Name = "Set FPS Cap",
 Default = "60",
 TextDisappear = true,
 Callback = function(Value) setfpscap(tonumber(Value))
 end   
})

Misc:AddToggle({
 Name = "Hide all accessories",
 Default = false,
 Callback = function(Value)
  for i, v in pairs(game.Players:GetChildren()) do
   for i, v in pairs(v.Character:GetChildren()) do
    if v:IsA("Accessory") then
     if Value then v.Handle.Transparency = 1;
     else v.Handle.Transparency = 0;
     end
    end
   end
  end
 end    
})

Misc:AddButton({
 Name = "Clear Character Appearance",
 Callback = function() game.Players.LocalPlayer:ClearCharacterAppearance()
 end    
})

local EspTab = Window:MakeTab({
 Name = "Esp",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

-- Esp Variables

local EspTransparency
local EspOutlineTransparency
local EspColor
local EspOutlineColor
local EspTeam = "All"
local EspToggled = false

local EspToggle = EspTab:AddToggle({
 Name = "Esp Toggle",
 Default = false,
 Callback = function(Value)
  if game.PlaceId ~= 606849621 and 286090429 then
   if #game.Players:GetChildren() > 31 then
    OrionLib:MakeNotification({
     Name = "Too many players",
     Content = "There are "..#game.Players:GetChildren().." Players in the server, maximum is 31",
     Image = "rbxassetid://4483345998",
     Time = 5
    })
   else
    if Value then
     EspToggled = true
     OrionLib:MakeNotification({
      Name = "Esp Enabled!",
      Content = "By DylanIsAKing#2402",
      Image = "rbxassetid://4483345998",
      Time = 5
     })
     for i, v in pairs(game.Players:GetChildren()) do
      if v.Name ~= game.Players.LocalPlayer.Name then
       if game.PlaceId == 286090429 then
        if v.Status.Team.Value ~= game.Players.LocalPlayer.Status.Team.Value and EspTeam then
         local highlight = Instance.new("Highlight")
         highlight.Parent = v.Character
         highlight.Name = "esp"
         highlight.FillTransparency = EspTransparency
         highlight.OutlineTransparency = EspOutlineTransparency
         highlight.FillColor = EspColor
         highlight.OutlineColor = EspOutlineColor
        elseif EspTeam == false then
         local highlight = Instance.new("Highlight")
         highlight.Parent = v.Character
         highlight.Name = "esp"
         highlight.FillTransparency = EspTransparency
         highlight.OutlineTransparency = EspOutlineTransparency
         highlight.FillColor = EspColor
         highlight.OutlineColor = EspOutlineColor
        end
       else
        local highlight = Instance.new("Highlight")
        highlight.Parent = v.Character
        highlight.Name = "esp"
        highlight.FillTransparency = EspTransparency
        highlight.OutlineTransparency = EspOutlineTransparency
        highlight.FillColor = EspColor
        highlight.OutlineColor = EspOutlineColor
       end
      end
     end
    else
     EspToggled = false
     OrionLib:MakeNotification({
      Name = "Esp Disabled!",
      Content = "By DylanIsAKing#2402",
      Image = "rbxassetid://4483345998",
      Time = 5
     })
     for i, v in pairs(game.Players:GetChildren()) do
      if v.Character:FindFirstChild("esp") then
       v.Character:FindFirstChildOfClass("Highlight"):Destroy()
      end
     end
    end
   end
  elseif game.PlaceId == 606849621 then
   if #game.Players:GetChildren() > 31 then
    OrionLib:MakeNotification({
     Name = "Too many players",
     Content = "There are "..#game.Players:GetChildren().." Players in the server, maximum is 31",
     Image = "rbxassetid://4483345998",
     Time = 5
    })
   else
    if Value then
     EspToggled = true
     OrionLib:MakeNotification({
      Name = "Esp Enabled!",
      Content = "By DylanIsAKing#2402",
      Image = "rbxassetid://4483345998",
      Time = 5
     })
     for i, v in pairs(game:GetChildren()) do
      if v:IsA("Players") then
       for i, v in pairs(v:GetChildren()) do
        if EspTeam == "Police" and v.TeamValue.Value == "Police" and v.Name ~= game.Players.LocalPlayer.Name then
         local highlight = Instance.new("Highlight")
         highlight.Parent = v.Character
         highlight.Name = "esp"
         highlight.FillTransparency = EspTransparency
         highlight.OutlineTransparency = EspOutlineTransparency
         highlight.FillColor = EspColor
         highlight.OutlineColor = EspOutlineColor
        elseif EspTeam == "Criminals" and v.TeamValue.Value == "Prisoner" and v.Name ~= game.Players.LocalPlayer.Name then
         local highlight = Instance.new("Highlight")
         highlight.Parent = v.Character
         highlight.Name = "esp"
         highlight.FillTransparency = EspTransparency
         highlight.OutlineTransparency = EspOutlineTransparency
         highlight.FillColor = EspColor
         highlight.OutlineColor = EspOutlineColor
        elseif EspTeam == "All" and v.Name ~= game.Players.LocalPlayer.Name then
         local highlight = Instance.new("Highlight")
         highlight.Parent = v.Character
         highlight.Name = "esp"
         highlight.FillTransparency = EspTransparency
         highlight.OutlineTransparency = EspOutlineTransparency
         highlight.FillColor = EspColor
         highlight.OutlineColor = EspOutlineColor
        end
       end
      end
     end
    else
     EspToggled = false
     OrionLib:MakeNotification({
      Name = "Esp Disabled!",
      Content = "By DylanIsAKing#2402",
      Image = "rbxassetid://4483345998",
      Time = 5
     })
     for i, v in pairs(game.Players:GetChildren()) do
      if v.Character:FindFirstChild("esp") then
       v.Character:FindFirstChildOfClass("Highlight"):Destroy()
      end
     end
    end
   end
  end
 end    
})

if game.PlaceId == 606849621 then
 EspTab:AddDropdown({
  Name = "Esp Team",
  Default = "All",
  Options = {"All", "Police", "Criminals"},
  Callback = function(Value)
   EspTeam = Value

   if EspToggled then
    for i, v in pairs(game:FindFirstChildOfClass("Players"):GetChildren()) do
     v.Character.esp:Destroy()
    end
    for i, v in pairs(game:GetChildren()) do
     if v:IsA("Players") then
      for i, v in pairs(v:GetChildren()) do
       if EspTeam == "Police" and v.TeamValue.Value == "Police" and v.Name ~= game.Players.LocalPlayer.Name then
        local highlight = Instance.new("Highlight")
        highlight.Parent = v.Character
        highlight.Name = "esp"
        highlight.FillTransparency = EspTransparency
        highlight.OutlineTransparency = EspOutlineTransparency
        highlight.FillColor = EspColor
        highlight.OutlineColor = EspOutlineColor
       elseif EspTeam == "Criminals" and v.TeamValue.Value == "Prisoner" and v.Name ~= game.Players.LocalPlayer.Name then
        local highlight = Instance.new("Highlight")
        highlight.Parent = v.Character
        highlight.Name = "esp"
        highlight.FillTransparency = EspTransparency
        highlight.OutlineTransparency = EspOutlineTransparency
        highlight.FillColor = EspColor
        highlight.OutlineColor = EspOutlineColor
       elseif EspTeam == "All" and v.Name ~= game.Players.LocalPlayer.Name then
        local highlight = Instance.new("Highlight")
        highlight.Parent = v.Character
        highlight.Name = "esp"
        highlight.FillTransparency = EspTransparency
        highlight.OutlineTransparency = EspOutlineTransparency
        highlight.FillColor = EspColor
        highlight.OutlineColor = EspOutlineColor
       end
      end
     end
    end
   end
  end
 })
elseif game.PlaceId == 286090429 then
 EspTab:AddToggle({
  Name = "Only Esp Opposite Team",
  Default = true,
  Callback = function(Value)
   EspTeam = Value
  end    
 })
end

EspTab:AddBind({
 Name = "Esp Bind",
 Default = Enum.KeyCode.Zero,
 Hold = false,
 Callback = function()
  if EspToggled then
   EspToggle:Set(false)
  else
   EspToggle:Set(true)
  end
 end    
})

local EspColorTab = EspTab:AddSection({
 Name = "Color"
})

local EspFillPicker = EspColorTab:AddColorpicker({
 Name = "Esp Fill Color",
 Default = Color3.fromRGB(255, 0, 0),
 Callback = function(Value)
  EspColor = Value
  for i, v in pairs(game.Players:GetChildren()) do
   if v.Character:FindFirstChild("esp") then
    v.Character.esp.FillColor = EspColor
   end
  end
 end   
})

local EspColorOutlinePicker = EspColorTab:AddColorpicker({
 Name = "Esp Outline Color",
 Default = Color3.fromRGB(255, 255, 255),
 Callback = function(Value)
  EspOutlineColor = Value
  for i, v in pairs(game.Players:GetChildren()) do
   if v.Character:FindFirstChild("esp") then
    v.Character.esp.OutlineColor = EspOutlineColor
   end
  end
 end   
})

local EspCust = EspTab:AddSection({
 Name = "Customization"
})

local FillTransSlider = EspCust:AddSlider({
 Name = "Fill Transparency",
 Min = 0,
 Max = 1,
 Default = 0.5,
 Color = Color3.fromRGB(255,255,255),
 Increment = 0.05,
 ValueName = "Transparency",
 Callback = function(Value)
  EspTransparency = Value
  for i, v in pairs(game.Players:GetChildren()) do
   if v.Character:FindFirstChild("esp") then
    v.Character.esp.FillTransparency = EspTransparency
   end
  end
 end    
})

local OutTransSlider = EspCust:AddSlider({
 Name = "Outline Transparency",
 Min = 0,
 Max = 1,
 Default = 0,
 Color = Color3.fromRGB(255,255,255),
 Increment = 0.05,
 ValueName = "Transparency",
 Callback = function(Value)
  EspOutlineTransparency = Value
  for i, v in pairs(game.Players:GetChildren()) do
   if v.Character:FindFirstChild("esp") then
    v.Character.esp.OutlineTransparency = EspOutlineTransparency
   end
  end
 end    
})

local OtherEsp = EspTab:AddSection({
 Name = "Other"
})

OtherEsp:AddButton({
 Name = "Refresh (for new players)",
 Callback = function()
  if EspToggled then
   for i, v in pairs(game:FindFirstChildOfClass("Players"):GetChildren()) do
    if not v.Character:FindFirstChild("esp") and v.Name ~= game:FindFirstChildOfClass("Players").LocalPlayer.Name then
     if game.PlaceId == 286090429 then
      if v.Status.Team.Value ~= game.Players.LocalPlayer.Status.Team.Value and EspTeam then
       local highlight = Instance.new("Highlight")
       highlight.Parent = v.Character
       highlight.Name = "esp"
       highlight.FillTransparency = EspTransparency
       highlight.OutlineTransparency = EspOutlineTransparency
       highlight.FillColor = EspColor
       highlight.OutlineColor = EspOutlineColor
      elseif EspTeam == false then
       local highlight = Instance.new("Highlight")
       highlight.Parent = v.Character
       highlight.Name = "esp"
       highlight.FillTransparency = EspTransparency
       highlight.OutlineTransparency = EspOutlineTransparency
       highlight.FillColor = EspColor
       highlight.OutlineColor = EspOutlineColor
      end
     else
      local highlight = Instance.new("Highlight")
      highlight.Parent = v.Character
      highlight.Name = "esp"
      highlight.FillTransparency = EspTransparency
      highlight.OutlineTransparency = EspOutlineTransparency
      highlight.FillColor = EspColor
      highlight.OutlineColor = EspOutlineColor
     end
    end
   end
  else
   OrionLib:MakeNotification({
    Name = "Esp Not Toggled!",
    Content = "By DylanIsAKing#2402",
    Image = "rbxassetid://4483345998",
    Time = 5
   })
  end
 end    
})

OtherEsp:AddBind({
 Name = "Refresh bind",
 Default = Enum.KeyCode.Plus,
 Hold = false,
 Callback = function()
  if EspToggled then
   for i, v in pairs(game:FindFirstChildOfClass("Players"):GetChildren()) do
    if not v.Character:FindFirstChild("esp") and v.Name ~= game:FindFirstChildOfClass("Players").LocalPlayer.Name then
     if game.PlaceId == 286090429 then
      if v.Status.Team.Value ~= game.Players.LocalPlayer.Status.Team.Value and EspTeam then
       local highlight = Instance.new("Highlight")
       highlight.Parent = v.Character
       highlight.Name = "esp"
       highlight.FillTransparency = EspTransparency
       highlight.OutlineTransparency = EspOutlineTransparency
       highlight.FillColor = EspColor
       highlight.OutlineColor = EspOutlineColor
      elseif EspTeam == false then
       local highlight = Instance.new("Highlight")
       highlight.Parent = v.Character
       highlight.Name = "esp"
       highlight.FillTransparency = EspTransparency
       highlight.OutlineTransparency = EspOutlineTransparency
       highlight.FillColor = EspColor
       highlight.OutlineColor = EspOutlineColor
      end
     else
      local highlight = Instance.new("Highlight")
      highlight.Parent = v.Character
      highlight.Name = "esp"
      highlight.FillTransparency = EspTransparency
      highlight.OutlineTransparency = EspOutlineTransparency
      highlight.FillColor = EspColor
      highlight.OutlineColor = EspOutlineColor
     end
    end
   end
  else
   OrionLib:MakeNotification({
    Name = "Esp Not Toggled!",
    Content = "By DylanIsAKing#2402",
    Image = "rbxassetid://4483345998",
    Time = 5
   })
  end
 end    
})

OtherEsp:AddButton({
 Name = "Reset Settings",
 Callback = function()
  EspFillPicker:Set(Color3.fromRGB(255, 0, 0))
  EspColorOutlinePicker:Set(Color3.fromRGB(255, 255, 255))
  FillTransSlider:Set(0.5)
  OutTransSlider:Set(0)
 end    
})

local Credits = Window:MakeTab({
 Name = "Credits",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Credit = Credits:AddSection({
 Name = "Credits"
})

Credit:AddParagraph("DylanIsAKing#2402","Creator")

Credit:AddButton({
 Name = "Copy to clipboard",
 Callback = function()
  setclipboard("DylanIsAKing#2402")
  OrionLib:MakeNotification({
   Name = "Copied To Clipboard!",
   Content = "By DylanIsAKing#2402",
   Image = "rbxassetid://4483345998",
   Time = 5
  })
 end    
})
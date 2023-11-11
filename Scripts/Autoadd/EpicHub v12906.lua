local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "EpicHub", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest";IntroText = "EpicHub || "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.." Script";})
local p = game:GetService("Players")
local min = -250
p.RespawnTime = 1
workspace.FallenPartsDestroyHeight = -math.huge
for i, v in next, workspace:GetDescendants() do
if p:GetPlayerFromCharacter(v) == p.LocalPlayer then
    c = v

    break
end
end
local humanoid, rp, vim = c:FindFirstChildWhichIsA("Humanoid"), c:WaitForChild("HumanoidRootPart"), game:GetService("VirtualInputManager")
p.LocalPlayer.CharacterAdded:Connect(function(e)
task.delay(.25, function()
    rp = e:WaitForChild("HumanoidRootPart")
    humanoid = e:FindFirstChildWhichIsA("Humanoid")
    c = e
    end)
end)
-- create a flying part
local part = Instance.new("Part", workspace)
part.Anchored = true
part.CanCollide = true
part.Size = Vector3.new(30,1,30)
part.Position = Vector3.new(0, 200, 0)
local cframe = CFrame.new(0, 210, 0)

local ManTab = Window:MakeTab({
Name = "Main",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})
local CombatTab = Window:MakeTab({
    Name = 'Combat',
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false;
})
local LightingTab = Window:MakeTab({
  Name = 'Graphics',
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})
local ADTab = Window:MakeTab({
Name = "Auto-Delete",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})
local CTab = Window:MakeTab({
  Name = "Inventory",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
  })
local pTab= Window:MakeTab({
  Name = "PvP",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})

ManTab:AddToggle({
      Name = "Auto collect chests",
      Default = false,
      Callback = function(V)
        ac = V
        end
    })
CombatTab:AddToggle({
    Name = 'Attack RC';
    Default = false;
    Callback = function(Value)
    local tool = p.LocalPlayer.Backpack:GetChildren()[1]
    if not toop then tool = c:FindFirstChildWhichIsA("Tool") end
     v2 = Value
     while v2 do
    if workspace:FindFirstChild("Radioactive Consumer") then
    
    local v = workspace:FindFirstChild("Radioactive Consumer")
        tool.Parent = c
        repeat 
        task.wait()
          local s, e = pcall(function()
              rp.CFrame = v.HumanoidRootPart.CFrame
            end)
           tool.Parent = c
          tool:Activate()
          if not s then
           OrionLib:MakeNotification({
        Name = "Error",
        Content = "Error while attacking RC, message: " .. e,
        Image = "rbxassetid://4483345998",
        Time = 4
      })
          end
        until v:FindFirstChildWhichIsA("Humanoid").Health == 0 or not v2
        
         for i, v in workspace:GetChildren() do
         if v.Name == 'RadioactiveChest_p' then
         rp.CFrame = v.CFrame
         task.wait(.25)
         fireproximityprompt(v.ProximityPrompt)
         end
         end
         
         for i, v in p.LocalPlayer:GetChildren() do
         if v.Name:lower():find("radioactive") and not v.Name:lower():find("cup") then
         v.Parent = c v:Activate() v.Parent = p.LocalPlayer.Backpack
         end
         end
         
    end
    task.wait(1)
    end
    
    end
})
CombatTab:AddToggle({
    Name = 'Spam attack';
    Default = false;
    Callback = function(Value)
    local tool = c:FindFirstChildWhichIsA("Tool")
    vv = Value
    while vv and task.wait() do
    tool.Parent = c
    tool:Activate()
    end
    end
    })
local delay = 0
workspace.DescendantAdded:Connect(function(chest)
local v = chest
if ac and not v:IsA("Folder") and v.Name:lower():find("chest") then
task.delay(1 + delay, function()
delay = math.huge
for i, v in next, workspace:GetDescendants() do
      if v.Name:lower():find("chest") and v.Parent == workspace and not v:IsA("Folder") then
      task.wait(.2)
      rp.CFrame = v.CFrame
      task.wait(.15)
      local s,e=pcall(function()
        fireproximityprompt(v.ProximityPrompt)
        end)
    elseif v.Name:lower():find("chest") and v.Parent == workspace.chests then
    task.wait(.2)
      rp.CFrame = v.CFrame
      task.wait(.15)
      local s,e=pcall(function()
        fireproximityprompt(v.ProximityPrompt)
        end)
    end
    end
    rp.CFrame = cframe
    delay = 0

end)
end
end)
ManTab:AddButton({
Name = "Collect all chests.",
Callback = function()
    for i, v in next, workspace:GetDescendants() do
      if v.Name:lower():find("chest") and v.Parent == workspace and not v:IsA("Folder") then
      task.wait(.2)
      rp.CFrame = v.CFrame
      task.wait(.15)
      local s,e=pcall(function()
        fireproximityprompt(v.ProximityPrompt)
        end)
    elseif v.Name:lower():find("chest") and v.Parent == workspace.chests then
    task.wait(.2)
      rp.CFrame = v.CFrame
      task.wait(.15)
      local s,e=pcall(function()
        fireproximityprompt(v.ProximityPrompt)
        end)
    end
    end
    rp.CFrame = cframe
    delay = 0

end
})
local items = {}

CTab:AddButton({
Name = "List Inventory Items",
Callback = function()
    for i, v in p.LocalPlayer.Backpack:GetChildren() do
    if type(items[v.Name]) == 'number' then
    items[v.Name] += 1
    else
    items[v.Name] = 1
    end
  end
      for i, v in items do
      OrionLib:MakeNotification({
        Name = i,
        Content = "x"..tostring(v),
        Image = "rbxassetid://4483345998",
        Time = 1.5
      })
      task.wait(.5)
      end
      items = {}
  end
})
CTab:AddButton({
Name = "Item Count",
Callback = function()
    OrionLib:MakeNotification({
      Name = "Item Count:",
      Content = tostring(#p.LocalPlayer.Backpack:GetChildren()) .. " items.",
      Image = "rbxassetid://4483345998",
      Time = 2.5
    })
  end
})
CTab:AddButton({
Name = "Use all items in inventory.",
Callback = function()
      for i, v in p.LocalPlayer.Backpack:GetChildren() do
        v.Parent = c; v:Activate() v.Parent = p.LocalPlayer.Backpack
      end
    end})
ManTab:AddButton({
Name = "Teleport to safety.",
Callback = function()
    local s,e=pcall(function() rp.CFrame = cframe end)
    if s then
    OrionLib:MakeNotification({
      Name = "Success",
      Content = "Successfully teleported to safety.",
      Image = "rbxassetid://4483345998",
      Time = 1.5
    })
    else
      OrionLib:MakeNotification({
        Name = "Error",
        Content = "Error occured while teleporting, Message: " .. e,
        Image = "rbxassetid://4483345998",
        Time = 1.5
      })
    end
  end
})
ManTab:AddButton({
Name = "Open all chests in inventory.",
Callback = function()
    local chests = 0
    local s, e = pcall(function()
      for i, v in p.LocalPlayer.Backpack:GetChildren() do
          if v:IsA("Tool") and v.Name:lower():find("chest") then
          v.Parent = c
          v:Activate()
          v.Parent = p.LocalPlayer.Backpack
          chests+=1
          end
        end
      end)
    if s then
    OrionLib:MakeNotification({
      Name = "Success",
      Content = "Opened " .. tostring(chests) .. " chests.",
      Image = "rbxassetid://4483345998",
      Time = 2.5
    })
    else
      OrionLib:MakeNotification({
        Name = "Fail",
        Content = "Error Message: " .. e,
        Image = "rbxassetid://4483345998",
        Time = 2.5
      })
    end
  end
})
ManTab:AddButton({
Name = "Chests on map count",
Callback = function()
    d = 0
    for i, v in next, workspace:GetDescendants() do 
    if v.Name:lower():find("chest") and not v:IsA("Folder") and v.Parent == workspace or v.Parent == workspace.chests then
    d+=1
    end
    end
    OrionLib:MakeNotification({Name = "Chests", Content = d, Image = "rbxassetid://4483345998", Time = 4})
  end
})
LightingTab:AddButton({
      Name = "Brightness & Ambient",
      Default = false,
      Callback = function()
        game:GetService("Lighting").Ambient = Color3.fromRGB(255,255,255)
        game:GetService("Lighting").Brightness = 3
        
        end
    })
LightingTab:AddButton({
    Name = 'No Shadows',
    Callback = function()
    game:GetService("Lighting").GlobalShadows = false
    end
})
LightingTab:AddButton({
      Name = "Regular Lighting",
      Default = false,
      Callback = function(V)
        game:GetService("Lighting").Ambient = Color3.fromRGB(77, 77, 77)
        game:GetService("Lighting").Brightness = 2
        game:GetService("Lighting").GlobalShadows = true
        end
    })
local autodels = {}
ADTab:AddTextbox({
Name = "Auto Delete (itemname)",
Default = "",
TextDisappear = true,
Callback = function(Value)
  if Value ~= ("" or " ") then
    ADTab:AddToggle({
      Name = Value,
      Default = false,
      Callback = function(V)
        if not V then for i, v in autodels do if v == Value then v = '' end end else table.insert(autodels, Value) end
        end
    })
end
  end
})

ADTab:AddButton({
Name = "Clear list",
Callback = function()
    autodels = {}
  end
})
ADTab:AddButton({
Name = "Show list",
Callback = function()
    for i, v in autodels do OrionLib:MakeNotification({
        Name = "AutoDel #"..tostring(i), Content = v, Image = "rbxassetid://4483345998", Time = 1
      })
      task.wait(1)
  end
end
})
ADTab:AddButton({
Name = "Delete auto-deleted items from inventory",
Callback = function()
    for i, v in p.LocalPlayer.Backpack:GetChildren() do if table.find(autodels, v.Name) then v:Destroy() end end

    OrionLib:MakeNotification({Name = "Success!", Content = "Deleted all bugged auto-deleted items (Items that did not disappear even when they're auto-deleted)", Image = "rbxassetid://4483345998", Time = 4})
  end
})
ADTab:AddToggle({
Name = "Oil Cup",
Default = false,
Callback = function(Value)
  if Value then
      if not table.find(autodels, "Oil Cup") then table.insert(autodels, "Oil Cup") end
    else
      if table.find(autodels, "Oil Cup") then autodels["Oil Cup"] = nil end
    end
end
})
ADTab:AddToggle({
Name = "Blood Cup",
Default = false,
Callback = function(Value)
  if Value then
      if not table.find(autodels, "Blood Cup") then table.insert(autodels, "Blood Cup") end
    else
      if table.find(autodels, "Blood Cup") then autodels["Blood Cup"] = nil end
    end
end 
})
ManTab:AddTextbox({
Name = "Player Speed",
Default = humanoid.WalkSpeed,
TextDisappear = true,
Callback = function(Value)
  humanoid.WalkSpeed = tonumber(Value)
end	  
})
ManTab:AddTextbox({
Name = "Player JumpPower",
Default = humanoid.JumpPower,
TextDisappear = true,
Callback = function(Value)
  humanoid.JumpPower = tonumber(Value)
end
})
local mytable = {}
p.LocalPlayer.Backpack.ChildAdded:Connect(function(child)
  task.delay(.25, function()
  if table.find(autodels, child.Name) then
      child:Destroy()
      
       end
      end)
  end)
local e = p:GetChildren()
e[1] = nil
for i, v in e do
pTab:AddToggle({
 Name = 'Attack ' .. v.DisplayName .." (" .. v.Name .. ")",
 Default = false,
 Callback = function(Val)
 l = Val
 if l then
 for _, x in next, workspace:GetDescendants() do
 if p:GetPlayerFromCharacter(x) == v then
 root = x.HumanoidRootPart
 o = x
 end
 end
 for i, v in c:GetChildren() do if v:IsA("Tool") and not v.Name:lower():find("cup") and not v.Name:lower():find("chest") then
 tool = v
 end
 end
 if not tool then
 tool = p.LocalPlayer.Backpack:GetChildren()[1]
 tool.Parent = c
 end
 while o:FindFirstChildWhichIsA("Humanoid").Health > 0 and task.wait(.35) and l do
 local cf = CFrame.new(root.CFrame.X + math.random(1, 3), root.CFrame.Y + 1, root.CFrame.Z)
 rp.CFrame = cf
 tool.Parent = c
 tool:Activate()
 task.delay(.2, function()
 rp.CFrame = cframe
 end)
 end
 end
 end
})
end
p.PlayerAdded:Connect(function(v)
pTab:AddToggle({
 Name = 'Attack ' .. v.DisplayName .." (" .. v.Name .. ")",
 Default = false,
 Callback = function(Val)
 l = Val
 if l then
 for _, x in next, workspace:GetDescendants() do
 if p:GetPlayerFromCharacter(x) == v then
 root = x.HumanoidRootPart
 o = x
 end
 end
 for i, v in c:GetChildren() do if v:IsA("Tool") and not v.Name:lower():find("cup") and not v.Name:lower():find("chest") then
 tool = v
 end
 end
 if not tool then
 tool = p.LocalPlayer.Backpack:GetChildren()[1]
 tool.Parent = c
 end
 while o:FindFirstChildWhichIsA("Humanoid").Health > 0 and task.wait(.35) and l do
 local cf = CFrame.new(root.CFrame.X + math.random(1, 3), root.CFrame.Y + 1, root.CFrame.Z)
 rp.CFrame = cf
 tool.Parent = c
 tool:Activate()
 task.delay(.2, function()
 rp.CFrame = cframe
 end)
 end
 end
 end
 })
end)
task.spawn(function()
while task.wait(1) do
  if rp.CFrame.Y < min then rp.CFrame = cframe end
end
end)
p.PlayerRemoving:Connect(function(plr) 
print(plr.Name, "left")
for i, v in game:GetService("CoreGui").Orion:GetDescendants() do
if v.ClassName:find("Text") then
if v.Text:find(string.format("(%s)", plr.Name)) then
v.Parent:Destroy()
OrionLib:MakeNotification({
        Name = "Hey!",
        Content = plr.DisplayName.." ("..plr.Name..") left the game, ".. tostring(#p:GetPlayers()).." Players in the server.",
        Image = "rbxassetid://4483345998",
        Time = 5
      })
      print("abcde")
end
end
end
end)
local a = game:GetService("CoreGui").Orion:GetChildren()
if a[2]:FindFirstChild("TopBar") then a[2].Draggable = true a[2].Active = true else a[1].Draggable = true a[1].Active = true end
OrionLib:Init()
OrionLib:MakeNotification({
        Name = "Hey!",
        Content = "Script loaded successfully!",
        Image = "rbxassetid://4483345998",
        Time = 4
      })
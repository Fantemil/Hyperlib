local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/CandyIsAbsolute/RobloxScripts/main/wallysUILibv2.lua", true))()
local plr, chr, hrp = game:GetService("Players").LocalPlayer, game:GetService("Players").LocalPlayer.Character, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
local cam = game:GetService("Workspace").CurrentCamera;
local vim = game:GetService("VirtualInputManager")
local spawn, wait = task.spawn, task.wait;
local oldpos;
clipping = false;
anchored = false;
local ability = game:GetService("ReplicatedStorage").Ability;
local create_lair = game:GetService("ReplicatedStorage").CreateDungeon;
local store_stand = game:GetService("ReplicatedStorage").StoreStand;
local buy_item = game:GetService("ReplicatedStorage").BuyItem;
local npc = library:CreateWindow("Farm NPCs")
local item = library:CreateWindow("Farm Items")
local stand = library:CreateWindow("Farm Stand")
local misc = library:CreateWindow("Misc")
local abilities = {}
local configs = {
 {
  "DIO's The World",
  "Legendary"
 },
 {
  "Jotaro's Star Platinum",
  "Legendary"
 },
 {
  "Star Platinum OVA",
  "Legendary"
 },
 {
  "The World OVA",
  "Legendary"
 },
 {
  "The World",
  "Legendary"
 },
 {
  "Star Platinum",
  "Legendary"
 },
 {
  "Tusk Act 1",
  "Legendary"
 }
}
local blacklist = {
 [1] = "King Crimson Requiem",
 [2] = "DIO's The World Over Heaven",
 [3] = "Jotaro's Star Platinum Over Heaven",
 [4] = "Silver Chariot Requiem",
 [5] = "Made In Heaven",
 [6] = "Golden Experience Requiem",
 [7] = "The World OVA Over Heaven",
 [8] = "Star Platinum Over Heaven",
 [9] = "The Hand Requiem",
 [10] = "Star Platinum OVA Over Heaven",
 [11] = "The World Over Heaven",
 [12] = "C-Moon",
 [13] = "Tusk Act 2",
 [14] = "Tusk Act 3",
 [15] = "Tusk Act 4",
 [16] = "Skrunkly"
}
do
 local bVelocity = Instance.new("BodyVelocity")
 bVelocity.MaxForce = Vector3.new()
 bVelocity.Velocity = Vector3.new()
 bVelocity.Name = "bV"
 local bAngularVelocity = Instance.new("BodyAngularVelocity")
 bAngularVelocity.AngularVelocity = Vector3.new()
 bAngularVelocity.MaxTorque = Vector3.new()
 bAngularVelocity.Name = "bAV"
 bVelocity:Clone().Parent = chr.HumanoidRootPart;
 bAngularVelocity:Clone().Parent = chr.HumanoidRootPart;
 plr.CharacterAdded:Connect(function(chr)
  chr = chr;
  hrp = chr:WaitForChild("HumanoidRootPart", 387420489)
  bVelocity:Clone().Parent = hrp;
  bAngularVelocity:Clone().Parent = hrp
 end)
 for _, v in next, game:GetService("Workspace"):GetDescendants() do
  if v:IsA("Seat") then
   v:Destroy()
  end
 end
end;
do
 local list = {
  unpack(game:GetService("Workspace").Alive:GetChildren())
 }
 do
  table.remove(list, table.find(list, chr))
  game:GetService("Workspace").Alive.ChildAdded:Connect(function(v)
   if v == chr then
    return
   end;
   table.insert(list, v)
  end)
  game:GetService("Workspace").Alive.ChildRemoved:Connect(function(v)
   table.remove(list, table.find(list, v))
  end)
 end;
 npc:Section("")
 npc_toggle = npc:Toggle("NPC Farm", {
  flag = "enabled"
 }, function()
  if npc_toggle.Flag then
   oldpos = hrp.CFrame
  else
   if oldpos ~= nil then
    hrp.CFrame = oldpos
   end
  end
 end)
 npc_dung_toggle = npc:Toggle("Dungeon Farm", {
  flag = "enabled"
 }, function()
  if npc_dung_toggle.Flag then
   oldpos = hrp.CFrame
  else
   if oldpos ~= nil then
    hrp.CFrame = oldpos
   end
  end
 end)
 npc:Section("Options").Self:FindFirstChild("section_lbl").TextColor3 = Color3.new(1, 0.435294, 0)
 npc_distance = npc:Slider("Distance", {
  flag = "distance",
  min = 1,
  default = 6,
  max = 20
 })
 npc_direction = npc:Dropdown("", {
  flag = "direction",
  list = {
   "Over",
   "Under",
   "Behind"
  }
 })
 npc:Section("Select NPC/Dungeon").Self:FindFirstChild("section_lbl").TextColor3 = Color3.new(1, 0.435294, 0)
 npc_enemy = npc:Dropdown("", {
  flag = "enemy",
  list = list
 })
 npc_lair = npc:Dropdown("", {
  flag = "enemy",
  list = (function()
   local t = {}
   for _, v in next, game:GetService("ReplicatedFirst").preloader.Assets:GetChildren() do
    table.insert(t, tostring(v))
   end;
   return t
  end)()
 })
 npc:Section("Abilities").Self:FindFirstChild("section_lbl").TextColor3 = Color3.new(1, 0.435294, 0)
 npc:Toggle("Punch", {
  location = abilities,
  flag = "punch"
 })
 do
  local toggles = {}
  local t = {}
  function refreshAbilities()
   toggles = {}
   t = {}
   syn.set_thread_identity(2)
   for _,v in next, getconnections(game.UserInputService.InputBegan)do
    if getfenv(v.Function).script.Name == "StandScripts" then
     for _,v in next, debug.getconstants(v.Function) do
      table.insert(t, v)
     end
    end
   end
   syn.set_thread_identity(7)
   for _,v in next, t do
    if type(v) == "userdata" and v ~= Enum.UserInputType.MouseButton1 and v ~= Enum.KeyCode.Q then
     if t[_+1] ~= nil then
      print(t[_+1])
      toggle = npc:Toggle(tostring(t[_+1]), {
       location = abilities,
       flag = tostring(t[_+1])
      })
      table.insert(toggles, toggle)
     end
    end
   end
   
   on_stand_change = plr.Data.Stand:GetPropertyChangedSignal("Value"):connect(function()
    plr.Data.Attribute:GetPropertyChangedSignal("Value"):Wait()
    bottom_section_abilities.Self:Destroy()
    for _,v in next, toggles do
     v:Destroy()
    end
    spawn(refreshAbilities)
    bottom_section_abilities = npc:Section("")
   end)
  end
  spawn(refreshAbilities)
 end
 bottom_section_abilities = npc:Section("")
end;
do
 item:Section("")
 item_toggle = item:Toggle("Enabled", {
  flag = "enabled"
 }, function()
  if item_toggle.Flag then
   oldpos = hrp.CFrame
  end
 end)
 item:Section("Options").Self:FindFirstChild("section_lbl").TextColor3 = Color3.new(1, 0.435294, 0)
 item_speed = item:Slider("Speed", {
  flag = "speed",
  precise = true,
  min = 0,
  default = 0.05,
  max = 0.5
 })
 item:Section("")
end;
do
 local stands = {}
 local attributes = {}
 do
  for _, v in next, require(game:GetService("Lighting").StandStats) do
   if not table.find(blacklist, v.Name) then
    stands[#stands + 1] = v.Name
   end
  end;
  for _, v in next, require(game:GetService("Lighting").AttributeStats) do
   attributes[#attributes + 1] = v.Attribute
  end
 end;
 stand:Section("")
 stand_toggle = stand:Toggle("Enabled", {
  flag = "enabled"
 }, function()
  if rconsolewarn and stand_toggle.Flag == true then
   rconsoleclear()
  end
 end)
 stand:Section("Prioritize").Self:FindFirstChild("section_lbl").TextColor3 = Color3.new(1, 0.435294, 0)
 stand_prioritize = stand:Dropdown("", {
  flag = "prioritize",
  list = {
   "Any",
   "Both",
   "Stand",
   "Attribute"
  }
 }):Refresh({
  "Any"
 })
 stand:Section("Select Stands").Self:FindFirstChild("section_lbl").TextColor3 = Color3.new(1, 0.435294, 0)
 s_stand = stand:SearchBox("", {
  flag = "s_stand",
  list = stands
 }):Refresh({
  "None"
 })
 s_attr = stand:SearchBox("", {
  flag = "s_attr",
  list = attributes
 }):Refresh({
  "None"
 })
 stand:Button("Add Config", function()
  table.insert(configs, {
   s_stand.Flag,
   s_attr.Flag
  })
  print(#configs)
  local stnd = s_stand.Flag or "None"
  local attr = s_attr.Flag or "None"
  stand:Button("Stand: " .. tostring(stnd) .. "\nAttribute: " .. tostring(attr), function(self)
   local cache = {
    s_stand.Flag,
    s_attr.Flag
   }
   table.remove(configs, table.find(configs, cache))
   print(#configs)
   self:Destroy()
  end)
  if bottom_section ~= nil then
   bottom_section:Destroy("")
   bottom_section = stand:Section("")
  end
 end)
 stand:Section("Whitelisted").Self:FindFirstChild("section_lbl").TextColor3 = Color3.new(1, 0.435294, 0)
 do
  for _, v in next, configs do
   stand:Button("Stand: " .. tostring(v[1]) .. "\nAttribute: " .. tostring(v[2]), function(self)
    local cache = {
     v[1],
     v[2].Flag
    }
    table.remove(configs, table.find(configs, cache))
    print(#configs)
    self:Destroy()
   end)
  end
 end;
 bottom_section = stand:Section("")
end;
do
 misc:Section("")
 for _, v in next, plr.StandSlots:GetChildren() do
  local slot = v.Name:split("Slot")[2]
  local stand = v:FindFirstChild('Stand')
  local attr = v:FindFirstChild('Attribute')
  local button = misc:Button("Stand: " .. stand.Value .. "\nAttribute: " .. attr.Value, function()
   store_stand:FireServer(tonumber(slot))
  end)
  stand:GetPropertyChangedSignal('Value'):Connect(function()
   attr:GetPropertyChangedSignal('Value'):Wait()
   button.Self:FindFirstChildOfClass('TextButton').Text = "Stand: " .. stand.Value .. "\nAttribute: " .. attr.Value
  end)
 end;
 misc:Section("")
 misc:Button("Buy 5 Stand Arrows", function()
  buy_item:FireServer("5Stand Arrow")
 end)
 misc:Button("Buy 5 Rokakaka Fruits", function()
  buy_item:FireServer("5Rokakaka")
 end)
 misc:Button("Buy Stand Arrow", function()
  buy_item:FireServer("Stand Arrow")
 end)
 misc:Button("Buy Rokakaka Fruit", function()
  buy_item:FireServer("Rokakaka")
 end)
 misc:Section("")
end;
function useAbilities()
 if not chr:FindFirstChild("Summoned").Value then
  repeat
   ability:FireServer("Stand Summon", {})
   wait(3)
  until chr:FindFirstChild("Summoned").Value
 end;
 for i, v in next, abilities do
  if v == true then
   if tostring(i) == "punch" then
    for i = 1, 3 do
     ability:FireServer("Punch", {})
     wait()
    end
   else
    ability:FireServer(i, {true})
   end
  end
 end
end;
function createDungeon()
 create_lair:FireServer(npc_lair.Flag)
 local dungeon = game:GetService("Workspace").Dungeons.ChildAdded:Wait()
 for _, v in next, dungeon:WaitForChild("NPCSpawns", 387420489):GetChildren() do
  local x, y, z = v.CFrame:components()
  hrp.CFrame = CFrame.new(x, y + npc_distance.Flag, z)
  wait(.25)
 end;
 for _, v in next, dungeon:WaitForChild("NPCS", 387420489):GetChildren() do
  if v:FindFirstChild("Humanoid") then
   local enemy_hrp = v.HumanoidRootPart;
   repeat
    wait()
    if not npc_dung_toggle.Flag then
     break
    end;
    if 1 > plr.Character:WaitForChild("Humanoid").Health then
     chr = plr.CharacterAdded:Wait()
     hrp = chr:WaitForChild("HumanoidRootPart", 387420489)
     wait(1)
     break
    end;
    if v == nil or v:FindFirstChild("HumanoidRootPart") == nil then
     return
    end;
    if npc_direction.Flag == "Over" then
     local x, y, z = enemy_hrp.CFrame:components()
     hrp.CFrame = CFrame.new(x, y + npc_distance.Flag, z) * CFrame.Angles(-math.rad(90), 0, -math.rad(180))
    elseif npc_direction.Flag == "Under" then
     local x, y, z = enemy_hrp.CFrame:components()
     hrp.CFrame = CFrame.new(x, y - npc_distance.Flag, z) * CFrame.Angles(math.rad(90), 0, math.rad(180))
    elseif npc_direction.Flag == "Behind" then
     hrp.CFrame = enemy_hrp.CFrame * CFrame.new(0, 0, npc_distance.Flag)
    end;
    useAbilities()
   until 1 > v:FindFirstChild("Humanoid").Health
  end
 end;
 if not npc_dung_toggle.Flag then
  return
 end;
 createDungeon()
end;
function useItem()
 if not stand_toggle.Flag then
  return
 end;
 local use_item = game:GetService("ReplicatedStorage").Useitem;
 if data[1] == "None" then
  local arrow = plr.Backpack:FindFirstChild("Unusual Arrow") or plr.Backpack:FindFirstChild("Charged Arrow") or plr.Backpack:WaitForChild("Stand Arrow", 387420489)
  chr.Humanoid:EquipTool(arrow)
  use_item:FireServer(arrow)
  local item_prompt = plr.PlayerGui:WaitForChild("ItemPrompt", 387420489).Frame.Yes;
  item_prompt:GetPropertyChangedSignal("Visible"):Wait()
  local x_o, y_o = item_prompt.Position.X.Scale * cam.ViewportSize.X, item_prompt.Position.Y.Scale * cam.ViewportSize.Y;
  local x_s, y_s = item_prompt.AbsoluteSize.X, item_prompt.AbsoluteSize.Y;
  repeat
   if not stand_toggle.Flag then
    break
   end;
   wait(.5)
   vim:SendMouseButtonEvent(x_o + (x_s / 2), y_o + (y_s / 2), 0, true, game, 0)
   wait()
   vim:SendMouseButtonEvent(x_o + (x_s / 2), y_o + (y_s / 2), 0, false, game, 0)
  until not plr.PlayerGui:FindFirstChild("ItemPrompt") and plr.Data.Stand.Value ~= data[1]
 else
  local roka = plr.Backpack:WaitForChild("Rokakaka", 387420489)
  chr.Humanoid:EquipTool(roka)
  use_item:FireServer(roka)
  local item_prompt = plr.PlayerGui:WaitForChild("ItemPrompt", 387420489).Frame.Yes;
  item_prompt:GetPropertyChangedSignal("Visible"):Wait()
  local x_o, y_o = item_prompt.Position.X.Scale * cam.ViewportSize.X, item_prompt.Position.Y.Scale * cam.ViewportSize.Y;
  local x_s, y_s = item_prompt.AbsoluteSize.X, item_prompt.AbsoluteSize.Y;
  repeat
   if not stand_toggle.Flag then
    break
   end;
   wait(.5)
   vim:SendMouseButtonEvent(x_o + (x_s / 2), y_o + (y_s / 2), 0, true, game, 0)
   wait()
   vim:SendMouseButtonEvent(x_o + (x_s / 2), y_o + (y_s / 2), 0, false, game, 0)
  until not plr.PlayerGui:FindFirstChild("ItemPrompt") and plr.Data.Stand.Value ~= data[1]
 end
end;
spawn(function()
 while game:GetService("RunService").Stepped:Wait() do
  if npc_toggle.Flag and npc_enemy.Flag then
   pcall(function()
    anchored = true;
    clipping = true;
    local enemy_hrp = npc_enemy.Flag:WaitForChild("HumanoidRootPart", 387420489)
    if npc_direction.Flag == "Over" then
     local x, y, z = enemy_hrp.CFrame:components()
     hrp.CFrame = CFrame.new(x, y + npc_distance.Flag, z) * CFrame.Angles(-math.rad(90), 0, -math.rad(180))
    elseif npc_direction.Flag == "Under" then
     local x, y, z = enemy_hrp.CFrame:components()
     hrp.CFrame = CFrame.new(x, y - npc_distance.Flag, z) * CFrame.Angles(math.rad(90), 0, math.rad(180))
    elseif npc_direction.Flag == "Behind" then
     hrp.CFrame = enemy_hrp.CFrame * CFrame.new(0, 0, npc_distance.Flag)
    end;
    useAbilities()
    if 1 > npc_enemy.Flag:WaitForChild("Humanoid", 387420489).Health then
     for _, v in next, game:GetService("Workspace").Alive:GetChildren() do
      if v:WaitForChild("Humanoid").Health > 0 and tostring(v) == tostring(npc_enemy.Flag) then
       npc_enemy.Flag = v;
       break
      end
     end
    end
   end)
  end;
  if npc_dung_toggle.Flag then
   pcall(function()
    anchored = true;
    clipping = true;
    createDungeon()
   end)
  end
 end
end)
spawn(function()
 while game:GetService("RunService").Stepped:Wait() do
  if item_toggle.Flag then
   pcall(function()
    if game:GetService("Workspace"):FindFirstChild("Unusual Arrow") or game:GetService("Workspace"):FindFirstChild("Stand Arrow") or game:GetService("Workspace"):FindFirstChild("Rokakaka") then
     for _, v in next, game:GetService("Workspace"):GetChildren() do
      if v:FindFirstChild("Handler") and not v:IsA("Model") and v:FindFirstChildOfClass("TouchTransmitter") then
       local x, y, z = v.CFrame:components()
       repeat
        game:GetService("RunService").Stepped:Wait()
        anchored = true;
        clipping = true;
        if not item_toggle.Flag then
         return
        end;
        hrp.CFrame = hrp.CFrame:lerp(CFrame.new(x, y, z), item_speed.Flag)
       until v.Parent ~= game:GetService("Workspace")
      end
     end
    else
     hrp.CFrame = oldpos;
     game:GetService("Workspace").ChildAdded:Wait()
     oldpos = hrp.CFrame
    end
   end)
  end
 end
end)
spawn(function()
 while game:GetService("RunService").Stepped:Wait() do
  if stand_toggle.Flag then
   local console = rconsolewarn or warn;
   curr = plr.Data.Stand.Value .. "/" .. plr.Data.Attribute.Value;
   data = curr:split("/")
   wait()
   console('Got: \n Stand: ' .. data[1] .. '\n Attribute: ' .. data[2])
   if stand_prioritize.Flag == "Both" then
    for _, v in next, configs do
     if table.find(v, data[1]) and table.find(v, data[2]) then
      if data[1] ~= "None" then
       console("Got wanted stand, stopping...")
       stand_toggle:Set(false)
       stand_toggle.Flag = false
      end
     end
    end
   elseif stand_prioritize.Flag == "Any" then
    for _, v in next, configs do
     if table.find(v, data[1]) or table.find(v, data[2]) then
      if data[1] ~= "None" then
       console("Got wanted stand, stopping...")
       stand_toggle:Set(false)
       stand_toggle.Flag = false
      end
     end
    end
   elseif stand_prioritize.Flag == "Stand" then
    for _, v in next, configs do
     if table.find(v, data[1]) ~= nil then
      if not data[1] ~= "None" then
       console("Got wanted stand, stopping...")
       stand_toggle:Set(false)
       stand_toggle.Flag = false
      end
     end
    end
   elseif stand_prioritize.Flag == "Attribute" then
    for _, v in next, configs do
     if table.find(v, data[2]) ~= nil then
      console("Got wanted attribute, stopping...")
      stand_toggle:Set(false)
      stand_toggle.Flag = false
     end
    end
   end;
   useItem()
  end
 end
end)
spawn(function()
 while true do
  game:GetService("RunService").Stepped:Wait()
  if clipping then
   print('noclipping')
   for _, v in next, chr:GetDescendants() do
    if v:IsA("BasePart") then
     v.CanCollide = false
    end
   end
  end
 end
end)
spawn(function()
 while true do
  game:GetService("RunService").Stepped:Wait()
  if anchored then
   print('anchored')
   hrp:WaitForChild("bV", 387420489).MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
   hrp:WaitForChild("bAV", 387420489).MaxTorque = Vector3.new(1 / 0, 1 / 0, 1 / 0)
  else
   hrp:WaitForChild("bV", 387420489).MaxForce = Vector3.new()
   hrp:WaitForChild("bAV", 387420489).MaxTorque = Vector3.new()
  end
 end
end)
spawn(function()
 while true do
  game:GetService("RunService").Stepped:Wait()
  if not npc_toggle.Flag and not npc_dung_toggle.Flag and not item_toggle.Flag then
   anchored = false;
   clipping = false
  end;
 end
end)
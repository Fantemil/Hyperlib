repeat wait() until game:IsLoaded() and pcall(function() local _ = game.HttpGet end);
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/DevSoGod/MyScript/main/library"))()
local Window = library:CreateWindow("Monster Ghoul || (not update any more)")
local Tab = Window:CreateTab("Main")
local Sector = Tab:CreateSector("Section1", "left")
Sector:AddDropdown("Method",{"Behind" , "Front" , "Over" , "Under" }, "Behind" ,false , function(v)
Â  Â  _G.Method = v
end)
Sector:AddTextbox("Distance" , "6" , function(w)
Â  Â  _G.Distance = tonumber(w)
end)
Sector:AddToggle("Auto YoshimuraQuest", false, function(t)
Â  Â  _G.AutoQuest = t
end)
Sector:AddToggle("Auto CashOut", false, function(t)
Â  Â  _G.CashOut = t
end)




local Sector = Tab:CreateSector("Section2", "Right")
boss = Sector:AddDropdown("Boss",{},false,true , function(v)
Â  Â  _G.Boss = v
end)
Sector:AddButton("RefreshBoss", function()
Â  Â  for o = 1,5 do
Â  Â  Â  Â  for _,v in pairs(boss:getList()) do
Â  Â  Â  Â  Â  Â  boss:Remove(tostring(v))
Â  Â  Â  Â  end
Â  Â  end
Â  Â  a = {}
Â  Â  for i,v in pairs(workspace.NPCs.BossSpawns:GetChildren()) do
Â  Â  Â  Â  table.insert(a,v.Name)
Â  Â  end
Â  Â  for _,v in pairs(a) do
Â  Â  Â  Â  if not table.find(boss:getList(), v) then
Â  Â  Â  Â  Â  Â  boss:Add(v)
Â  Â  Â  Â  end
Â  Â  end
end)
Sector:AddToggle("Auto Boss", false, function(t)
Â  Â  _G.AutoBoss = t
end)
local Sector = Tab:CreateSector("Section2", "Right")
t = Sector:AddDropdown("Select Trainer",{},false,false , function(v)
Â  Â  _G.Trainer = v
end)
Sector:AddButton("Refresh Trainer", function()
Â  Â  for o = 1,5 do
Â  Â  Â  Â  for _,v in pairs(t:getList()) do
Â  Â  Â  Â  Â  Â  t:Remove(tostring(v))
Â  Â  Â  Â  end
Â  Â  end
Â  Â  a = {}
Â  Â  for i,v in pairs(workspace.Trainer.Map:GetChildren()) do
Â  Â  Â  Â  table.insert(a,v.Name)
Â  Â  end
Â  Â  for _,v in pairs(a) do
Â  Â  Â  Â  if not table.find(t:getList(), v) then
Â  Â  Â  Â  Â  Â  t:Add(v)
Â  Â  Â  Â  end
Â  Â  end
end)
Sector:AddToggle("Auto Train", false, function(t)
Â  Â  _G.AutoTrain = t
end)









local Tab = Window:CreateTab("Attack")
local Sector = Tab:CreateSector("Section2", "Right")
aa = Sector:AddDropdown("Select Skill",{} ,false, true, function(v)
Â  Â  _G.Skill = v
end)
Sector:AddButton("RefreshSkill", function()
Â  Â  for o = 1,5 do
Â  Â  Â  Â  for _,v in pairs(aa:getList()) do
Â  Â  Â  Â  Â  Â  aa:Remove(tostring(v))
Â  Â  Â  Â  end
Â  Â  end
Â  Â  a = {}
Â  Â  for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MobileController:GetChildren()) do
Â  Â  Â  Â  if v.ClassName == "ImageButton" then
Â  Â  Â  Â  Â  Â  table.insert(a,v.Name)
Â  Â  Â  Â  end
Â  Â  end
Â  Â  for _,v in pairs(a) do
Â  Â  Â  Â  if not table.find(aa:getList(), v) then
Â  Â  Â  Â  Â  Â  aa:Add(v)
Â  Â  Â  Â  end
Â  Â  end
end)
Sector:AddToggle("AutoSkill", false, function(t)
Â  Â  _G.AutoSkill = t
end)
bb = Sector:AddDropdown("Select Equip",{} ,false, false, function(v)
Â  Â  _G.Equip = v
end)
Sector:AddButton("RefreshSkill", function()
Â  Â  for o = 1,5 do
Â  Â  Â  Â  for _,v in pairs(bb:getList()) do
Â  Â  Â  Â  Â  Â  bb:Remove(tostring(v))
Â  Â  Â  Â  end
Â  Â  end
Â  Â  a = {}
Â  Â  for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MainUI.StageNumber.Frame:GetChildren()) do
Â  Â  Â  Â  if v.ClassName == "TextButton" then
Â  Â  Â  Â  Â  Â  table.insert(a,v.Text)
Â  Â  Â  Â  end
Â  Â  end
Â  Â  for _,v in pairs(a) do
Â  Â  Â  Â  if not table.find(bb:getList(), v) then
Â  Â  Â  Â  Â  Â  bb:Add(v)
Â  Â  Â  Â  end
Â  Â  end
end)
Sector:AddToggle("AutoEquip", false, function(t)
Â  Â  _G.AutoEquip = t
end)






























local Tab = Window:CreateTab("Zones")
local Sector = Tab:CreateSector("Section1", "Left")
Sector:AddDropdown("Respawn Map",{"ArataKirishimaSpawn","ArenaSpawn","DCExchangerSpawn","MaskSpawn","QuinxSpawn","YoshimuraSpawn1","YoshimuraSpawn2","YoshitokiSpawn2"} ,"YoshimuraSpawn1", false, function(v)
Â  Â  _G.Map = v
end)
Sector:AddToggle("Auto Respawn", false, function(t)
Â  Â  _G.AutoRespawn = t
end)

local Sector = Tab:CreateSector("Section2", "Right")
for i,v in pairs(workspace.Indicator:GetChildren()) do
Â  Â  Sector:AddButton(v.Name, function()
Â  Â  Â  Â  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
Â  Â  end)
end





spawn(function()
Â  Â  pcall(function()
Â  Â  Â  Â  while wait() do
Â  Â  Â  Â  Â  Â  pcall(function()
Â  Â  Â  Â  Â  Â  Â  Â  if _G.AutoBoss then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  pcall(function()
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  if table.find(_G.Boss,"DragonBoss") and workspace.NPCs.BossSpawns.DragonBoss:FindFirstChildOfClass("Model") and workspace.NPCs.BossSpawns.DragonBoss:FindFirstChildOfClass("Model"):FindFirstChild("Humanoid") then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  if workspace.NPCs.BossSpawns.DragonBoss.DragonBoss:FindFirstChild("Scene") and tostring(workspace.NPCs.BossSpawns.DragonBoss.DragonBoss.HumanoidRootPart.CFrame) == "2936.21997, 685.60498, -641.000977, 0, 0, 1, 0, 1, -0, -1, 0, 0" then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  for i,v in pairs(workspace.NPCs.BossSpawns:GetChildren()) do
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  if v.Name == "DragonBoss" then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  for i,vv in pairs(v.DragonBoss.Scene:GetChildren()) do
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  if vv:FindFirstChild("Humanoid") then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  if _G.Method == "Behind" then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  MethodFarm = CFrame.new(0,0,_G.Distance) * CFrame.Angles(math.rad(0),0,0)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  elseif _G.Method == "Front" then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  MethodFarm = CFrame.new(0,0,-_G.Distance) * CFrame.Angles(math.rad(0),1800,0)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  elseif _G.Method == "Under" then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  MethodFarm = CFrame.new(0,-_G.Distance,0) * CFrame.Angles(math.rad(90),0,0)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  elseif _G.Method == "Over" then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  MethodFarm = CFrame.new(0,_G.Distance,0) Â * CFrame.Angles(math.rad(-90),0,0)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  else
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  MethodFarm = CFrame.new(0,0,_G.Distance)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  local BeenASecond, V3 = false, Vector3.new(0, 0, 0)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  for _, v in ipairs(game.Players.LocalPlayer.Character:GetDescendants()) do
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  if v.IsA(v, "BasePart") then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  v.Velocity, v.RotVelocity = V3, V3
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = vv.HumanoidRootPart.CFrame * MethodFarm or CFrame.new(0,0,_G.Distance)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  else
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  if _G.Method == "Behind" then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  MethodFarm = CFrame.new(0,0,_G.Distance) * CFrame.Angles(math.rad(0),0,0)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  elseif _G.Method == "Front" then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  MethodFarm = CFrame.new(0,0,-_G.Distance) * CFrame.Angles(math.rad(0),1800,0)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  elseif _G.Method == "Under" then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  MethodFarm = CFrame.new(0,-_G.Distance,0) * CFrame.Angles(math.rad(90),0,0)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  elseif _G.Method == "Over" then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  MethodFarm = CFrame.new(0,_G.Distance,0) Â * CFrame.Angles(math.rad(-90),0,0)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  else
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  MethodFarm = CFrame.new(0,0,_G.Distance)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  local BeenASecond, V3 = false, Vector3.new(0, 0, 0)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  for _, v in ipairs(game.Players.LocalPlayer.Character:GetDescendants()) do
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  if v.IsA(v, "BasePart") then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  v.Velocity, v.RotVelocity = V3, V3
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.NPCs.BossSpawns.DragonBoss.DragonBoss.HumanoidRootPart.CFrame * MethodFarm or CFrame.new(0,0,_G.Distance)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  elseif table.find(_G.Boss,"DragonBoss") and not workspace.NPCs.BossSpawns.DragonBoss:FindFirstChildOfClass("Model") and workspace.NPCs.BossSpawns.DragonBoss:FindFirstChild("TouchInterest") then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.NPCs.BossSpawns.DragonBoss.CFrame
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  else
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  for i,v in pairs(workspace.NPCs.BossSpawns:GetChildren()) do
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  if v:FindFirstChild("TouchInterest") and table.find(_G.Boss,v.Name) and not v:FindFirstChildOfClass("Model") then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  elseif v:FindFirstChild("TouchInterest") and table.find(_G.Boss,v.Name) and v:FindFirstChildOfClass("Model") and v:FindFirstChildOfClass("Model"):FindFirstChild("Humanoid") then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  repeat task.wait()
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  if _G.Method == "Behind" then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  MethodFarm = CFrame.new(0,0,_G.Distance) * CFrame.Angles(math.rad(0),0,0)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  elseif _G.Method == "Front" then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  MethodFarm = CFrame.new(0,0,-_G.Distance) * CFrame.Angles(math.rad(0),1800,0)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  elseif _G.Method == "Under" then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  MethodFarm = CFrame.new(0,-_G.Distance,0) * CFrame.Angles(math.rad(90),0,0)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  elseif _G.Method == "Over" then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  MethodFarm = CFrame.new(0,_G.Distance,0) Â * CFrame.Angles(math.rad(-90),0,0)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  else
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  MethodFarm = CFrame.new(0,0,_G.Distance)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  local BeenASecond, V3 = false, Vector3.new(0, 0, 0)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  for _, v in ipairs(game.Players.LocalPlayer.Character:GetDescendants()) do
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  if v.IsA(v, "BasePart") then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  v.Velocity, v.RotVelocity = V3, V3
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChildOfClass("Model").PrimaryPart.CFrame * MethodFarm or CFrame.new(0,0,_G.Distance)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  until not v:FindFirstChildOfClass("Model") or not _G.AutoBoss
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end)
Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  end)
Â  Â  Â  Â  end
Â  Â  end)
end)
spawn(function()
Â  Â  pcall(function()
Â  Â  Â  Â  while wait(1) do
Â  Â  Â  Â  Â  Â  pcall(function()
Â  Â  Â  Â  Â  Â  Â  Â  if _G.CashOut then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  pcall(function()
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RepCashOut"):InvokeServer()
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end)
Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  end)
Â  Â  Â  Â  end
Â  Â  end)
end)
spawn(function()
Â  Â  pcall(function()
Â  Â  Â  Â  while wait(1) do
Â  Â  Â  Â  Â  Â  pcall(function()
Â  Â  Â  Â  Â  Â  Â  Â  for i,v in pairs(game:GetService("Players").LocalPlayer.StorageFile.Gamepass:GetChildren()) do
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  v.Value = true
Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  end)
Â  Â  Â  Â  end
Â  Â  end)
end)
spawn(function()
Â  Â  pcall(function()
Â  Â  Â  Â  while wait(1) do
Â  Â  Â  Â  Â  Â  if _G.AutoTrain and _G.Trainer then
Â  Â  Â  Â  Â  Â  Â  Â  pcall(function()
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  local args = {
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  [1] = _G.Trainer
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  }
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Trainer"):WaitForChild("TrainerTask"):InvokeServer(unpack(args))
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  wait(10)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  local args = {
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  [1] = "LoveEto"
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  }
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  game:GetService("Players").LocalPlayer.Character.Remotes.TrainerReward:FireServer(unpack(args))
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  wait(5)
Â  Â  Â  Â  Â  Â  Â  Â  end)
Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  end
Â  Â  end)
end)

local function getClosestMob()
Â  Â  local dist, thing = math.huge
Â  Â  for i,v in pairs(workspace.YoshitokiQuest.Storage:GetChildren()) do
Â  Â  Â  Â  for i,vv in pairs(v:GetChildren()) do
Â  Â  Â  Â  Â  Â  if vv:FindFirstChild("Humanoid") then
Â  Â  Â  Â  Â  Â  Â  Â  local mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - vv.HumanoidRootPart.Position).magnitude
Â  Â  Â  Â  Â  Â  Â  Â  if mag < dist then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  dist = mag 
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  thing = vv
Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  end
Â  Â  end
Â  Â  return thing
end
spawn(function()
Â  Â  pcall(function()
Â  Â  Â  Â  while wait() do
Â  Â  Â  Â  Â  Â  pcall(function()
Â  Â  Â  Â  Â  Â  Â  Â  if _G.AutoQuest then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  pcall(function()
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  game.Workspace.Camera.CameraType = "Attach"
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end)
Â  Â  Â  Â  Â  Â  Â  Â  else
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  pcall(function()
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  game.Workspace.Camera.CameraType = "Custom"
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end)
Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  end)
Â  Â  Â  Â  end
Â  Â  end)
end)
spawn(function()
Â  Â  pcall(function()
Â  Â  Â  Â  while wait(1) do
Â  Â  Â  Â  Â  Â  pcall(function()
Â  Â  Â  Â  Â  Â  Â  Â  if _G.AutoRespawn then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  if game:GetService("Players").LocalPlayer.PlayerGui.TeleportUI.Enabled == true then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  wait(2)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  game:GetService("GuiService").SelectedObject = game:GetService("Players").LocalPlayer.PlayerGui.TeleportUI.Map[_G.Map].Btn
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  wait(.1)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  game:GetService("VirtualInputManager"):SendKeyEvent(true, 13, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  game:GetService("VirtualInputManager"):SendKeyEvent(false, 13, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  wait(.1)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  game:GetService("GuiService").SelectedObject = nil
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  end)
Â  Â  Â  Â  end
Â  Â  end)
end)
spawn(function()
Â  Â  pcall(function()
Â  Â  Â  Â  while task.wait() do
Â  Â  Â  Â  Â  Â  pcall(function()
Â  Â  Â  Â  Â  Â  Â  Â  game:GetService("Players").LocalPlayer.DevCameraOcclusionMode = "Invisicam"
Â  Â  Â  Â  Â  Â  Â  Â  game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 100000
Â  Â  Â  Â  Â  Â  end)
Â  Â  Â  Â  end
Â  Â  end)
end)
spawn(function()
Â  Â  pcall(function()
Â  Â  Â  Â  while wait() do
Â  Â  Â  Â  Â  Â  pcall(function()
Â  Â  Â  Â  Â  Â  Â  Â  if _G.AutoQuest then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  pcall(function()
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  if getClosestMob() then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  for i,v in pairs(workspace.YoshitokiQuest.Storage:GetChildren()) do
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  a = {}
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  for i,vv in pairs(v:GetChildren()) do
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  if vv:FindFirstChild("Humanoid") then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  table.insert(a,vv.Name)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  if #a == 0 then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  v:Destroy()
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  else
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  wait(1)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  local args = {
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  [1] = "Accept"
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  }
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  game:GetService("ReplicatedStorage").Remotes.Yoshimura.Task:InvokeServer(unpack(args))
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end)
Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  end)
Â  Â  Â  Â  end
Â  Â  end)
end)
spawn(function()
Â  Â  pcall(function()
Â  Â  Â  Â  while wait() do
Â  Â  Â  Â  Â  Â  pcall(function()
Â  Â  Â  Â  Â  Â  Â  Â  if _G.AutoQuest then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  pcall(function()
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  for i,v in pairs(workspace.YoshitokiQuest.Storage:GetChildren()) do
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  for i,vv in pairs(v:GetChildren()) do
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  if vv:FindFirstChild("Humanoid") then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  repeat task.wait()
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  if _G.AutoQuest == true then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  task.spawn(function()
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  if _G.Method == "Behind" then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  MethodFarm = CFrame.new(0,0,_G.Distance) * CFrame.Angles(math.rad(0),0,0)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  elseif _G.Method == "Front" then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  MethodFarm = CFrame.new(0,0,-_G.Distance) * CFrame.Angles(math.rad(0),1800,0)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  elseif _G.Method == "Under" then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  MethodFarm = CFrame.new(0,-_G.Distance,0) * CFrame.Angles(math.rad(90),0,0)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  elseif _G.Method == "Over" then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  MethodFarm = CFrame.new(0,_G.Distance,0) Â * CFrame.Angles(math.rad(-90),0,0)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  else
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  MethodFarm = CFrame.new(0,0,_G.Distance)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  local BeenASecond, V3 = false, Vector3.new(0, 0, 0)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  for _, v in ipairs(game.Players.LocalPlayer.Character:GetDescendants()) do
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  if v.IsA(v, "BasePart") then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  v.Velocity, v.RotVelocity = V3, V3
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = vv.HumanoidRootPart.CFrame * MethodFarm or CFrame.new(0,0,_G.Distance)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end)
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  until vv.Humanoid.Health <= 0 or _G.AutoQuest == false
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end)
Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  end)
Â  Â  Â  Â  end
Â  Â  end)
end)
spawn(function()
Â  Â  pcall(function()
Â  Â  Â  Â  while wait() do
Â  Â  Â  Â  Â  Â  pcall(function()
Â  Â  Â  Â  Â  Â  Â  Â  if _G.AutoSkill then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  pcall(function()
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  for i,v in pairs(_G.Skill) do
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Model") then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  local args = {
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  [1] = v,
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  [2] = "Down"

Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  }
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  game:GetService("Players").LocalPlayer.Character.Remotes.KeyEvent:FireServer(unpack(args))
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  wait()
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end)
Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  end)
Â  Â  Â  Â  end
Â  Â  end)
end)
spawn(function()
Â  Â  pcall(function()
Â  Â  Â  Â  while wait(1) do
Â  Â  Â  Â  Â  Â  pcall(function()
Â  Â  Â  Â  Â  Â  Â  Â  if _G.AutoEquip then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  pcall(function()
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  if not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Model") then
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  local args = {
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  [1] = _G.Equip,
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  [2] = "Down"
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  }
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  game:GetService("Players").LocalPlayer.Character.Remotes.KeyEvent:FireServer(unpack(args))
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  end)
Â  Â  Â  Â  Â  Â  Â  Â  end
Â  Â  Â  Â  Â  Â  end)
Â  Â  Â  Â  end
Â  Â  end)
end)

game:GetService("Players").LocalPlayer.Idled:connect(function()
Â  Â  game:GetService("VirtualUser"):CaptureController()
Â  Â  game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)
library:ConfigSystem("MonsterGhoul"):Load()
while wait(1) do
Â  Â  pcall(function()
Â  Â  Â  Â  library:ConfigSystem("MonsterGhoul"):Save()
Â  Â  end)
end
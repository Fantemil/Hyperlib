------------------------------------------------------
-- Rumble Quest GUI
-- Made by xTachi // repxrd#0347
------------------------------------------------------

if not game.Players.LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("VBC_rg_gui") then

local nodoors=false
local walkspeed=false
local killaura=false
local weaponID

--Check Text
spawn(function()
 while true do
  if game.Players.LocalPlayer.PlayerGui.VBC_rg_gui.main.main.credits.text.Text~="Made by repxrd#0347" then
   game.Players.LocalPlayer.PlayerGui.VBC_rg_gui.main.main.credits.text.Text="Made by repxrd#0347"
  end
  wait(3)
 end
end)

--Get Weapon ID
local function getWID()
 for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
  if v.Name~="HumanoidRootPart" and v.Name~="LeftHand" and v.Name~="LeftLowerArm" and v.Name~="LeftUpperArm" and v.Name~="RightHand" and v.Name~="RightLowerArm" and v.Name~="RightUpperArm" and v.Name~="UpperTorso" and v.Name~="LeftFoot" and v.Name~="LeftLowerLeg" and v.Name~="LeftUpperLeg" and v.Name~="RightFoot" and v.Name~="RightLowerLeg" and v.Name~="RightUpperLeg" and v.Name~="LowerTorso" and v.Name~="Humanoid" and v.Name~="Head" and v.Name~="Health" and v.Name~="Animate" and v.Name~="ArmorHead" and v.Name~="ArmorTorso" and v.Name~="ArmorChest" and v.Name~="ArmorLegs" and v.Name~="PlayerOverheadGui" and v.ClassName=="Model" and v.ClassName~="Folder" and v.ClassName~="Part" and v.ClassName~="MeshPart" then
   weaponID=v.Name
  end
 end
end

--Rainbow text
local function rainbow(texts,sec,add)
 for i=255,0,-add do for i2,v in pairs(texts) do v.TextColor3 = Color3.fromRGB(255,i,i) end--(255,0,0)
  wait(sec) end
 for i=0,175,add do for i2,v in pairs(texts) do v.TextColor3 = Color3.fromRGB(255,i,0) end--(255,175,0)
  wait(sec) end
 for i=175,255,add do for i2,v in pairs(texts) do v.TextColor3 = Color3.fromRGB(255,i,0) end--(255,255,0)
  wait(sec) end
 for i=255,0,-add do for i2,v in pairs(texts) do v.TextColor3 = Color3.fromRGB(i,255,0) end--(0,255,0)
  wait(sec) end
 for i=0,255,add do for i2,v in pairs(texts) do v.TextColor3 = Color3.fromRGB(0,255,i) end--(0,255,255)
  wait(sec) end
 for i=255,0,-add do for i2,v in pairs(texts) do v.TextColor3 = Color3.fromRGB(0,i,255) end--(0,0,255)
  wait(sec) end
 for i=0,255,add do for i2,v in pairs(texts) do v.TextColor3 = Color3.fromRGB(i,0,255) end--(255,0,255)
  wait(sec) end
 for i=0,255,add do for i2,v in pairs(texts) do v.TextColor3 = Color3.fromRGB(255,i,255) end--(255,255,255)
  wait(sec) end
end

--No Doors
local function nodoors_f(state)
 if workspace.Terrain:FindFirstChild("DungeonBoss") then
  for i,v in pairs(workspace.Terrain:GetChildren()) do
   if v.Name=='DungeonPiece1' or v.Name=='DungeonPiece2' or v.Name=='DungeonPiece3' or v.Name=='DungeonPiece4' or v.Name=='DungeonPiece5' or v.Name=='DungeonPiece6' or v.Name=='DungeonPiece7' or v.Name=='DungeonBoss' then
    for i,v2 in pairs(v.Door:GetChildren()) do
     if v2:IsA("MeshPart") or v2:IsA("Part") then
      v2.CanCollide=state
     end
     if v2.Name=="Door1" or v.Name=="Door2" then
      for i,v3 in pairs(v2:GetChildren()) do
       if v3:IsA("Part") or v3:IsA("UnionOperation") or v3:IsA("MeshPart") then
        v3.CanCollide=state
       end
      end
     end
    end
   end
  end
 elseif not state then
  game.Players.LocalPlayer.PlayerGui.VBC_rg_gui.main.main.credits.text.Text="Error: You must join the dungeon!"
 end
end

--Create Gui
local screengui = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
screengui.DisplayOrder = 999999999
screengui.Name = "VBC_rg_gui"
--
local main = Instance.new("Frame",screengui)
main.Name = "main"
main.BackgroundTransparency = 0.999
main.Size = UDim2.new(1,1,1,1)
main.ZIndex = 999999999
--top
local top = Instance.new("Frame",main)
top.Name = "top"
top.BackgroundColor3 = Color3.fromRGB(55,55,55)
top.BorderSizePixel = 0
top.Position = UDim2.new(0.188,0,0.102,0)
top.Size = UDim2.new(0.2,0,0.03,0)
top.ZIndex = 999999998
 --arrow
 local arrow = Instance.new("TextButton",top)
 arrow.Name = "arrow"
 arrow.BackgroundTransparency = 1
 arrow.Size = UDim2.new(0.991,1,1,1)
 arrow.Font = Enum.Font.GothamBold
 arrow.Text = "[T] <"
 arrow.TextColor3 = Color3.fromRGB(255,255,255)
 arrow.TextScaled = true
 arrow.ZIndex = 999999999
 arrow.TextXAlignment = Enum.TextXAlignment.Right
  --arrow script
  local function arrow_f()
   if arrow.Text=="[T] <" then
    arrow.Text="[T] X"
    arrow.Parent.Parent:FindFirstChild("main").Visible=true
   else
    arrow.Text="[T] <"
    arrow.Parent.Parent:FindFirstChild("main").Visible=false
   end
  end
  arrow.MouseButton1Click:Connect(arrow_f)
  game:GetService("UserInputService").InputBegan:Connect(function(key)
   if key.KeyCode==Enum.KeyCode.T then
    arrow_f()
   end
  end)
 --main
 local main_ = Instance.new("TextButton",top)
 main_.Name = "main"
 main_.BackgroundTransparency = 1
 main_.Position = UDim2.new(0.002,0,0,0)
 main_.Size = UDim2.new(0.9,1,1,1)
 main_.Font = Enum.Font.GothamBold
 main_.Text = "Main"
 main_.TextColor3 = Color3.fromRGB(255,255,255)
 main_.TextScaled = true
 main_.ZIndex = 999999999
 main_.TextXAlignment = Enum.TextXAlignment.Left
--main(2)
local main2 = Instance.new("Frame",main)
main2.Name = "main"
main2.BackgroundColor3 = Color3.fromRGB(74,74,74)
main2.BorderSizePixel = 0
main2.Position = UDim2.new(0.188,0,0.135,0)
main2.Size = UDim2.new(0.2,0,0.165,0)
main2.ZIndex = 999999997
main2.Visible = false
 --credits
 local credits = Instance.new("Frame",main2)
 credits.Name = "credits"
 credits.BackgroundTransparency = 1
 credits.Position = UDim2.new(0,0,0.595,0)
 credits.Size = UDim2.new(1,0,0.4,0)
 credits.ZIndex = 999999998
  --text
  local ctext = Instance.new("TextLabel",credits)
  ctext.Name = "text"
  ctext.BackgroundTransparency = 1
  ctext.Position = UDim2.new(0,0,0.444,0)
  ctext.Size = UDim2.new(1,1,0.426,1)
  ctext.Font = Enum.Font.SourceSansItalic
  ctext.Text = "Made by repxrd#0347"
  ctext.TextColor3 = Color3.fromRGB(158,158,158)
  ctext.TextScaled = true
  ctext.ZIndex = 999999999
 --walkspeed
 local walkspeed = Instance.new("Frame",main2)
 walkspeed.Name = "walkspeed"
 walkspeed.BackgroundTransparency = 1
 walkspeed.Position = UDim2.new(0,0,0.082,0)
 walkspeed.Size = UDim2.new(1,0,0.32,0)
 walkspeed.ZIndex = 999999998
  --text
  local text = Instance.new("TextLabel",walkspeed)
  text.Name = "text"
  text.BackgroundTransparency = 1
  text.Position = UDim2.new(0.027,0,0,0)
  text.Size = UDim2.new(0.5,1,0.763,1)
  text.Font = Enum.Font.GothamBold
  text.Text = "WalkSpeed [R]"
  text.TextColor3 = Color3.fromRGB(255,255,255)
  text.TextScaled = true
  text.ZIndex = 999999999
  --check
  local text_ = Instance.new("TextButton",walkspeed)
  text_.Name = "check"
  --text_.BackgroundTransparency = 1
  text_.BackgroundColor3 = Color3.fromRGB(65,65,65)
  text_.BorderSizePixel = 0
  text_.Position = UDim2.new(0.57,0,0,0)
  text_.Size = UDim2.new(0.42,0,0.7,0)
  text_.Font = Enum.Font.GothamBold
  text_.Text = "OFF"
  text_.TextColor3 = Color3.fromRGB(255,0,0)
  text_.TextScaled = true
  text_.ZIndex = 999999999
   --check script
   local function check()
    if text_.Text=="OFF" then
     text_.Text="ON"
     text_.TextColor3 = Color3.fromRGB(0,255,0)
     walkspeed=true
    else
     text_.Text="OFF"
     text_.TextColor3 = Color3.fromRGB(255,0,0)
     walkspeed=false
    end
   end
   text_.MouseButton1Click:Connect(check)
   game:GetService("UserInputService").InputBegan:Connect(function(key)
    if key.KeyCode==Enum.KeyCode.R then
     check()
    end
   end)
 --killaura
 local killaura = Instance.new("Frame",main2)
 killaura.Name = "killaura"
 killaura.BackgroundTransparency = 1
 killaura.Position = UDim2.new(0,0,0.082,0)
 killaura.Size = UDim2.new(1,0,0.32,0)
 killaura.ZIndex = 999999998
  --text
  local text = Instance.new("TextLabel",killaura)
  text.Name = "text"
  text.BackgroundTransparency = 1
  text.Position = UDim2.new(0.027,0,0.698,0)
  text.Size = UDim2.new(0.5,1,0.763,1)
  text.Font = Enum.Font.GothamBold
  text.Text = "Kill-Aura [F]"
  text.TextColor3 = Color3.fromRGB(255,255,255)
  text.TextScaled = true
  text.ZIndex = 999999999
  --check
  local text_2 = Instance.new("TextButton",killaura)
  text_2.Name = "check"
  --text_2.BackgroundTransparency = 1
  text_2.BackgroundColor3 = Color3.fromRGB(65,65,65)
  text_2.BorderSizePixel = 0
  text_2.Position = UDim2.new(0.57,0,0.721,0)
  text_2.Size = UDim2.new(0.42,0,0.7,0)
  text_2.Font = Enum.Font.GothamBold
  text_2.Text = "OFF"
  text_2.TextColor3 = Color3.fromRGB(255,0,0)
  text_2.TextScaled = true
  text_2.ZIndex = 999999999
   --check script
   local function check_()
    if text_2.Text=="OFF" then
     text_2.Text="ON"
     text_2.TextColor3 = Color3.fromRGB(0,255,0)
     killaura=true
    else
     text_2.Text="OFF"
     text_2.TextColor3 = Color3.fromRGB(255,0,0)
     killaura=false
    end
   end
   text_2.MouseButton1Click:Connect(check_)
   game:GetService("UserInputService").InputBegan:Connect(function(key)
    if key.KeyCode==Enum.KeyCode.F then
     check_()
    end
   end)
 --cc doors
 local ccdoors = Instance.new("Frame",main2)
 ccdoors.Name = "ccdoors"
 ccdoors.BackgroundTransparency = 1
 ccdoors.Position = UDim2.new(0,0,0.082,0)
 ccdoors.Size = UDim2.new(1,0,0.32,0)
 ccdoors.ZIndex = 999999998
  --text
  local text = Instance.new("TextLabel",ccdoors)
  text.Name = "text"
  text.BackgroundTransparency = 1
  text.Position = UDim2.new(0.027,0,1.396,0)
  text.Size = UDim2.new(0.5,1,0.763,1)
  text.Font = Enum.Font.GothamBold
  text.Text = "CC-Doors [C]"
  text.TextColor3 = Color3.fromRGB(255,255,255)
  text.TextScaled = true
  text.ZIndex = 999999999
  --check
  local text_2 = Instance.new("TextButton",ccdoors)
  text_2.Name = "check"
  --text_2.BackgroundTransparency = 1
  text_2.BackgroundColor3 = Color3.fromRGB(65,65,65)
  text_2.BorderSizePixel = 0
  text_2.Position = UDim2.new(0.57,0,1.442,0)
  text_2.Size = UDim2.new(0.42,0,0.7,0)
  text_2.Font = Enum.Font.GothamBold
  text_2.Text = "OFF"
  text_2.TextColor3 = Color3.fromRGB(255,0,0)
  text_2.TextScaled = true
  text_2.ZIndex = 999999999
   --check script
   local function check_()
    if text_2.Text=="OFF" then
     text_2.Text="ON"
     text_2.TextColor3 = Color3.fromRGB(0,255,0)
     nodoors=true
     nodoors_f(false)
    else
     text_2.Text="OFF"
     text_2.TextColor3 = Color3.fromRGB(255,0,0)
     nodoors=false
     nodoors_f(true)
    end
   end
   text_2.MouseButton1Click:Connect(check_)
   game:GetService("UserInputService").InputBegan:Connect(function(key)
    if key.KeyCode==Enum.KeyCode.C then
     check_()
    end
   end)
--draggable
local mouse = game.Players.LocalPlayer:GetMouse()
local frame = main.top
local frame2 = main.main
main.top.main.MouseButton1Down:Connect(function()
 while game:GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
  frame.Position = UDim2.new(0,mouse.X-200,0,mouse.Y-10)
  frame2.Position = frame.Position + UDim2.new(0,0,0.033,0)
  wait()
 end
end)
--rainbow
local sec = .00001
local add = 5
spawn(function()
 repeat
  rainbow({main_,ctext},sec,add)
 until false
end)

spawn(function()
 while true do 
  if walkspeed==true then
   if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed~=100 then
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed=100
   end
  elseif game.Players.LocalPlayer.Character.Humanoid.WalkSpeed~=16 then
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed=16
  end
  if killaura==true then
   getWID()
   for i,enemy in pairs(game.Workspace.Enemies:GetChildren()) do
    if (game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position-enemy:WaitForChild("HumanoidRootPart").Position).Magnitude<=100 then
     game.ReplicatedStorage.Modules.Network.RemoteEvent:FireServer("WeaponDamage",weaponID,enemy:WaitForChild("Humanoid"))
    end
   end
  end
  wait(.01)
 end
end)

else
 game.Players.LocalPlayer.PlayerGui.VBC_rg_gui.main.main.credits.text.Text="Error: GUI already injected"
end

--Thank you for using my gui!
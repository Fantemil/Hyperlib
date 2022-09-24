local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
local Library = loadstring(game:HttpGet("https://pastebinp.com/raw/3gQQtaKX"))()
_G.AnubisOn = false
_G.DarkPumpkin = false
_G.mode = "off"
_G.ongoing = false
text1 = "Scripts by me, EmkoDelirdi"
text2 = "UI lib made by coasts"
text3 = "Press anchor hroot while moving"
local EpicTab = Library:CreateTab("Bad SPFS Gui")
local EpicSection= EpicTab:CreateSection("scripto")
local Credit = EpicTab:CreateSection("credit")
Credit:CreateLabel("Credit", '[['..text1..']]\n\n[['..text2..']]')

EpicSection:CreateToggle("Auto Anubis", function(boolean)
 _G.AnubisOn = boolean
end)
EpicSection:CreateToggle("Anchor", function(boolean)
 game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = boolean
end)

EpicSection:CreateLabel("Credit", "Use Anchor while moving")
EpicSection:CreateButton("Collect Chests", function(boolean)
 
local oldpos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
 for _,v in pairs(game.Workspace.Chests:GetChildren()) do
  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.TouchPart.CFrame
  wait(0.2)
  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos
 end 
end)
EpicSection:CreateToggle("Auto Evil Pumpkin", function(boolean)

 local oldpos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
 for _,v in pairs(game.Workspace.EvilPumpkins:GetChildren()) do
  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
  fireclickdetector(v.ClickDetector, 2)
  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos
 end
 _G.DarkPumpkin = boolean
end)
EpicSection:CreateDropdown("Autofarm", {"Off", "Psychic", "Strength", "Endurance", "All"}, 1, function(option)
 _G.mode = option
end)
coroutine.resume(coroutine.create(function()--autoanubis
 while true do wait()
  if _G.AnubisOn then
   if not _G.ongoing then
    if game:GetService("Workspace").Anubis.AnubisText.BillboardGui.Timer.Text =="New Quest Available!" or game:GetService("Players").LocalPlayer.PlayerGui.Quests.QuestsMenu.Main.ScrollingFrame:FindFirstChild("Anubis") then
     _G.ongoing = true
     local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1621.34338, 56.3657684, -1843.53284)
     local args = {
      [1] = "Anubis"
     }
     game:GetService("ReplicatedStorage").Events.Quest:FireServer(unpack(args))

     local TweenService = game:GetService("TweenService")
     local FRAMES = {
      CFrame.new(-1516.53809, 54.4818573, -1745.91724),
      CFrame.new(-1598.56873, 54.4818573, -1790.41846),
      CFrame.new(-1501.85754, 54.4818573, -1894.2113)
     }

     local FRAMENONTWEEN = {
      CFrame.new(-1516.65271, 54.4818573, -1705.56079),
      CFrame.new(-1614.33911, 54.4818573, -1774.88953),
      CFrame.new(-1485.0564, 56.8731956, -1911.06091)
     }
     local argss = {
      "Endurance",
      "Strength",
      "Psychic"
     }

     local function tween(i)
      local part = game.Players.LocalPlayer.Character.HumanoidRootPart

      local Info = TweenInfo.new(
       1,                              --Length (seconds)
       Enum.EasingStyle.Sine,          --Easing Style
       Enum.EasingDirection.InOut,       --Easing Direction
       0,                             --Times Repeated
       true,                           --reversed
       0                               --deşau
      )

      local Goals = {
       CFrame = FRAMES[i]
      }

      local tween = TweenService:Create(part, Info, Goals)
      return tween
     end

     for i = 1,#FRAMENONTWEEN do
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = FRAMENONTWEEN[i]
      tween(i):Play()

      wait(2)

      local args = {
       [1] = argss[i]
      }
      game:GetService("ReplicatedStorage").Events.Train:FireServer(unpack(args)) 
      wait(1)
     end
     local args = {
      [1] = "Anubis"
     }
     game:GetService("ReplicatedStorage").Events.Quest:FireServer(unpack(args))
     wait(1)
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos
    end
   end
  end
 end
end))
coroutine.resume(coroutine.create(function() --autofarm
 while true do wait()
  if _G.mode == "Psychic" then
   local args = {
    [1] = "Psychic"
   }
   game:GetService("ReplicatedStorage").Events.Train:FireServer(unpack(args))
  elseif _G.mode == "Strength" then
   local args = {
    [1] = "Strength"
   }
   game:GetService("ReplicatedStorage").Events.Train:FireServer(unpack(args))
  elseif _G.mode == "Endurance" then
   local args = {
    [1] = "Endurance"
   }
   game:GetService("ReplicatedStorage").Events.Train:FireServer(unpack(args))
  elseif _G.mode == "All" then
   local args = {
    [1] = "Endurance"
   }
   local args2 = {
    [1] = "Strength"
   }
   local args3 = {
    [1] = "Psychic"
   }
   game:GetService("ReplicatedStorage").Events.Train:FireServer(unpack(args))
   game:GetService("ReplicatedStorage").Events.Train:FireServer(unpack(args2))
   game:GetService("ReplicatedStorage").Events.Train:FireServer(unpack(args3))
  end
 end
end))
game:GetService("Workspace").EvilPumpkins.ChildAdded:Connect(function(v)
 if _G.DarkPumpkin then
  wait(5)
  local oldpos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
  fireclickdetector(v.ClickDetector, 2)
  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos
 end
end)
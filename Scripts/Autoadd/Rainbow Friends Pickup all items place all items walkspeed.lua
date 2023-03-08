-- ur welcome, skid

local L_10_ = loadstring(game:HttpGet(("https://raw.githubusercontent.com/RandomAdamYT/DarkHub_V4/main/UILIB")))()
local L_11_ = L_10_:MakeWindow({
 Name = "SkidHub V4 - Rainbow Friends!",
 HidePremium = false,
 SaveConfig = true,
 ConfigFolder = "SkidHub"
})
local L_12_ = L_11_:Tab({
 Name = "Main"
})
local L_13_ = L_11_:Tab({
 Name = "LocalPlayer"
})
local L_14_ = L_11_:Tab({
 Name = "Visuals"
})
L_12_:Button({
 Name = "Attempt To PickUp All Items",
 Callback = function()
  for L_23_forvar0, L_24_forvar1 in pairs(game:GetService("Workspace"):GetChildren()) do
   if L_24_forvar1.ClassName == "Model" then
    if L_24_forvar1:FindFirstChild("TouchTrigger") then
     firetouchinterest(L_24_forvar1.TouchTrigger, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
     task.wait()
     firetouchinterest(L_24_forvar1.TouchTrigger, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
    end
   end
  end
 end
})
L_12_:Button({
 Name = "Attempt To Place All Items",
 Callback = function()
  if game:GetService("Workspace").GroupBuildStructures:FindFirstChild("Trigger", true) then
   firetouchinterest(game:GetService("Workspace").GroupBuildStructures:FindFirstChild("Trigger", true), game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
   task.wait()
   firetouchinterest(game:GetService("Workspace").GroupBuildStructures:FindFirstChild("Trigger", true), game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
  end
 end
})
L_13_:Toggle({
 Name = "Fake Box (This will hide you from Blue)",
 Default = false,
 Save = true,
 Flag = "FF_FakeBox",
 Callback = function()
 end
})
L_13_:Toggle({
 Name = "WalkSpeed Toggle",
 Default = false,
 Save = true,
 Flag = "FF_WalkSpeed",
 Callback = function()
 end
})
L_13_:Slider({
 Name = "WalkSpeed Slider",
 Min = 16,
 Max = 100,
 Default = 16,
 Color = Color3.fromRGB(5 + 250, 255, 255),
 Increment = 1,
 Flag = "WalkSpeedValue",
 Callback = function()
 end
})
L_14_:Toggle({
 Name = "Monster Highlight",
 Default = false,
 Save = true,
 Flag = "Monster_Highlight",
 Callback = function()
 end
})
local L_15_;
L_14_:Colorpicker({
 Name = "Monster Highlight Color",
 Default = Color3.fromRGB(5 + 250, 0, 0 + 0),
 Callback = function(L_41_arg0)
  L_15_ = L_41_arg0
 end
})
L_14_:Toggle({
 Name = "Item Highlight",
 Default = false,
 Save = true,
 Flag = "Item_Highlight",
 Callback = function()
 end
})
local L_16_;
L_14_:Colorpicker({
 Name = "Item Highlight Color",
 Default = Color3.fromRGB(0, 0, 225),
 Callback = function(L_43_arg0)
  L_16_ = L_43_arg0
 end
})
while task.wait(.5) do
 if L_10_.Flags["Monster_Highlight"].Value then
  for L_44_forvar0, L_45_forvar1 in pairs(game:GetService("Workspace").Monsters:GetChildren()) do
   if L_45_forvar1.ClassName == "Model" then
    if not L_45_forvar1:FindFirstChild("Highlight") then
     local L_46_ = Instance.new("Highlight", L_45_forvar1)
     L_46_.FillColor = L_15_;
     L_46_.Enabled = L_10_.Flags["Monster_Highlight"].Value
    end
   end
  end
 else
  for L_55_forvar0, L_56_forvar1 in pairs(game:GetService("Workspace").Monsters:GetChildren()) do
   if L_56_forvar1.ClassName == "Model" then
    if L_56_forvar1:FindFirstChild("Highlight") then
     L_56_forvar1:FindFirstChild("Highlight"):Destroy()
    end
   end
  end
 end;
 if L_10_.Flags["Item_Highlight"].Value then
  for L_70_forvar0, L_71_forvar1 in pairs(game:GetService("Workspace"):GetChildren()) do
   if L_71_forvar1.ClassName == "Model" then
    if L_71_forvar1:FindFirstChild("TouchTrigger") and not L_71_forvar1:FindFirstChild("Highlight", true) then
     local L_72_ = Instance.new("Highlight", L_71_forvar1)
     L_72_.FillColor = L_16_;
     L_72_.Enabled = L_10_.Flags["Item_Highlight"].Value
    end
   end
  end
 else
  for L_87_forvar0, L_88_forvar1 in pairs(game:GetService("Workspace"):GetChildren()) do
   if L_88_forvar1.ClassName == "Model" then
    if L_88_forvar1:FindFirstChild("TouchTrigger") and L_88_forvar1:FindFirstChild("Highlight", true) then
     L_88_forvar1:FindFirstChild("Highlight"):Destroy()
    end
   end
  end
 end;
 if L_10_.Flags["FF_FakeBox"].Value then
  game:GetService("ReplicatedStorage").communication.boxes.cl.BoxUpdated:FireServer("Equip")
 end;
 if L_10_.Flags["FF_WalkSpeed"].Value then
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = L_10_.Flags["WalkSpeedValue"].Value
 end
end
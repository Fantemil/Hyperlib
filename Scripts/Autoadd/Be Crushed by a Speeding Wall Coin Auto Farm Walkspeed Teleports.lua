local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/insanedude59/UILib/main/source"))();

lib:SetTitle("sexy gui")

local tab1 = lib:NewTab("Main", "Main features.")

local tab2 = lib:NewTab("Character", "Basic character features.")

local tab3 = lib:NewTab("Credits", "omg credits")

tab1:NewToggle("Autofarm",false,function(value)
 _G.autofarm = value
 
 while wait() do
  if _G.autofarm == true then
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1041.19165, 19.54175, 411.084503, 0.0160721727, 3.80275234e-09, -0.999870837, -4.04203782e-09, 1, 3.73827103e-09, 0.999870837, 3.98143341e-09, 0.0160721727)
   task.wait(0.1)
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-739.413086, 19.5398579, 236.24707, 0.0115235355, -8.92517988e-08, -0.9999336, 6.78112073e-08, 1, -8.84762485e-08, 0.9999336, -6.67871518e-08, 0.0115235355)
   task.wait(0.1)
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-440.637146, 19.5593281, 410.462341, -0.0202257615, -3.53708751e-09, -0.999795437, 5.65120573e-09, 1, -3.65213459e-09, 0.999795437, -5.7239169e-09, -0.0202257615)
   task.wait(0.1)
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-139.853806, 19.5298481, 239.541962, 0.0387617834, 2.64360089e-09, -0.999248505, 1.01479145e-08, 1, 3.0392362e-09, 0.999248505, -1.02580948e-08, 0.0387617834)
   task.wait(0.1)
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(154.028564, 13.0398264, 309.891296, -0.0610229038, -9.38057099e-08, -0.998136342, 5.17312984e-08, 1, -9.71435483e-08, 0.998136342, -5.75628718e-08, -0.0610229038)
   task.wait(0.1)
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(265.214264, -72.8728333, 323.250122, -0.031096708, 2.93349078e-09, 0.999516368, 6.52960921e-08, 1, -9.03433994e-10, -0.999516368, 6.52364207e-08, -0.031096708)
   task.wait(0.1)
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1437.55811, 15.7254801, 193.869049, -0.99989152, -1.6025826e-08, 0.0147274826, -1.51199817e-08, 1, 6.16183797e-08, -0.0147274826, 6.13890165e-08, -0.99989152)
   task.wait(0.1)
   prev = game:GetService("Players").LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame
   game:GetService("Players").LocalPlayer.Character.Parent = workspace.Terrain
   game:GetService("Players").LocalPlayer.Character:BreakJoints()
   game:GetService('Workspace'):WaitForChild(game:GetService("Players").LocalPlayer.Name)
   game:GetService("Players").LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = prev
  end
 end
end)

tab1:NewButton("Teleport player to imposiwall win area",function()
 game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-18733.793, 400.376007, 2288.96021, -0.0110426694, 8.08615468e-08, -0.999939024, -5.20541299e-09, 1, 8.09239609e-08, 0.999939024, 6.0987122e-09, -0.0110426694)
end)

tab1:NewButton("Teleport player to 12 trial badge",function()
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(19256.9062, 9224.24609, -7621.45605, 0.997592568, -3.44245059e-08, -0.0693476647, 2.93483655e-08, 1, -7.42172688e-08, 0.0693476647, 7.20033526e-08, 0.997592568)
end)

tab1:NewButton("Teleport player to winner room",function()
 game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(265.214264, -72.8728333, 323.250122, -0.031096708, 2.93349078e-09, 0.999516368, 6.52960921e-08, 1, -9.03433994e-10, -0.999516368, 6.52364207e-08, -0.031096708)
end)

tab2:NewSlider("WalkSpeed",0,500,16,function(value)
   game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

tab2:NewButton("Reset WalkSpeed",function()
    game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

tab2:NewSlider("JumpPower",0,500,50,function(value)
   game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = value
end)

tab2:NewButton("Reset JumpPower",function()
    game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 50
end)

tab2:NewSlider("Gravity",0,1000,196.2,function(value)
   game:GetService("Workspace").Gravity = value
end)

tab2:NewButton("Reset gravity",function()
 game:GetService("Workspace").Gravity = 196.2
end)

tab3:NewButton("Script by 0zg#0308",function()
 setclipboard("0zg#0308")
end)

tab3:NewButton("UI Library by slixx on V3rmillion",function()
 setclipboard("https://v3rmillion.net/showthread.php?tid=1174406")
end)
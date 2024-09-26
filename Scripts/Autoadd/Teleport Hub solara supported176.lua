local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

Rayfield:Notify({
    Title = "Risk!",
    Content = "Blatantly Teleporting could get you banned",
    Duration = 6.5,
    Image = 4483362458,
    Actions = {
       Ignore = {
          Name = "Okay!",
          Callback = function()
       end
    },
 },
 })

local Window = Rayfield:CreateWindow({
    Name = "Teleporting hub by ThorTheMainGod",
    LoadingTitle = "Teleport Hub",
    LoadingSubtitle = "by ThorTheMainGod",
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil,
       FileName = "Teleport Hub"
    }
 })

 local Tab1 = Window:CreateTab("Main")
 local Section1 = Tab1:CreateSection("Walkspeed and Jumppower")

 local Slider1 = Tab1:CreateSlider({
   Name = "Walkspeed",
   Range = {16, 200},
   Increment = 1,
   Suffix = "Walkspeed",
   CurrentValue = 16,
   Flag = "Slider1",
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})

local Slider2 = Tab1:CreateSlider({
   Name = "JumpPower",
   Range = {16, 200},
   Increment = 1,
   Suffix = "JumpPower",
   CurrentValue = 16,
   Flag = "Slider2",
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
   end,
})

 local Tab2 = Window:CreateTab("Checkpoints")
local Section2 = Tab2:CreateSection("Checkpoint Teleports")

local Button1 = Tab2:CreateButton({
   Name = "Exterior Checkpoint",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1323.953, 334.199982, -897.9646, 0.0942260101, -5.88533711e-09, 0.995550811, -6.99855868e-11, 1, 5.91826321e-09, -0.995550811, -6.27328522e-10, 0.0942260101)
   end,
})

local Button1 = Tab2:CreateButton({
   Name = "Interior Checkpoint",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1323.953, 334.199982, -897.9646, 0.0942260101, 8.64898126e-08, 0.995550811, 1.19040333e-09, 1, -8.69890115e-08, -0.995550811, 9.3817345e-09, 0.0942260101)
   end,
})

local Button1 = Tab2:CreateButton({
   Name = "Interior Checkpoint",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1088.61377, 334.199982, 52.1869049, 0.0955419913, 1.75480555e-08, 0.995425403, 1.25886834e-09, 1, -1.77495263e-08, -0.995425403, 2.94893465e-09, 0.0955419913)
   end,
})
local Tab3 = Window:CreateTab("Hacking")
local Section3 = Tab2:CreateSection("Hacking Teleports")

local Button1 = Tab3:CreateButton({
   Name = "Datacenter",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1340.13489, 334.480469, -337.711304, -0.999995291, 9.14240204e-08, 0.00307029276, 9.15818532e-08, 1, 5.12662872e-08, -0.00307029276, 5.15472287e-08, -0.999995291)
   end,
})

local Button1 = Tab3:CreateButton({
   Name = "Power Facility",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1279.68945, 334.200012, 317.979095, 0.999994636, 6.29657082e-09, 0.00327268685, -6.37905639e-09, 1, 2.51938594e-08, -0.00327268685, -2.52146002e-08, 0.999994636)
   end,
})

local Button1 = Tab3:CreateButton({
   Name = "Core Control",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1104.10974, 298.058838, 1071.23657, -0.999999881, 1.07213275e-07, 0.000525131763, 1.07184853e-07, 1, -5.41425997e-08, -0.000525131763, -5.40863034e-08, -0.999999881)
   end,
})

local Section4 = Tab3:CreateSection("Superuser Safety override is probably a safeplace too unless there are admins since its an admin only place")

local Button1 = Tab3:CreateButton({
   Name = "Superuser Safety Override",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1102.70886, 295.840363, 1440.42334, -0.999727368, 1.17644925e-08, 0.0233497452, 1.13744223e-08, 1, -1.68383867e-08, -0.0233497452, -1.65682064e-08, -0.999727368)
   end,
})

local Section5 = Tab3:CreateSection("You need sequence keys to access Safety Override Panel")

local Button1 = Tab3:CreateButton({
   Name = "Safety Override Panel",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1103.08337, 295.840332, 1363.71301, 0.999427617, 3.38759385e-08, -0.0338300094, -3.59028292e-08, 1, -5.93064691e-08, 0.0338300094, 6.04871175e-08, 0.999427617)
   end,
})

local Tab4 = Window:CreateTab("Pumps and Coolers")
local Section5 = Tab4:CreateSection("Pump and Cooler Teleports")

local Button1 = Tab4:CreateButton({
   Name = "Pump 1",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1068.64404, 281.07608, 646.290833, -0.00711571472, -6.81853294e-08, -0.999974668, -1.04670832e-08, 1, -6.81125698e-08, 0.999974668, 9.98214933e-09, -0.00711571472)
   end,
})

local Button1 = Tab4:CreateButton({
   Name = "Pump 2",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1070.5791, 281.075989, 723.765503, 0.00763270305, 4.48350121e-08, -0.999970853, -3.54672314e-09, 1, 4.48092479e-08, 0.999970853, 3.20460414e-09, 0.00763270305)
   end,
})

local Button1 = Tab4:CreateButton({
   Name = "Pump 3",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1135.87097, 281.076019, 725.866638, 0.0242627673, 1.00760138e-08, 0.999705613, -5.54165958e-08, 1, -8.73402506e-09, -0.999705613, -5.51883694e-08, 0.0242627673)
   end,
})

local Button1 = Tab4:CreateButton({
   Name = "Pump 4",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1135.86621, 281.075989, 647.387817, 0.0110816546, -3.6045158e-08, 0.999938607, -2.87601338e-08, 1, 3.6366103e-08, -0.999938607, -2.91613649e-08, 0.0110816546)
   end,
})

local Button1 = Tab4:CreateButton({
   Name = "Cooler 1",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1102.64868, 251.075928, 1211.72961, -0.999954045, -1.01409071e-07, -0.0095889261, -1.01486052e-07, 1, 7.54141638e-09, 0.0095889261, 8.51421156e-09, -0.999954045)
   end,
})

local Button1 = Tab4:CreateButton({
   Name = "Cooler 2",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1050.53589, 251.075928, 1261.3075, -0.0141568463, -4.59976768e-09, -0.999899805, 6.36223092e-08, 1, -5.50101031e-09, 0.999899805, -6.36938111e-08, -0.0141568463)
   end,
})

local Button1 = Tab4:CreateButton({
   Name = "Cooler 3",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1101.9458, 251.075928, 1313.42139, 0.999941468, 9.59551194e-09, -0.0108218426, -9.59153024e-09, 1, 4.19880741e-10, 0.0108218426, -3.16058124e-10, 0.999941468)
   end,
})

local Button1 = Tab4:CreateButton({
   Name = "Cooler 4",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1153.50781, 251.075943, 1262.25549, 0.00190697866, -1.00173354e-08, 0.999998152, -5.98212111e-08, 1, 1.01314317e-08, -0.999998152, -5.98404171e-08, 0.00190697866)
   end,
})

local Tab5 = Window:CreateTab("Suits")
local Section6 = Tab4:CreateSection("Hazmat suits but u dont really need them")

local Button1 = Tab5:CreateButton({
   Name = "Hazmat suit 1",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(689.589844, 336.914185, -465.407806, 0.999873936, 3.34141492e-10, 0.0158779677, 5.55677622e-11, 1, -2.45435849e-08, -0.0158779677, 2.45413734e-08, 0.999873936)
   end,
})

local Button1 = Tab5:CreateButton({
   Name = "Hazmat suit 2",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(689.697876, 336.914185, -359.851959, -0.999994934, 1.30341793e-09, 0.00318456208, 1.16115051e-09, 1, -4.46759181e-08, -0.00318456208, -4.46719959e-08, -0.999994934)
   end,
})

local Button1 = Tab5:CreateButton({
   Name = "Multiple Hazmat suits",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1102.34119, 251.05899, 1108.90454, -0.999820113, -7.09028836e-10, -0.0189672429, 1.27749775e-12, 1, -3.74490945e-08, 0.0189672429, -3.74423834e-08, -0.999820113)
   end,
})

local Tab6 = Window:CreateTab("Miscellaneous")
local Section7 = Tab6:CreateSection("Launching nuke doesnt actually kill people its only for the testing field")

local Button1 = Tab6:CreateButton({
   Name = "Nuke launch",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(784.013794, 339.892303, -429.631989, -0.0075002946, -8.63485496e-08, -0.999971867, 2.34765585e-09, 1, -8.63685869e-08, 0.999971867, -2.99537972e-09, -0.0075002946)
   end,
})

local Button1 = Tab6:CreateButton({
   Name = "Nuke launch center",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(636.707581, 379.566559, -417.746918, 0.0203852225, 3.77564424e-09, 0.999792218, 9.65056302e-08, 1, -5.74412695e-09, -0.999792218, 9.6602669e-08, 0.0203852225)
   end,
})

local Button1 = Tab6:CreateButton({
   Name = "Shooting range (only Military)",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(699.28418, 333.986053, 38.8019028, -0.999920964, 1.14838272e-09, 0.0125728445, 2.37341635e-09, 1, 9.74199565e-08, -0.0125728445, 9.74420971e-08, -0.999920964)
   end,
})


local Button1 = Tab6:CreateButton({
    Name = "Destroy GUI",
    Callback = function()
        Rayfield:Destroy()
    end,
 })
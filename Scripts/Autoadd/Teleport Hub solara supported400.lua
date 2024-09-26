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

 local Tab1 = Window:CreateTab("Exits")
 local Section1 = Tab1:CreateSection("Exit Teleports")

 local Button1 = Tab1:CreateButton({
   Name = "Exit1",
   Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20.0524311, 53.9999847, 167.774338, -0.999920666, 2.10366036e-09, -0.0125944838, 2.69992917e-09, 1, -4.73266439e-08, 0.0125944838, -4.73568953e-08, -0.999920666)
   end,
})

local Button2 = Tab1:CreateButton({
    Name = "Exit2",
    Callback = function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(57.1978912, 53.9999847, 162.755646, -0.999954402, 3.1191334e-09, -0.00955129322, 3.16766835e-09, 1, -5.0663731e-09, 0.00955129322, -5.09639708e-09, -0.999954402)
    end,
 })

 local Button3 = Tab1:CreateButton({
    Name = "Exit3",
    Callback = function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(166.33287, 53.9999924, 130.743256, 0.015749231, -2.99689411e-08, -0.999875963, 8.35656522e-08, 1, -2.86564017e-08, 0.999875963, -8.3103977e-08, 0.015749231)
    end,
 })

 local Button4 = Tab1:CreateButton({
    Name = "Exit4",
    Callback = function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(62.7616768, 53.9999924, 72.6235275, 0.999956429, -2.04103774e-08, 0.00933643524, 2.04589217e-08, 1, -5.10389464e-09, -0.00933643524, 5.29468558e-09, 0.999956429)
    end,
 })
 
 local Section2 = Tab1:CreateSection("Exit5 and Exit6 Require you to have Blue and Red corridor Unlocked.")
 
 local Button5 = Tab1:CreateButton({
    Name = "Exit5",
    Callback = function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(11.1328754, 53.9999924, 89.7974014, 0.0249910541, -2.69305627e-08, 0.999687672, 1.39256189e-08, 1, 2.65908522e-08, -0.999687672, 1.32567362e-08, 0.0249910541)
    end,
 })

 local Button6 = Tab1:CreateButton({
    Name = "Exit6",
    Callback = function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(91.1903458, 53.9999847, 211.210922, -0.99999994, 8.38442382e-09, -0.000385947293, 8.38707326e-09, 1, -6.86349555e-09, 0.000385947293, -6.86673207e-09, -0.99999994)
    end,
 })

 local Tab2 = Window:CreateTab("Chests")
 local Section3 = Tab2:CreateSection("Chest Teleports")

 local Button6 = Tab2:CreateButton({
    Name = "Chest1",
    Callback = function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(58.4152718, 53.9999847, 148.563278, -0.052982036, -8.84853346e-09, -0.998595476, 4.60608511e-08, 1, -1.13048095e-08, 0.998595476, -4.65951082e-08, -0.052982036)
    end,
 })

 local Button7 = Tab2:CreateButton({
    Name = "Chest2",
    Callback = function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(78.5510635, 53.9999847, 129.79277, -0.0185600035, 5.64445131e-08, -0.999827743, 5.79456838e-08, 1, 5.53785782e-08, 0.999827743, -5.69078757e-08, -0.0185600035)
    end,
 })

 local Button8 = Tab2:CreateButton({
    Name = "Chest3",
    Callback = function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(146.088898, 54, 105.499557, 0.999816835, 6.89126054e-08, 0.0191387665, -6.87245034e-08, 1, -1.04859073e-08, -0.0191387665, 9.16868448e-09, 0.999816835)
    end,
 })

 local Button9 = Tab2:CreateButton({
    Name = "Chest4",
    Callback = function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(136.672073, 54, 81.1433868, 0.0284270402, 5.85878652e-08, -0.999595881, 1.01347425e-07, 1, 6.14937221e-08, 0.999595881, -1.03054553e-07, 0.0284270402)
    end,
 })

 local Button10 = Tab2:CreateButton({
    Name = "Chest5",
    Callback = function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(115.763161, 54, 40.5617371, -0.998210549, -2.09125117e-09, -0.059796717, -1.88421723e-09, 1, -3.51868001e-09, 0.059796717, -3.3997134e-09, -0.998210549)
    end,
 })

 local Tab3 = Window:CreateTab("miscellaneous") -- Title, Image
 local Section4 = Tab3:CreateSection("miscellaneous Teleports")

 local Button11 = Tab3:CreateButton({
    Name = "Generator",
    Callback = function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(21.8205509, 53.9999924, 168.538727, -0.99995482, -3.70987614e-08, -0.00950845331, -3.78260268e-08, 1, 7.63064776e-08, 0.00950845331, 7.6662694e-08, -0.99995482)
    end,
 })

 local Button12 = Tab3:CreateButton({
    Name = "Phone",
    Callback = function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12.8113403, 53.9999924, 141.659882, 0.503655553, 3.09854045e-08, 0.863904536, -1.18506991e-08, 1, -2.89577535e-08, -0.863904536, 4.34686109e-09, 0.503655553)
    end,
 })

 local Button13 = Tab3:CreateButton({
    Name = "Booth",
    Callback = function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(18.4730377, 53.9999924, 138.517075, 0.999599874, -2.89634539e-08, -0.028285725, 2.91309927e-08, 1, 5.51100765e-09, 0.028285725, -6.33279384e-09, 0.999599874)
    end,
 })

 local Button14 = Tab3:CreateButton({
    Name = "Team Revive",
    Callback = function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(14.9086323, 53.9999924, 149.32991, -0.9936378, -5.26657189e-08, 0.112622924, -4.56326354e-08, 1, 6.50259153e-08, -0.112622924, 5.94729244e-08, -0.9936378)
    end,
 })

 local Button15 = Tab3:CreateButton({
    Name = "Map",
    Callback = function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(21.7474785, 53.9999924, 145.338211, -0.700492859, -3.79149299e-08, -0.713659406, -5.42691625e-09, 1, -4.78006896e-08, 0.713659406, -2.96110727e-08, -0.700492859)
    end,
 })

 local Button16 = Tab3:CreateButton({
    Name = "Camera",
    Callback = function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(24.8010025, 53.9999924, 136.887314, -0.00650806446, -3.37510784e-08, -0.99997884, 4.35679226e-09, 1, -3.37801467e-08, 0.99997884, -4.57654314e-09, -0.00650806446)
    end,
 })
 
 local Button17 = Tab3:CreateButton({
    Name = "Spawn",
    Callback = function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(18.8781605, 53.9999924, 144.873932, 0.99968189, 8.6643559e-10, -0.0252206922, -8.61085925e-10, 1, 2.22974264e-10, 0.0252206922, -2.01186151e-10, 0.99968189)
    end,
 })

 local Button18 = Tab3:CreateButton({
    Name = "Safeplace (to hide from anamoly)",
    Callback = function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10.6578445, 53.9999847, 126.378403, -0.0102203395, 1.63607119e-08, -0.999947786, -1.66158298e-09, 1, 1.63785501e-08, 0.999947786, 1.82889059e-09, -0.0102203395)
    end,
 })

 local Button19 = Tab3:CreateButton({
    Name = "Destroy GUI",
    Callback = function()
        Rayfield:Destroy()
    end,
 })
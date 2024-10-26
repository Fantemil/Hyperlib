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

 local Tab1 = Window:CreateTab("Heights")
 local Section1 = Tab1:CreateSection("Height Teleports")

 local Button1 = Tab1:CreateButton({
   Name = "100m",
   Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(572.664734, 405.499908, -119.418106, 0.999972701, 1.0916188e-08, -0.00739238039, -1.1109103e-08, 1, -2.60553517e-08, 0.00739238039, 2.61367621e-08, 0.999972701)
   end,
})

local Button2 = Tab1:CreateButton({
    Name = "200m",
    Callback = function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(659.848328, 810.499817, -8.59966469, 0.999543488, -5.62541018e-08, 0.0302119087, 5.79391042e-08, 1, -5.48973738e-08, -0.0302119087, 5.66227669e-08, 0.999543488)
    end,
 })

 local Button3 = Tab1:CreateButton({
    Name = "300m",
    Callback = function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(425.537231, 1216.49963, 18.1569805, -0.0164063405, -6.41293063e-09, 0.999865413, -2.2070592e-09, 1, 6.37757935e-09, -0.999865413, -2.10212936e-09, -0.0164063405)
    end,
 })

 local Button4 = Tab1:CreateButton({
    Name = "400m",
    Callback = function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(489.032104, 1605.49963, 60.4269371, -0.935019851, -3.7004483e-08, 0.354595453, -2.20394902e-08, 1, 4.62417802e-08, -0.354595453, 3.5421877e-08, -0.935019851)
    end,
 })

 local Button5 = Tab1:CreateButton({
    Name = "500m",
    Callback = function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(530.054688, 2021.49963, -153.58786, 0.999950469, 2.79745951e-08, -0.00995536987, -2.75475731e-08, 1, 4.30307239e-08, 0.00995536987, -4.27543441e-08, 0.999950469)
    end,
 })

 local Button5 = Tab1:CreateButton({
    Name = "Destroy GUI",
    Callback = function()
        Rayfield:Destroy()
    end,
 })
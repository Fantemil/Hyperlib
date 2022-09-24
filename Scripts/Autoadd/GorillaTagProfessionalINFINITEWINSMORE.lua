local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/miroeramaa/TurtleLib/main/TurtleUiLib.lua"))()
local window1 = library:Window("Scripts")
local window2 = library:Window("Teleport Areas")
window1:Button("Infinite Wins", function()
    spawn(function()
while true do
   local dec = game:GetService("Workspace"):FindFirstChild("ClickToGetCash").ClickDetector
   fireclickdetector(dec)
   local fun = game:GetService("Workspace"):FindFirstChild("ClickToGetCash").ClickDetector
   fireclickdetector(fun)
   wait(0.1)
end
end)
end)
window2:Button("Become 'The Owner'", function()
    spawn(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.2295, 153.292, -61.2144)
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-53.8332, 54.5046, -18.4723)
end)
end)
window2:Button("Become a Moderator", function()
    spawn(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-55.9958, 55.8117, -156.784)
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-53.8332, 54.5046, -18.4723)
end)
end)
window2:Button("Become a normal monke", function()
    spawn(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-53.8332, 54.5046, -18.4723)
end)
end)
window2:Button("Become a Lava Monke", function()
    spawn(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(81.9818, 57.4331, -57.0199)
end)
end)
window1:Slider("Walkspeed",16,70,5, function(value)
  game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
end)
window1:Slider("JumpPower",50,150,20, function(value)
  game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = value
end)
library:Keybind("Tab")
game:GetService("StarterGui"):SetCore("SendNotification",{     
Title = "Important!",     
Text = "Infinite Wins and Become the Owner is Patched!",
Button1 = "unpatch pls?",Button2 = "no",     Duration = 20, })
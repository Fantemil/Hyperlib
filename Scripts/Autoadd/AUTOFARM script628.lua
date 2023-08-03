local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()


function autofarmstart ()
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
tweenInfoE = TweenInfo.new(2, Enum.EasingStyle.Linear)
AutofarmInfoS = TweenInfo.new(24, Enum.EasingStyle.Linear)
local Tween = tweenService:Create(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), tweenInfo, {CFrame = CFrame.new(-53.3258858, 61.0841904, -168.990448, -0.999997914, 6.06681024e-05, -0.00204384234, 8.84582896e-09, 0.999559879, 0.0296659637, 0.00204474269, 0.0296659023, -0.999557793)})
Tween:Play()
Tween.Completed:Wait()
local TweenS = tweenService:Create(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), AutofarmInfoS, {CFrame = CFrame.new(-60.1640434, 45.5146027, 8749.81738, -0.998283863, 0.0156156365, -0.0564399585, 6.99763136e-10, 0.963791013, 0.266658753, 0.0585603714, 0.266201138, -0.962137043)})
TweenS:Play()
TweenS.Completed:Wait()
local TweenE = tweenService:Create(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), tweenInfoE, {CFrame = CFrame.new(-54.7364044, -353.343506, 9499.69141, -0.997614145, -0.057083983, 0.0388260931, 3.42698292e-09, 0.56239897, 0.826866031, -0.0690365583, 0.824893236, -0.56105715)})
TweenE:Play()

wait(2)

game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true

spawn(function()

while game.Players.LocalPlayer.Character do
wait()
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").BoatStages.NormalStages.TheEnd.GoldenChest.Trigger,0)
wait(0.1)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").BoatStages.NormalStages.TheEnd.GoldenChest.Trigger,1)
end

end)
end
local Window = Library.CreateLib("Build a boat for treasure", "DarkTheme")
local AutoFarmTab = Window:NewTab("Autofarm")
local AutofarmSection = AutoFarmTab:NewSection("Autofarm")
local autofarm = nil
game.Workspace.Gravity = 0.5


AutofarmSection:NewToggle("Autofarm","Will Autofarm gold",function(t)
autofarm = t

if autofarm then
autofarmstart()
game.Players.LocalPlayer.CharacterAdded:Connect(function()
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
if not autofarm then return end
autofarmstart()
end)
end
end)
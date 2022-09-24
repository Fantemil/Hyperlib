local Gui = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Kill = Instance.new("TextButton")
local Name = Instance.new("TextBox") 

Gui.Name = "ChaosPlayerKillGUI"
Gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Gui.ResetOnSpawn = false

Background.Name = "Background"
Background.Parent = Gui
Background.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Background.Position = UDim2.new(0.330477357, 0, 0.222664014, 0)
Background.Size = UDim2.new(0, 169, 0, 198)
Background.Active = true
Background.Draggable = true

Title.Name = "Title"
Title.Parent = Background
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(0, 169, 0, 50)
Title.Font = Enum.Font.PatrickHand
Title.Text = "CHAOS Kill Player"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 30.000

Kill.Name = "Kill"
Kill.Parent = Background
Kill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Kill.BackgroundTransparency = 0.900
Kill.Position = UDim2.new(0.165680468, 0, 0.524275005, 0)
Kill.Size = UDim2.new(0, 112, 0, 38)
Kill.Font = Enum.Font.PatrickHand
Kill.Text = "KILL!!!"
Kill.TextColor3 = Color3.fromRGB(255, 255, 255)
Kill.TextSize = 30.000
Kill.TextWrapped = true

Name.Name = "Name"
Name.Parent = Background
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 0.900
Name.Position = UDim2.new(0.0355029553, 0, 0.25252521, 0)
Name.Size = UDim2.new(0, 156, 0, 36)
Name.Font = Enum.Font.PatrickHand
Name.Text = "Player Name"
Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Name.TextSize = 30.000

local Players = game:GetService("Players")
local pname
local target

game.StarterGui:SetCore("SendNotification", {
    Title = "CHAOS Kill Player";
    Text = "DONT FORGET TO USE AND EQUIP WEAPON";
    Duration = 5;
}) 

Name:GetPropertyChangedSignal("Text"):Connect(function()
    pname = Name.Text
end)

Kill.MouseButton1Click:Connect(function()
 if Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") == nil then
  game.StarterGui:SetCore("SendNotification", {
   Title = "CHAOS Kill Player";
   Text = "Equip The Weapon First!";
   Duration = 5;
  })
 else
  if Players:FindFirstChild(pname) then
   target = Players:FindFirstChild(pname).Character
   if target:FindFirstChild("ForceField") then
    game.StarterGui:SetCore("SendNotification", {
     Title = "CHAOS Kill Player";
     Text = "Waiting until target force field gone";
     Duration = 5;
    }) 
    repeat 
     wait()
    until target:FindFirstChild("ForceField") == nil
   end
   repeat 
    Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").DamageRemote:FireServer(target.Humanoid)
    wait()
   until target.Humanoid.Health == 0 
   game.StarterGui:SetCore("SendNotification", {
     Title = "CHAOS Kill Player";
     Text = "Target Killed!";
     Duration = 5;
    })
  else
   game.StarterGui:SetCore("SendNotification", {
    Title = "CHAOS Kill Player";
    Text = "Target Not Found!";
    Duration = 5;
   }) 
  end
 end
end)
local uwu = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local cre = Instance.new("TextLabel")
local step = Instance.new("TextButton")
local gems = Instance.new("TextButton")
local out = Instance.new("TextButton")

uwu.Name = "uwu"
uwu.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
uwu.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
uwu.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = uwu
Main.BackgroundColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Main.Position = UDim2.new(0.604411781, 0, 0.214574918, 0)
Main.Size = UDim2.new(0, 193, 0, 148)
Main.Selectable = true
Main.Active = true
Main.Draggable = true

cre.Name = "cre"
cre.Parent = Main
cre.BackgroundColor3 = Color3.new(0, 0, 0)
cre.BackgroundTransparency = 1
cre.Position = UDim2.new(-0.00310030137, 0, 0.870257616, 0)
cre.Size = UDim2.new(0, 193, 0, 19)
cre.Font = Enum.Font.SourceSans
cre.Text = "by w1htz#1904"
cre.TextColor3 = Color3.new(1, 1, 1)
cre.TextSize = 18


step.Name = "step"
step.Parent = Main
step.BackgroundColor3 = Color3.new(1, 1, 1)
step.Position = UDim2.new(0.1938546, 0, 0.19810304, 0)
step.Size = UDim2.new(0, 117, 0, 25)
step.Font = Enum.Font.SourceSans
step.Text = "Steps Farm"
step.TextColor3 = Color3.new(0, 0, 0)
step.TextSize = 18
step.MouseButton1Click:connect(function()
 for i=1, 7500 do
     local A_1 = "collectOrb"
local A_2 = "Red Orb"
local A_3 = "City"
local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
Event:FireServer(A_1, A_2, A_3)
end
end)

gems.Name = "gems"
gems.Parent = Main
gems.BackgroundColor3 = Color3.new(1, 1, 1)
gems.Position = UDim2.new(0.188673258, 0, 0.515670598, 0)
gems.Size = UDim2.new(0, 117, 0, 25)
gems.Font = Enum.Font.SourceSans
gems.Text = "Gems Farm"
gems.TextColor3 = Color3.new(0, 0, 0)
gems.TextSize = 18
gems.MouseButton1Click:connect(function()
 for i=1, 1000 do
     local A_1 = "collectOrb"
local A_2 = "Gem"
local A_3 = "City"
local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
Event:FireServer(A_1, A_2, A_3)
end
end)

out.Name = "out"
out.Parent = Main
out.BackgroundColor3 = Color3.new(1, 1, 1)
out.BackgroundTransparency = 1
out.Position = UDim2.new(0.917098463, 0, 0, 0)
out.Size = UDim2.new(0, 16, 0, 18)
out.Font = Enum.Font.SourceSans
out.Text = "X"
out.TextColor3 = Color3.new(1, 0, 0)
out.TextSize = 20
out.MouseButton1Click:connect(function()
 Main.Visible = false
end)
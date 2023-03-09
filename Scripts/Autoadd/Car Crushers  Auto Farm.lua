local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local AutoFarmButton = Instance.new("TextButton")
local DisableAutoFarmButton = Instance.new("TextButton")
local NameOfTheGUI = Instance.new("TextLabel")
local NameOfTheGUI_2 = Instance.new("TextLabel")
local EnabledOrDisabledBar = Instance.new("ImageButton")
local EnabledBar = Instance.new("ImageButton")
local EnabledTextOnBar = Instance.new("TextLabel")
local DisabledBar = Instance.new("ImageButton")
local DisabledTextOnBar = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
--Properties:
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.new(0, 0.745098, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.373456776, 0, 0.372727275, 0)
Frame.Selectable = true
Frame.Size = UDim2.new(0, 262, 0, 212)
Frame.Draggable = true
 
AutoFarmButton.Name = "AutoFarmButton"
AutoFarmButton.Parent = Frame
AutoFarmButton.BackgroundColor3 = Color3.new(0, 0, 0)
AutoFarmButton.BorderSizePixel = 0
AutoFarmButton.Position = UDim2.new(0.141221374, 0, 0.216436312, 0)
AutoFarmButton.Size = UDim2.new(0, 187, 0, 47)
AutoFarmButton.Font = Enum.Font.Fantasy
AutoFarmButton.Text = "AutoFarm"
AutoFarmButton.TextColor3 = Color3.new(1, 1, 1)
AutoFarmButton.TextSize = 40
AutoFarmButton.TextStrokeColor3 = Color3.new(1, 1, 1)
AutoFarmButton.TextStrokeTransparency = 0.60000002384186
AutoFarmButton.TextWrapped = true
AutoFarmButton.MouseButton1Down:connect(function()
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Enabled!", Text = "AutoFarm is starting!"})
EnabledBar.Visible = true
DisabledBar.Visible = false
_G.Enabled = true
_G.VehicleName = "UAZ"
while _G.Enabled do
wait()
local Arguments = {
[1] = "Save",
[2] = {
["BodyColor"] = "Institutional white",
["BodyMaterial"] = "Platinum"
},
[3] = _G.VehicleName
}
 
game.ReplicatedStorage.rF['LoadSaveCustoms']:InvokeServer(unpack(Arguments))
game:GetService("ReplicatedStorage").rF.SpawnVehicle:InvokeServer(_G.VehicleName)
for i=1,10 do
wait(0.5)
game.Workspace["All crushers"]["Stair Fall"].Wall.CFrame = CFrame.new(0,900,0)
game.Workspace["All crushers"]["Stair Fall"].Wall.Size = Vector3.new(10000,1,10000)
game.Workspace["All crushers"]["Stair Fall"].Wall.CanCollide = false
game.Workspace.CarCollection:findFirstChild(game.Players.LocalPlayer.Name).Car:MoveTo(Vector3.new(0,910,0))
end
end
end)
 
DisableAutoFarmButton.Name = "DisableAutoFarmButton"
DisableAutoFarmButton.Parent = Frame
DisableAutoFarmButton.BackgroundColor3 = Color3.new(0, 0, 0)
DisableAutoFarmButton.BorderSizePixel = 0
DisableAutoFarmButton.Position = UDim2.new(0.141221374, 0, 0.655501306, 0)
DisableAutoFarmButton.Size = UDim2.new(0, 187, 0, 47)
DisableAutoFarmButton.Font = Enum.Font.Fantasy
DisableAutoFarmButton.Text = "Turn off"
DisableAutoFarmButton.TextColor3 = Color3.new(1, 1, 1)
DisableAutoFarmButton.TextSize = 30
DisableAutoFarmButton.TextStrokeColor3 = Color3.new(1, 1, 1)
DisableAutoFarmButton.TextStrokeTransparency = 0.60000002384186
DisableAutoFarmButton.TextWrapped = true
DisableAutoFarmButton.MouseButton1Down:connect(function()
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Disabled!", Text = "AutoFarm is started disable yourself! Just wait..."})
EnabledBar.Visible = false
DisabledBar.Visible = true
_G.Enabled = false
end)
 
NameOfTheGUI.Name = "NameOfTheGUI"
NameOfTheGUI.Parent = Frame
NameOfTheGUI.BackgroundColor3 = Color3.new(0, 0.952941, 0)
NameOfTheGUI.Position = UDim2.new(-0.0648854971, 0, 0, 0)
NameOfTheGUI.Size = UDim2.new(0, 296, 0, 30)
NameOfTheGUI.Font = Enum.Font.SourceSans
NameOfTheGUI.Text = "Car Crushers 2 Script"
NameOfTheGUI.TextColor3 = Color3.new(0, 0, 0)
NameOfTheGUI.TextScaled = true
NameOfTheGUI.TextSize = 14
NameOfTheGUI.TextWrapped = true
 
NameOfTheGUI_2.Name = "NameOfTheGUI"
NameOfTheGUI_2.Parent = Frame
NameOfTheGUI_2.BackgroundColor3 = Color3.new(0, 0.952941, 0)
NameOfTheGUI_2.Position = UDim2.new(-0.0648854971, 0, 1, 0)
NameOfTheGUI_2.Size = UDim2.new(0, 296, 0, 30)
NameOfTheGUI_2.Font = Enum.Font.SourceSans
NameOfTheGUI_2.Text = "Made by MoXPer :d"
NameOfTheGUI_2.TextColor3 = Color3.new(0, 0, 0)
NameOfTheGUI_2.TextScaled = true
NameOfTheGUI_2.TextSize = 14
NameOfTheGUI_2.TextWrapped = true
 
EnabledOrDisabledBar.Name = "EnabledOrDisabledBar"
EnabledOrDisabledBar.Parent = Frame
EnabledOrDisabledBar.BackgroundColor3 = Color3.new(1, 1, 1)
EnabledOrDisabledBar.BackgroundTransparency = 1
EnabledOrDisabledBar.BorderSizePixel = 0
EnabledOrDisabledBar.Position = UDim2.new(0.222070128, 0, 0.302132934, 0)
EnabledOrDisabledBar.Size = UDim2.new(0, 145, 0, 100)
EnabledOrDisabledBar.Image = "rbxassetid://939118523"
 
EnabledBar.Name = "EnabledBar"
EnabledBar.Parent = EnabledOrDisabledBar
EnabledBar.BackgroundColor3 = Color3.new(1, 1, 1)
EnabledBar.BackgroundTransparency = 1
EnabledBar.Position = UDim2.new(0.337903947, 0, 0.133043513, 0)
EnabledBar.Size = UDim2.new(0, 77, 0, 75)
EnabledBar.Visible = false
EnabledBar.Image = "rbxassetid://939119635"
EnabledBar.ImageColor3 = Color3.new(0.333333, 0.666667, 0)
 
EnabledTextOnBar.Name = "EnabledTextOnBar"
EnabledTextOnBar.Parent = EnabledBar
EnabledTextOnBar.BackgroundColor3 = Color3.new(1, 1, 1)
EnabledTextOnBar.BackgroundTransparency = 1
EnabledTextOnBar.BorderSizePixel = 0
EnabledTextOnBar.Position = UDim2.new(0.142857134, 0, 0.333333313, 0)
EnabledTextOnBar.Size = UDim2.new(0, 55, 0, 24)
EnabledTextOnBar.Font = Enum.Font.SourceSans
EnabledTextOnBar.Text = "Enabled"
EnabledTextOnBar.TextColor3 = Color3.new(0, 1, 0)
EnabledTextOnBar.TextSize = 14
 
DisabledBar.Name = "DisabledBar"
DisabledBar.Parent = EnabledOrDisabledBar
DisabledBar.BackgroundColor3 = Color3.new(1, 1, 1)
DisabledBar.BackgroundTransparency = 1
DisabledBar.Position = UDim2.new(0.0970593691, 0, 0.128695682, 0)
DisabledBar.Size = UDim2.new(0, 81, 0, 75)
DisabledBar.Image = "rbxassetid://939126427"
DisabledBar.ImageColor3 = Color3.new(0.666667, 0, 0)
 
DisabledTextOnBar.Name = "DisabledTextOnBar"
DisabledTextOnBar.Parent = DisabledBar
DisabledTextOnBar.BackgroundColor3 = Color3.new(1, 1, 1)
DisabledTextOnBar.BackgroundTransparency = 1
DisabledTextOnBar.BorderSizePixel = 0
DisabledTextOnBar.Position = UDim2.new(0.185185179, 0, 0.339130461, 0)
DisabledTextOnBar.Size = UDim2.new(0, 49, 0, 27)
DisabledTextOnBar.Font = Enum.Font.SourceSans
DisabledTextOnBar.Text = "Disabled"
DisabledTextOnBar.TextColor3 = Color3.new(1, 0, 0.0156863)
DisabledTextOnBar.TextSize = 14
 
TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(0.470588, 0.862745, 0.188235)
TextButton.BorderColor3 = Color3.new(0.807843, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.938931286, 0, 0, 0)
TextButton.Size = UDim2.new(0, 33, 0, 30)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "X"
TextButton.TextColor3 = Color3.new(0.54902, 0, 0)
TextButton.TextSize = 40
TextButton.TextWrapped = true
TextButton.MouseButton1Down:connect(function()
Frame.Visible = false
TextButton.Visible = false
end)
local CrateStealer = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Crates = Instance.new("Frame")
local _1 = Instance.new("TextButton")
local _2 = Instance.new("TextButton")
local _3 = Instance.new("TextButton")
local _4 = Instance.new("TextButton")
local _5 = Instance.new("TextButton")
local CrateChooser = Instance.new("TextButton")
local Grab = Instance.new("TextButton")
local Choice = nil
local function CCrate()
   local Crate = game.Workspace:GetChildren()
   local Plr = game.Players.LocalPlayer.Character.HumanoidRootPart
if Choice == 1 then
       for i,v in pairs(Crate) do
           if v.Name == "Clover" then
               v.CFrame = Plr.CFrame
           elseif v.Name == "XP" then
               v.CFrame = Plr.CFrame
           elseif v.Name == "Gem" then
               v.CFrame = Plr.CFrame
           elseif v.Name == "Basic" then
               v.CFrame = Plr.CFrame
           end
       end
elseif Choice == 2 then
   for i,v in pairs(Crate) do
           if v.Name == "XP" then
               v.CFrame = Plr.CFrame
           end
       end
elseif Choice == 3 then
   for i,v in pairs(Crate) do
           if v.Name == "Gem" then
               v.CFrame = Plr.CFrame
           end
   end
elseif Choice == 4 then
   for i,v in pairs(Crate) do
           if v.Name == "Money" then
               v.CFrame = Plr.CFrame
           end
   end
elseif Choice == 5 then
   for i,v in pairs(Crate) do
           if v.Name == "Clover" then
               v.CFrame = Plr.CFrame
           end
       end
end
end

--Properties:

CrateStealer.Name = "Crates"
CrateStealer.Parent = game.CoreGui
CrateStealer.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = CrateStealer
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.01, 0, .8, 0)
Frame.Size = UDim2.new(0, 210, 0, 40)

Crates.Name = "Crates"
Crates.Parent = Frame
Crates.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Crates.BorderSizePixel = 0
Crates.Size = UDim2.new(0, 144, 0, 110)
Crates.Visible = false

CrateChooser.Name = "CrateChooser"
CrateChooser.Parent = Frame
CrateChooser.BackgroundColor3 = Color3.fromRGB(216, 230, 255)
CrateChooser.BorderColor3 = Color3.fromRGB(81, 116, 162)
CrateChooser.Position = UDim2.new(0.0202380959, 0, 0.16785714, 0)
CrateChooser.Size = UDim2.new(0, 140, 0, 25)
CrateChooser.Font = Enum.Font.FredokaOne
CrateChooser.Text = "Crate Chosen: nil"
CrateChooser.TextColor3 = Color3.fromRGB(35, 186, 216)
CrateChooser.TextSize = 14.000
CrateChooser.TextWrapped = true
CrateChooser.MouseButton1Up:Connect(function()
Crates.Visible = true
CrateChooser.Visible = false
end)

_1.Name = "1"
_1.Parent = Crates
_1.BackgroundColor3 = Color3.fromRGB(216, 230, 255)
_1.BorderColor3 = Color3.fromRGB(81, 116, 162)
_1.Position = UDim2.new(0.0322222188, 0, 0.0484848581, 0)
_1.Size = UDim2.new(0, 134, 0, 20)
_1.Font = Enum.Font.FredokaOne
_1.Text = "All Crates"
_1.TextColor3 = Color3.fromRGB(35, 186, 216)
_1.TextSize = 14.000
_1.MouseButton1Up:Connect(function()
CrateChooser.Text = "Crate Chosen: All"
Choice = 1
Crates.Visible = false
CrateChooser.Visible = true
end)

_2.Name = "2"
_2.Parent = Crates
_2.BackgroundColor3 = Color3.fromRGB(216, 230, 255)
_2.BorderColor3 = Color3.fromRGB(81, 116, 162)
_2.Position = UDim2.new(0.0322221667, 0, 0.227272645, 0)
_2.Size = UDim2.new(0, 134, 0, 20)
_2.Font = Enum.Font.FredokaOne
_2.Text = "XP Crates"
_2.TextColor3 = Color3.fromRGB(35, 186, 216)
_2.TextSize = 14.000
_2.MouseButton1Up:Connect(function()
CrateChooser.Text = "Crate Chosen: XP"
Choice = 2
Crates.Visible = false
CrateChooser.Visible = true
end)

_3.Name = "3"
_3.Parent = Crates
_3.BackgroundColor3 = Color3.fromRGB(216, 230, 255)
_3.BorderColor3 = Color3.fromRGB(81, 116, 162)
_3.Position = UDim2.new(0.0322222188, 0, 0.400797486, 0)
_3.Size = UDim2.new(0, 134, 0, 20)
_3.Font = Enum.Font.FredokaOne
_3.Text = "Gem Crate"
_3.TextColor3 = Color3.fromRGB(35, 186, 216)
_3.TextSize = 14.000
_3.MouseButton1Up:Connect(function()
CrateChooser.Text = "Crate Chosen: Gem"
Choice = 3
Crates.Visible = false
CrateChooser.Visible = true
end)

_4.Name = "4"
_4.Parent = Crates
_4.BackgroundColor3 = Color3.fromRGB(216, 230, 255)
_4.BorderColor3 = Color3.fromRGB(81, 116, 162)
_4.Position = UDim2.new(0.0322224051, 0, 0.578883588, 0)
_4.Size = UDim2.new(0, 134, 0, 20)
_4.Font = Enum.Font.FredokaOne
_4.Text = "Money Crate"
_4.TextColor3 = Color3.fromRGB(35, 186, 216)
_4.TextSize = 14.000
_4.MouseButton1Up:Connect(function()
CrateChooser.Text = "Crate Chosen: Money"
Choice = 4
Crates.Visible = false
CrateChooser.Visible = true
end)

_5.Name = "5"
_5.Parent = Crates
_5.BackgroundColor3 = Color3.fromRGB(216, 230, 255)
_5.BorderColor3 = Color3.fromRGB(81, 116, 162)
_5.Position = UDim2.new(0.0322222263, 0, 0.75363636, 0)
_5.Size = UDim2.new(0, 134, 0, 20)
_5.Font = Enum.Font.FredokaOne
_5.Text = "Clover Crate"
_5.TextColor3 = Color3.fromRGB(35, 186, 216)
_5.TextSize = 14.000
_5.MouseButton1Up:Connect(function()
CrateChooser.Text = "Crate Chosen: Clover"
Choice = 5
Crates.Visible = false
CrateChooser.Visible = true
end)

Grab.Name = "Grab"
Grab.Parent = Frame
Grab.BackgroundColor3 = Color3.fromRGB(216, 230, 255)
Grab.BorderColor3 = Color3.fromRGB(81, 116, 162)
Grab.Position = UDim2.new(0.685168922, 0, 0.16785714, 0)
Grab.Size = UDim2.new(0, 60, 0, 25)
Grab.Font = Enum.Font.FredokaOne
Grab.Text = "Grab"
Grab.TextColor3 = Color3.fromRGB(35, 186, 216)
Grab.TextSize = 14.000
Grab.MouseButton1Up:Connect(function()
CCrate()
end)
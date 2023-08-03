-- Instances:

local thefunnymenu = Instance.new("ScreenGui")
local menu = Instance.new("Frame")
local title = Instance.new("TextLabel")
local execute = Instance.new("TextButton")
local titlebox = Instance.new("TextBox")
local select = Instance.new("TextButton")
local dropdown = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Folder = Instance.new("Folder")
local holder = Instance.new("TextButton")
local close = Instance.new("TextButton")
local selected = Instance.new("TextLabel")
local execute_2 = Instance.new("TextButton")
local value = Instance.new("StringValue")

--Properties:

thefunnymenu.Name = "thefunnymenu"
thefunnymenu.Parent = game:WaitForChild("CoreGui")
thefunnymenu.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

menu.Name = "menu"
menu.Parent = thefunnymenu
menu.Active = true
menu.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
menu.BorderColor3 = Color3.fromRGB(24, 24, 24)
menu.Draggable = true
menu.Position = UDim2.new(0.403238237, 0, 0.258823544, 0)
menu.Selectable = true
menu.Size = UDim2.new(0, 250, 0, 369)

title.Name = "title"
title.Parent = menu
title.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
title.Size = UDim2.new(0, 250, 0, 29)
title.Font = Enum.Font.SourceSans
title.Text = "Troop Fucker"
title.TextColor3 = Color3.fromRGB(33, 198, 102)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true

execute.Name = "execute"
execute.Parent = menu
execute.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
execute.BorderColor3 = Color3.fromRGB(24, 24, 24)
execute.Position = UDim2.new(0.100000001, 0, 0.726287246, 0)
execute.Size = UDim2.new(0, 200, 0, 30)
execute.Font = Enum.Font.SourceSans
execute.Text = "Single Execute"
execute.TextColor3 = Color3.fromRGB(0, 0, 0)
execute.TextScaled = true
execute.TextSize = 14.000
execute.TextWrapped = true

titlebox.Name = "titlebox"
titlebox.Parent = menu
titlebox.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
titlebox.BorderColor3 = Color3.fromRGB(24, 24, 24)
titlebox.Position = UDim2.new(0.100000001, 0, 0.476964772, 0)
titlebox.Size = UDim2.new(0, 200, 0, 80)
titlebox.Font = Enum.Font.SourceSans
titlebox.PlaceholderText = "Titlename goes here"
titlebox.Text = ""
titlebox.TextColor3 = Color3.fromRGB(0, 0, 0)
titlebox.TextSize = 14.000

select.Name = "select"
select.Parent = menu
select.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
select.BorderColor3 = Color3.fromRGB(24, 24, 24)
select.Position = UDim2.new(0.100000001, 0, 0.281842828, 0)
select.Size = UDim2.new(0, 200, 0, 50)
select.Font = Enum.Font.SourceSans
select.Text = "Select Player"
select.TextColor3 = Color3.fromRGB(0, 0, 0)
select.TextSize = 32.000
select.TextWrapped = true

dropdown.Name = "dropdown"
dropdown.Parent = menu
dropdown.Active = true
dropdown.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
dropdown.BorderColor3 = Color3.fromRGB(42, 42, 42)
dropdown.Position = UDim2.new(0.100000001, 0, 0.430894315, 0)
dropdown.Size = UDim2.new(0, 200, 0, 210)
dropdown.Visible = false
dropdown.CanvasSize = UDim2.new(0, 0, 8, 0)
dropdown.ScrollBarThickness = 4

UIListLayout.Parent = dropdown
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

Folder.Parent = dropdown

holder.Name = "holder"
holder.Parent = Folder
holder.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
holder.BorderColor3 = Color3.fromRGB(63, 63, 63)
holder.Size = UDim2.new(0, 200, 0, 40)
holder.Visible = false
holder.Font = Enum.Font.SourceSans
holder.Text = "holder"
holder.TextColor3 = Color3.fromRGB(255, 255, 255)
holder.TextSize = 14.000
holder.TextWrapped = true

close.Name = "close"
close.Parent = menu
close.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
close.BorderColor3 = Color3.fromRGB(24, 24, 24)
close.Position = UDim2.new(0.899999976, 0, 0, 0)
close.Size = UDim2.new(0, 25, 0, 29)
close.Font = Enum.Font.SourceSans
close.Text = "X"
close.TextColor3 = Color3.fromRGB(255, 0, 0)
close.TextScaled = true
close.TextSize = 14.000
close.TextWrapped = true

selected.Name = "selected"
selected.Parent = menu
selected.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
selected.BackgroundTransparency = 1.000
selected.Position = UDim2.new(0.100000001, 0, 0.146341473, 0)
selected.Size = UDim2.new(0, 200, 0, 50)
selected.Font = Enum.Font.SourceSans
selected.Text = "Selected: "
selected.TextColor3 = Color3.fromRGB(0, 0, 0)
selected.TextSize = 20.000
selected.TextXAlignment = Enum.TextXAlignment.Left

execute_2.Name = "execute"
execute_2.Parent = menu
execute_2.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
execute_2.BorderColor3 = Color3.fromRGB(24, 24, 24)
execute_2.Position = UDim2.new(0.100000001, 0, 0.840108395, 0)
execute_2.Size = UDim2.new(0, 200, 0, 30)
execute_2.Font = Enum.Font.SourceSans
execute_2.Text = "Execute on all"
execute_2.TextColor3 = Color3.fromRGB(0, 0, 0)
execute_2.TextScaled = true
execute_2.TextSize = 14.000
execute_2.TextWrapped = true

value.Parent = menu

execute.MouseButton1Click:Connect(function()
local tag = "rbxassetid://2445524285"
    pcall(function()
        game:GetService("Players")[value.Value].Character.HumanoidRootPart.HeadGUI.UpdateHeadGUI:FireServer(titlebox.Text,tag)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.HeadGUI.UpdateHeadGUI:FireServer("CIVILIAN",tag)
    end)
end)

execute_2.MouseButton1Click:Connect(function()
    local tag = "rbxassetid://2445524285"
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v ~= game:GetService("Players").LocalPlayer then
            v.Character.HumanoidRootPart.HeadGUI.UpdateHeadGUI:FireServer(titlebox.Text,tag)
        end
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.HeadGUI.UpdateHeadGUI:FireServer("CIVILIAN",tag)
    end
end)
close.MouseButton1Click:Connect(function()
    thefunnymenu:Destroy()
end)

select.MouseButton1Click:Connect(function()
    dropdown.Visible = true
end)

local function create(user,display)
    local e = holder:Clone()
    e.Name = tostring(user)
    e.Text = tostring(display)
    e.Visible = true
    e.Parent = dropdown
    e.MouseButton1Click:Connect(function()
        selected.Text = "Selected: " .. e.Text
        value.Value = e.Name
        dropdown.Visible = false
    end)
end

for i,v in pairs(game:GetService("Players"):GetChildren()) do
    if v.Name == game:GetService("Players").LocalPlayer.Name then
    else
        create(v.Name,v.DisplayName)
    end
end

game:GetService("Players").PlayerAdded:Connect(function(player)
    create(player.Name,player.DisplayName)
end)

game:GetService("Players").PlayerRemoving:Connect(function(player)
    dropdown[tostring(player.Name)]:Destroy()
end)
-- Gui to Lua
-- Version: 3.2

-- Instances:

local fuckbyfron = Instance.new("ScreenGui")
local window = Instance.new("Frame")
local main = Instance.new("Frame")
local input = Instance.new("TextBox")
local exe = Instance.new("TextButton")
local inj = Instance.new("TextButton")
local open = Instance.new("TextButton")
local clea = Instance.new("TextButton")
local output = Instance.new("TextBox")
local title = Instance.new("TextLabel")
local logo = Instance.new("ImageLabel")
local close = Instance.new("TextButton")
local minimize = Instance.new("TextButton")
local mini = Instance.new("ImageButton")

--Properties:

fuckbyfron.Name = "fuckbyfron"
fuckbyfron.Parent = game.CoreGui
fuckbyfron.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

window.Name = "window"
window.Parent = fuckbyfron
window.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
window.BorderColor3 = Color3.fromRGB(0, 0, 0)
window.Position = UDim2.new(0.0651315823, 0, 0.17032434, 0)
window.Size = UDim2.new(0, 306, 0, 364)

main.Name = "main"
main.Parent = window
main.BackgroundColor3 = Color3.fromRGB(236, 0, 0)
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.BorderSizePixel = 0
main.Position = UDim2.new(0, 0, 0.0769230798, 0)
main.Size = UDim2.new(0, 306, 0, 336)

input.Name = "input"
input.Parent = main
input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
input.BorderColor3 = Color3.fromRGB(185, 185, 185)
input.Position = UDim2.new(0.0205278583, 0, 0.0714285746, 0)
input.Size = UDim2.new(0, 293, 0, 186)
input.Font = Enum.Font.Arial
input.MultiLine = true
input.Text = ""
input.TextColor3 = Color3.fromRGB(0, 0, 0)
input.TextSize = 13.000
input.TextWrapped = true
input.TextXAlignment = Enum.TextXAlignment.Left
input.TextYAlignment = Enum.TextYAlignment.Top

exe.Name = "exe"
exe.Parent = main
exe.BackgroundColor3 = Color3.fromRGB(244, 244, 244)
exe.BorderColor3 = Color3.fromRGB(198, 198, 198)
exe.Position = UDim2.new(0.0196078438, 0, 0.645833313, 0)
exe.Size = UDim2.new(0, 64, 0, 23)
exe.Font = Enum.Font.SourceSans
exe.Text = "Execute"
exe.TextColor3 = Color3.fromRGB(0, 0, 0)
exe.TextSize = 14.000
exe.MouseButton1Down:connect(function()
loadstring(input.Text)()
    output.Text = "Script executed successfully!!!"
    wait(3)
    output.Text "Your script sucks"
end)

inj.Name = "inj"
inj.Parent = main
inj.BackgroundColor3 = Color3.fromRGB(244, 244, 244)
inj.BorderColor3 = Color3.fromRGB(198, 198, 198)
inj.Position = UDim2.new(0.76797384, 0, 0.645833313, 0)
inj.Size = UDim2.new(0, 64, 0, 23)
inj.Font = Enum.Font.SourceSans
inj.Text = "Inject"
inj.TextColor3 = Color3.fromRGB(0, 0, 0)
inj.TextSize = 14.000
inj.MouseButton1Down:connect(function()
    wait(1)
    output.Text = "Luigi.exe Injected!"
    wait(3)
    output.Text = " "
end)

open.Name = "open"
open.Parent = main
open.BackgroundColor3 = Color3.fromRGB(244, 244, 244)
open.BorderColor3 = Color3.fromRGB(198, 198, 198)
open.Position = UDim2.new(0.264705896, 0, 0.645833313, 0)
open.Size = UDim2.new(0, 64, 0, 23)
open.Font = Enum.Font.SourceSans
open.Text = "C00lGui🤑"
open.TextColor3 = Color3.fromRGB(0, 0, 0)
open.TextSize = 14.000
open.MouseButton1Down:connect(function()
    loadstring(game:GetObjects("rbxassetid://11801763945")[1].Source)()
end)

clea.Name = "clea"
clea.Parent = main
clea.BackgroundColor3 = Color3.fromRGB(244, 244, 244)
clea.BorderColor3 = Color3.fromRGB(198, 198, 198)
clea.Position = UDim2.new(0.522875845, 0, 0.645833313, 0)
clea.Size = UDim2.new(0, 64, 0, 23)
clea.Font = Enum.Font.SourceSans
clea.Text = "Clear"
clea.TextColor3 = Color3.fromRGB(0, 0, 0)
clea.TextSize = 14.000
clea.MouseButton1Down:connect(function()
    input.Text = " "
end)

output.Name = "output"
output.Parent = main
output.BackgroundColor3 = Color3.fromRGB(236, 236, 236)
output.BorderColor3 = Color3.fromRGB(185, 185, 185)
output.Position = UDim2.new(0.0205278583, 0, 0.747023821, 0)
output.Size = UDim2.new(0, 293, 0, 70)
output.Font = Enum.Font.Arial
output.Text = ""
output.TextColor3 = Color3.fromRGB(0, 0, 0)
output.TextSize = 13.000
output.TextXAlignment = Enum.TextXAlignment.Left
output.TextYAlignment = Enum.TextYAlignment.Top

title.Name = "title"
title.Parent = window
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Position = UDim2.new(0.0909090936, 0, 0, 0)
title.Size = UDim2.new(0, 110, 0, 28)
title.Font = Enum.Font.SourceSans
title.Text = "Luigi.exe"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 14.000
title.TextXAlignment = Enum.TextXAlignment.Left

logo.Name = "logo"
logo.Parent = title
logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
logo.BackgroundTransparency = 1.000
logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
logo.BorderSizePixel = 0
logo.Position = UDim2.new(-0.218181819, 0, 0.142857149, 0)
logo.Size = UDim2.new(0, 24, 0, 20)
logo.Image = "http://www.roblox.com/asset/?id=15545615066"

close.Name = "close"
close.Parent = window
close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close.BackgroundTransparency = 1.000
close.BorderColor3 = Color3.fromRGB(0, 0, 0)
close.BorderSizePixel = 0
close.Position = UDim2.new(0.869281054, 0, 0, 0)
close.Size = UDim2.new(0, 40, 0, 28)
close.Font = Enum.Font.Arial
close.Text = "X"
close.TextColor3 = Color3.fromRGB(255, 0, 0)
close.TextSize = 14.000
close.MouseButton1Down:connect(function()
    window.Visible = false
end)

minimize.Name = "minimize"
minimize.Parent = window
minimize.BackgroundColor3 = Color3.fromRGB(255, 050, 0)
minimize.BackgroundTransparency = 1.000
minimize.BorderColor3 = Color3.fromRGB(0, 0, 0)
minimize.BorderSizePixel = 0
minimize.Position = UDim2.new(0.637254894, 0, -0.000915757904, 0)
minimize.Size = UDim2.new(0, 40, 0, 28)
minimize.Font = Enum.Font.Arial
minimize.Text = "-"
minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
minimize.TextSize = 14.000
minimize.MouseButton1Down:connect(function()
    window.Visible = false
    mini.Visible = true
end)


mini.Name = "mini"
mini.Parent = fuckbyfron
mini.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mini.BorderColor3 = Color3.fromRGB(0, 0, 0)
mini.BorderSizePixel = 0
mini.Position = UDim2.new(0, 0, 0.90840143, 0)
mini.Size = UDim2.new(0, 54, 0, 52)
mini.Style = Enum.ButtonStyle.RobloxButton
mini.Image = "http://www.roblox.com/asset/?id=15545615066"
mini.Visible = false
mini.MouseButton1Down:connect(function()
    mini.Visible = false
    window.Visible = true
end)

-- Scripts:

local function SZFCN_fake_script() -- window.Dragify 
    local script = Instance.new('LocalScript', window)

    local UserInputService = game:GetService("UserInputService")
    
    local gui = script.Parent
    
    local dragging
    local dragInput
    local dragStart
    local startPos
    
    local function update(input)
        local delta = input.Position - dragStart
        gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    
    gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position
    
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
end
coroutine.wrap(SZFCN_fake_script)()

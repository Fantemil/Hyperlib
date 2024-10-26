local lp = game:GetService("Players").LocalPlayer
local chr = lp.Character
local bp = lp.Backpack
local color = Color3.new(0,0,0)
local badcolor = Color3.new(0,0,0)
local colors={}
local mouse = lp:GetMouse()

local sg = game:GetService("StarterGui")

local paintBucket = chr:FindFirstChild('PaintBucket') or lp.Backpack:FindFirstChild('PaintBucket')
if paintBucket.Parent.ClassName == 'Backpack' then
    paintBucket.Parent = chr
end
local paint = paintBucket.Remotes.ServerControls

local colorTool = Instance.new("Tool", bp)
colorTool.Name = "get color"
colorTool.RequiresHandle = false

local badColorTool = Instance.new("Tool", bp)
badColorTool.Name = "get BadColor"
badColorTool.RequiresHandle = false

local function onColorToolActivated()
    local target = mouse.Target

    if target then
        color = target.Color
    end
end

local function onBadColorToolActivated()
    local target = mouse.Target

    if target then
        badcolor = target.Color
    end
end

colorTool.Activated:Connect(onColorToolActivated)
badColorTool.Activated:Connect(onBadColorToolActivated)

Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/VeztWare/KavoUi/main/KavoUi.lua"))()

local Window = Library.CreateLib("Colorizer", "DarkTheme")
local Tab = Window:NewTab("Main")
local enabled1 = false
local enabled2 = false

local colors = Tab:NewSection("Colors")

colors:NewTextBox("change color from", "Type here color in RGB spliting with spaces", function(txt)
	colors={}
    for i in string.gmatch(txt, "%S+") do
        table.insert(colors, i)
    end
    badcolor = Color3.fromRGB(colors[1], colors[2], colors[3])
end)

colors:NewTextBox("change color to", "Type here color in RGB spliting with spaces", function(txt)
	colors={}
    for i in string.gmatch(txt, "%S+") do
        table.insert(colors, i)
    end
    color = Color3.fromRGB(colors[1], colors[2], colors[3])
end)

local btns = Tab:NewSection("Buttons")

btns:NewButton("Change every province color", "Changes to color from 2 label", function()
    sg:SetCore("SendNotification",{
	  Title = "Message",
	  Text = "Started, wait until end.",
	  Icon = "rbxassetid://14529775287"
	})
    paintBucket = chr:FindFirstChild('PaintBucket') or lp.Backpack:FindFirstChild('PaintBucket')
    if paintBucket.Parent.ClassName == 'Backpack' then
        paintBucket.Parent = chr
    end
    paint = paintBucket.Remotes.ServerControls
    for _, v in pairs(workspace:GetDescendants()) do
        if v.Name == 'Province' then
            if v.Color ~= color then
                paint:InvokeServer("PaintPart", {["Part"] = v, ["Color"] = color}, "Peace")
            end
        end
    end
    sg:SetCore("SendNotification",{
	  Title = "Message",
	  Text = "END!!!",
	  Icon = "rbxassetid://14529775287"
	})
end)

btns:NewButton("Change only ... province color", "Changes from color from 1 label to color from 2 label", function()
    sg:SetCore("SendNotification",{
	  Title = "Message",
	  Text = "Started, wait until end.",
	  Icon = "rbxassetid://14529775287"
	})
    paintBucket = chr:FindFirstChild('PaintBucket') or lp.Backpack:FindFirstChild('PaintBucket')
    if paintBucket.Parent.ClassName == 'Backpack' then
        paintBucket.Parent = chr
    end
    paint = paintBucket.Remotes.ServerControls
    for _, v in pairs(workspace:GetDescendants()) do
        if v.Name == 'Province' then
            if v.Color == badcolor then
                paint:InvokeServer("PaintPart", {["Part"] = v, ["Color"] = color}, "Peace")
            end
        end
    end
    print('END')
    sg:SetCore("SendNotification",{
	  Title = "Message",
	  Text = "END!!!",
	  Icon = "rbxassetid://14529775287"
	})
end)

local loops = Tab:NewSection("loops")

local toogle1 = loops:NewToggle("Change every province color", "Changes to color from 2 label", function(state)
    if not enabled2 then
        paintBucket = chr:FindFirstChild('PaintBucket') or lp.Backpack:FindFirstChild('PaintBucket')
        if paintBucket.Parent.ClassName == 'Backpack' then
            paintBucket.Parent = chr
        end
        enabled1 = state
    end
end)

local toogle2 = loops:NewToggle("Change only ... province color", "Changes from color from 1 label to color from 2 label", function(state)
    if not enabled1 then
        paintBucket = chr:FindFirstChild('PaintBucket') or lp.Backpack:FindFirstChild('PaintBucket')
        if paintBucket.Parent.ClassName == 'Backpack' then
            paintBucket.Parent = chr
        end
        enabled2 = state
    end
end)

spawn(function()
    while wait() do
        if enabled1 then
            for _, v in pairs(workspace:GetDescendants()) do
                if v.Name == 'Province' then
                    if v.Color ~= color then
                        paint:InvokeServer("PaintPart", {["Part"] = v, ["Color"] = color}, "Peace")
                    end
                end
                if not enabled1 then
                    break
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if enabled2 then
            for _, v in pairs(workspace:GetDescendants()) do
                if v.Name == 'Province' then
                    if v.Color == badcolor then
                        paint:InvokeServer("PaintPart", {["Part"] = v, ["Color"] = color}, "Peace")
                    end
                end
                if not enabled2 then
                    break
                end
            end
        end
    end
end)
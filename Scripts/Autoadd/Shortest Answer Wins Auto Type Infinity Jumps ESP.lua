--SCRIPT
loadstring(game:HttpGet("https://pastebin.com/raw/UZeGnCJ7"))()


-- Instances:

local KS = Instance.new("ScreenGui")
local lb = Instance.new("ImageLabel")
local db = Instance.new("ImageLabel")
local welcomepic = Instance.new("ImageLabel")
local welcome = Instance.new("TextLabel")
local textboxpic = Instance.new("ImageLabel")
local TextBox = Instance.new("TextBox")
local Enterpic = Instance.new("ImageLabel")
local Enter = Instance.new("TextButton")
local getkeypic = Instance.new("ImageLabel")
local getkey = Instance.new("TextButton")
local infopic = Instance.new("ImageLabel")
local info = Instance.new("TextButton")
local closepic = Instance.new("ImageLabel")
local close = Instance.new("TextButton")
local sfx = Instance.new("Sound")

--Properties:

KS.Name = "KS"
KS.Parent = game.CoreGui

sfx.Name = "sfx"
sfx.Parent = game.workspace
sfx.MaxDistance = 10000
sfx.PlaybackSpeed = 1
sfx.SoundId = "rbxassetid://405593386"


lb.Name = "lb"
lb.Parent = KS
lb.Active = true
lb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
lb.BackgroundTransparency = 1.000
lb.Position = UDim2.new(0.354090363, 0, 0.348514855, 0)
lb.Selectable = true
lb.Size = UDim2.new(0, 239, 0, 153)
lb.Image = "rbxassetid://3570695787"
lb.ImageColor3 = Color3.fromRGB(0, 255, 255)
lb.ScaleType = Enum.ScaleType.Slice
lb.SliceCenter = Rect.new(100, 100, 100, 100)
lb.SliceScale = 0.120
lb.Active = true
lb.Draggable = true

db.Name = "db"
db.Parent = lb
db.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
db.BackgroundTransparency = 1.000
db.Position = UDim2.new(0.0376569033, 0, 0.0784313753, 0)
db.Size = UDim2.new(0, 220, 0, 128)
db.Image = "rbxassetid://3570695787"
db.ImageColor3 = Color3.fromRGB(0, 190, 190)
db.ScaleType = Enum.ScaleType.Slice
db.SliceCenter = Rect.new(100, 100, 100, 100)
db.SliceScale = 0.120

welcomepic.Name = "welcomepic"
welcomepic.Parent = db
welcomepic.AnchorPoint = Vector2.new(0.5, 0.5)
welcomepic.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
welcomepic.BackgroundTransparency = 1.000
welcomepic.Position = UDim2.new(0.502272725, 0, 0.1328125, 0)
welcomepic.Selectable = true
welcomepic.Size = UDim2.new(0.940909088, 0, 0.125, 0)
welcomepic.Image = "rbxassetid://3570695787"
welcomepic.ImageColor3 = Color3.fromRGB(40, 244, 244)
welcomepic.ScaleType = Enum.ScaleType.Slice
welcomepic.SliceCenter = Rect.new(100, 100, 100, 100)
welcomepic.SliceScale = 0.120

welcome.Name = "welcome"
welcome.Parent = welcomepic
welcome.BackgroundColor3 = Color3.fromRGB(40, 244, 244)
welcome.BackgroundTransparency = 1.000
welcome.BorderColor3 = Color3.fromRGB(130, 203, 255)
welcome.BorderSizePixel = 0
welcome.Position = UDim2.new(0.016469039, 0, -0.0335336328, 0)
welcome.Size = UDim2.new(0, 200, 0, 17)
welcome.Font = Enum.Font.Cartoon
welcome.Text = "Welcome to Loody's Key-System"
welcome.TextColor3 = Color3.fromRGB(0, 0, 0)
welcome.TextScaled = true
welcome.TextSize = 13.000
welcome.TextStrokeColor3 = Color3.fromRGB(255, 85, 127)
welcome.TextStrokeTransparency = 0.800
welcome.TextWrapped = true

textboxpic.Name = "textboxpic"
textboxpic.Parent = db
textboxpic.Active = true
textboxpic.AnchorPoint = Vector2.new(0.5, 0.5)
textboxpic.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textboxpic.BackgroundTransparency = 1.000
textboxpic.Position = UDim2.new(0.5, 0, 0.32421875, 0)
textboxpic.Selectable = true
textboxpic.Size = UDim2.new(0.745454609, 0, 0.1484375, 0)
textboxpic.Image = "rbxassetid://3570695787"
textboxpic.ImageColor3 = Color3.fromRGB(243, 243, 243)
textboxpic.ScaleType = Enum.ScaleType.Slice
textboxpic.SliceCenter = Rect.new(100, 100, 100, 100)
textboxpic.SliceScale = 0.120

TextBox.Parent = textboxpic
TextBox.BackgroundColor3 = Color3.fromRGB(243, 243, 243)
TextBox.BackgroundTransparency = 1.000
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.0975110978, 0, 0, 0)
TextBox.Size = UDim2.new(0, 133, 0, 19)
TextBox.Font = Enum.Font.Arcade
TextBox.Text = "..."
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

Enterpic.Name = "Enterpic"
Enterpic.Parent = db
Enterpic.Active = true
Enterpic.AnchorPoint = Vector2.new(0.5, 0.5)
Enterpic.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Enterpic.BackgroundTransparency = 1.000
Enterpic.BorderColor3 = Color3.fromRGB(0, 0, 0)
Enterpic.Position = UDim2.new(0.5, 0, 0.50390625, 0)
Enterpic.Selectable = true
Enterpic.Size = UDim2.new(0.536363721, 0, 0.1484375, 0)
Enterpic.Image = "rbxassetid://3570695787"
Enterpic.ImageColor3 = Color3.fromRGB(0, 0, 0)
Enterpic.ScaleType = Enum.ScaleType.Slice
Enterpic.SliceCenter = Rect.new(100, 100, 100, 100)
Enterpic.SliceScale = 0.120

Enter.Name = "Enter"
Enter.Parent = Enterpic
Enter.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Enter.BackgroundTransparency = 1.000
Enter.BorderSizePixel = 0
Enter.Position = UDim2.new(0.0823574662, 0, 0.157500029, 0)
Enter.Size = UDim2.new(0, 98, 0, 16)
Enter.ZIndex = 2
Enter.Font = Enum.Font.Michroma
Enter.Text = "Enter"
Enter.TextColor3 = Color3.fromRGB(255, 255, 255)
Enter.TextSize = 14.000
Enter.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Enter.TextStrokeTransparency = 0.800
Enter.TextWrapped = true
Enter.MouseButton1Down:connect(function()
_G.lcorrect = true
if TextBox.Text == _G.loody then
    Enter.TextColor3 = Color3.fromRGB(0, 255, 0)
    game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "Key-System", -- Required
    Text = "Correct Key!", -- Required
    Icon = "rbxthumb://type=Asset&id=2685266578&w=150&h=150" -- Optional
})

    sfx.Playing = true
    wait(2)
    sfx:Destroy()
    loadstring(game:HttpGet("https://pastebin.com/raw/zkKZqEv8"))()
    wait(1)
    
else --IF WRONG PASS
--WRONGPASS NOTIFY
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Key-System", -- Required
        Text = "Wrong Key!", -- Required
        Icon = "rbxthumb://type=Asset&id=501164556&w=150&h=150" -- Optional
    })
--TEXTBOX
    TextBox.Text = "In-Valid!"
    Enter.TextColor3 = Color3.fromRGB(255, 0, 0)
    wait(1)
    Enter.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextBox.Text = "..."
end

end)


getkeypic.Name = "getkeypic"
getkeypic.Parent = db
getkeypic.Active = true
getkeypic.AnchorPoint = Vector2.new(0.5, 0.5)
getkeypic.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
getkeypic.BackgroundTransparency = 1.000
getkeypic.BorderColor3 = Color3.fromRGB(0, 0, 0)
getkeypic.Position = UDim2.new(0.5, 0, 0.69921875, 0)
getkeypic.Selectable = true
getkeypic.Size = UDim2.new(0.536363721, 0, 0.1484375, 0)
getkeypic.Image = "rbxassetid://3570695787"
getkeypic.ImageColor3 = Color3.fromRGB(0, 0, 0)
getkeypic.ScaleType = Enum.ScaleType.Slice
getkeypic.SliceCenter = Rect.new(100, 100, 100, 100)
getkeypic.SliceScale = 0.120

getkey.Name = "getkey"
getkey.Parent = getkeypic
getkey.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
getkey.BackgroundTransparency = 1.000
getkey.BorderSizePixel = 0
getkey.Position = UDim2.new(0.0823574662, 0, 0.0522368774, 0)
getkey.Size = UDim2.new(0, 98, 0, 16)
getkey.ZIndex = 2
getkey.Font = Enum.Font.Michroma
getkey.Text = "Get Key"
getkey.TextColor3 = Color3.fromRGB(255, 255, 255)
getkey.TextSize = 14.000
getkey.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
getkey.TextStrokeTransparency = 0.800
getkey.TextWrapped = true
getkey.MouseButton1Down:connect(function()
getkey.TextColor3 = Color3.fromRGB(0, 255, 0)
--copy
setclipboard("https://link-center.net/475890/loody-key-system")
--notification
game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "Key-System", -- Required
    Text = "Copied The Link!", -- Required
    Icon = "rbxthumb://type=Asset&id=10825594202&w=150&h=150" -- Optional
})
wait(0.5)
getkey.TextColor3 = Color3.fromRGB(255, 255, 255)
end)

infopic.Name = "infopic"
infopic.Parent = db
infopic.Active = true
infopic.AnchorPoint = Vector2.new(0.5, 0.5)
infopic.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
infopic.BackgroundTransparency = 1.000
infopic.BorderColor3 = Color3.fromRGB(0, 0, 0)
infopic.Position = UDim2.new(0.492541373, 0, 0.88671875, 0)
infopic.Selectable = true
infopic.Size = UDim2.new(0.321446329, 0, 0.1171875, 0)
infopic.Image = "rbxassetid://3570695787"
infopic.ImageColor3 = Color3.fromRGB(255, 255, 0)
infopic.ScaleType = Enum.ScaleType.Slice
infopic.SliceCenter = Rect.new(100, 100, 100, 100)
infopic.SliceScale = 0.120

info.Name = "info"
info.Parent = infopic
info.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
info.BackgroundTransparency = 1.000
info.BorderSizePixel = 0
info.Position = UDim2.new(0.0715321973, 0, -0.0234222412, 0)
info.Size = UDim2.new(0, 63, 0, 16)
info.ZIndex = 2
info.Font = Enum.Font.Michroma
info.Text = "INFO"
info.TextColor3 = Color3.fromRGB(0, 0, 0)
info.TextSize = 14.000
info.TextStrokeTransparency = 0.800
info.TextWrapped = true
info.MouseButton1Down:connect(function()
infopic.ImageColor3 = Color3.fromRGB(0, 255, 0)
info.Text = ">> F9 <<"
loadstring(game:HttpGet("https://pastebin.com/raw/r6G6WqxW"))()
wait(3)
infopic.ImageColor3 = Color3.fromRGB(255, 255, 0)
info.Text = "INFO"
end)




closepic.Name = "closepic"
closepic.Parent = lb
closepic.Active = true
closepic.AnchorPoint = Vector2.new(0.5, 0.5)
closepic.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
closepic.BackgroundTransparency = 1.000
closepic.Position = UDim2.new(0.959014773, 0, 0.0668740869, 0)
closepic.Selectable = true
closepic.Size = UDim2.new(0.0819702074, 0, 0.133748084, 0)
closepic.Image = "rbxassetid://3570695787"
closepic.ImageColor3 = Color3.fromRGB(255, 64, 64)
closepic.ScaleType = Enum.ScaleType.Slice
closepic.SliceCenter = Rect.new(100, 100, 100, 100)
closepic.SliceScale = 0.120

close.Name = "close"
close.Parent = closepic
close.BackgroundColor3 = Color3.fromRGB(255, 64, 64)
close.BackgroundTransparency = 1.000
close.BorderColor3 = Color3.fromRGB(0, 0, 0)
close.BorderSizePixel = 0
close.Position = UDim2.new(-0.123664856, 0, 0.0995501578, 0)
close.Size = UDim2.new(0, 23, 0, 16)
close.Font = Enum.Font.PermanentMarker
close.Text = "X"
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextScaled = true
close.TextSize = 14.000
close.TextWrapped = true
close.MouseButton1Down:connect(function()
    close.Visible = false
    cls()
end)


function cls()
    for i=0,0.99,0.05 do
    lb.Position = UDim2.new(0.354090363 + i,0,0.348514855,0)
    wait(0.01)
    end
    for s=5,1,-1 do
    game.CoreGui.KS:Destroy()
    _G.lcorrect = false
    wait(0.01)
    end
end
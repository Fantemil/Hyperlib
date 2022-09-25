if game:GetService("CoreGui"):FindFirstChild("ArticLoader") then
    game:GetService("CoreGui"):FindFirstChild("ArticLoader"):Destroy()
end

local ArticLoader = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local IntroSongs = Instance.new("Folder")

ArticLoader.Parent = game:GetService("CoreGui")
ArticLoader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ArticLoader.Name = "ArticLoader"

Main.Parent = ArticLoader
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 1.000
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 100, 0, 100)

ImageLabel.Parent = Main
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel.Size = UDim2.new(0, 100, 0, 100)
ImageLabel.Image = "http://www.roblox.com/asset/?id=%39%38%32%34%32%37%30%32%39%35"
ImageLabel.Visible = true

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = ImageLabel

IntroSongs.Name = "IntroSongs"
IntroSongs.Parent = ImageLabel

Song1, Song2, Song3, Song4, Song5, Song6, Song7, Song8, Song9, Song10 = Instance.new("Sound", IntroSongs), Instance.new("Sound", IntroSongs), Instance.new("Sound", IntroSongs), Instance.new("Sound", IntroSongs), Instance.new("Sound", IntroSongs), Instance.new("Sound", IntroSongs), Instance.new("Sound", IntroSongs), Instance.new("Sound", IntroSongs), Instance.new("Sound", IntroSongs), Instance.new("Sound", IntroSongs)
Song1.SoundId = "rbxassetid://%39%31%30%36%39%30%34%39%37%35";Song2.SoundId = "rbxassetid://%32%35%37%36%33%39%32%34%32%32";Song3.SoundId = "rbxassetid://%38%30%31%39%39%35%37%31%35%31";Song4.SoundId = "rbxassetid://%38%39%34%30%38%30%31%30%38%30";Song5.SoundId = "rbxassetid://%38%39%33%34%30%33%32%38%39%39";Song6.SoundId = "rbxassetid://%38%31%34%30%30%39%35%31%30%31";Song7.SoundId = "rbxassetid://%36%32%35%31%39%33%39%35%37%31";Song8.SoundId = "rbxassetid://%31%33%31%30%35%37%33%31%36";Song9.SoundId = "rbxassetid://%34%39%39%35%38%33%37%36%30%37";Song2.Volume = 100;Song10.SoundId = "rbxassetid://%39%30%39%34%35%34%36%33%33%37"

SONGS = ImageLabel:WaitForChild("IntroSongs"):GetChildren()
PLAY = SONGS[math.random(1, #SONGS)]
PLAY:Play()

task.wait(.5)

task.spawn(function()task.wait(.2)
local TweenServ = game:GetService("TweenService")
local Style = Enum.EasingStyle.Sine

task.spawn(function()
    while PLAY.TimePosition <= PLAY.TimeLength - 0.5 and task.wait(0/1) do
        local Moving = {}
        Moving.Size = UDim2.new(PLAY.PlaybackLoudness / 500 + 0.5, 0, PLAY.PlaybackLoudness / 500 + 0.5, 0)
        TweenServ:Create(ImageLabel, TweenInfo.new(0.2, Style), Moving):Play()
    end
end)

task.wait(PLAY.TimeLength - 0.2)

local Tween1,Tween2,Tween3 = {},{},{}
local Styling = TweenInfo.new(0.5, Style)

Tween1.Size = UDim2.new(0, 0, 0 ,0)
Tween2.CornerRadius = UDim.new(0, 50)
Tween3.Volume = 0

TweenServ:Create(ImageLabel, Styling, Tween1):Play()
TweenServ:Create(UICorner, Styling, Tween2):Play()
TweenServ:Create(PLAY, Styling, Tween3):Play()

task.wait(PLAY.TimeLength + 0.2)

if game:GetService("CoreGui"):FindFirstChild("ArticLoader") then
    ArticLoader:Destroy()
local ID = game.PlaceId
if ID == 2788229376 or ID == 7213786345 then
    loadstring(game:HttpGetAsync("https://polar7.wtf/Arctic/Arctic.txt"))()
elseif ID == 8540168650 then
    loadstring(game:HttpGetAsync("https://polar7.wtf/Arctic/ArcticHub/StandUpright.txt"))()
elseif ID == 893973440 then
    loadstring(game:HttpGetAsync("https://polar7.wtf/Arctic/ArcticHub/FleeTheFacility.txt"))()
elseif ID == 6755746130 then
    loadstring(game:HttpGetAsync("https://polar7.wtf/Arctic/ArcticHub/FJT:R.txt"))()
elseif ID == 9579974235 or ID == 9895039188 or ID == 9831407629 or ID == 9700022030 or ID == 9754474597 or ID == 9644393326 then
    loadstring(game:HttpGetAsync("https://polar7.wtf/Arctic/ArcticHub/FTFM.txt"))()
elseif ID == 9585537847 then
    loadstring(game:HttpGetAsync("https://polar7.wtf/Arctic/ArcticHub/Shadovis.txt"))()
else
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Arctic", Text = "This Game Is Not Supported!", Icon = "http://www.roblox.com/asset/?id=%39%38%32%34%32%37%30%32%39%35", Duration = 5})
end;end;end)
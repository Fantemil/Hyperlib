---[[ Made By: CrowsDesire1 on V3rmillion ]]---
---[[ Little messy and unfinished but will be done soon with added changes | Progress 90% ]]---

---------------------------------------------------------------------------
--- [Notifications] ---
---------------------------------------------------------------------------

wait(0.1)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Text = "By: CrowsDesire1 On V3rm";
    Title = "Welcome To RareAnimsGUI"
})
wait(0.6)
if game:GetService("Workspace").FilteringEnabled == true then
    warn("FE is Enabled (Filtering Enabled)")
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "R6 Only";
        Text = "This GUI is only effective on R6 games.";
    })
else
    warn("FE is Disabled (Filtering Disabled) Let's try that again.")
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "FE is Disabled";
        Text = "These anims might not work...";
    })
end

wait(0.5)

---------------------------------------------------------------------------
--- [Instances] ---
---------------------------------------------------------------------------

local TheMainGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local MainText = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local ByMe = Instance.new("TextLabel")
local DinoWalk = Instance.new("TextButton")
local TiltHead = Instance.new("TextButton")
local BeastWalk = Instance.new("TextButton")
local StankyLegs = Instance.new("TextButton")
local Shuffle = Instance.new("TextButton")
local MoonWalk = Instance.new("TextButton")
local HeadThrow = Instance.new("TextButton")
local Crouch = Instance.new("TextButton")
local AnimeMan = Instance.new("TextButton")
local SmellyRun = Instance.new("TextButton")
local NoLegs = Instance.new("TextButton")
local BeatBox = Instance.new("TextButton")
local Scared = Instance.new("TextButton")
local BigGuns = Instance.new("TextButton")
local GOAAAAAL = Instance.new("TextButton")
local BiggerGuns = Instance.new("TextButton")
local WeirdPose = Instance.new("TextButton")
local Page2 = Instance.new("TextButton")
local Page1 = Instance.new("TextButton")
local ModernArt = Instance.new("TextButton")
local NextPage = Instance.new("TextLabel")
local Empty = Instance.new("TextLabel")
local StopAnims = Instance.new("TextButton")
local Extra4 = Instance.new("Frame")

---------------------------------------------------------------------------
--- [Animation Definitions] ---
---------------------------------------------------------------------------

Anim = Instance.new("Animation")--- Dino Walk
Anim.AnimationId = "rbxassetid://204328711"
Plr = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

Anim = Instance.new("Animation")--- Tilt Head
Anim.AnimationId = "rbxassetid://283545583"
Pler = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

Anim = Instance.new("Animation")--- Beast Walk
Anim.AnimationId = "rbxassetid://150301782"
Pltr = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

Anim = Instance.new("Animation")--- Stanky Legs
Anim.AnimationId = "rbxassetid://87986341"
Plyr = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

Anim = Instance.new("Animation")--- Shuffle 
Anim.AnimationId = "rbxassetid://429703734"
Plqr = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

Anim = Instance.new("Animation")--- Anime Man
Anim.AnimationId = "rbxassetid://376754935"
Plwr = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

Anim = Instance.new("Animation")--- Moon Walk
Anim.AnimationId = "rbxassetid://30196114"
Plur = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

Anim = Instance.new("Animation")---	Head Throw
Anim.AnimationId = "rbxassetid://35154961"
Plir = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

Anim = Instance.new("Animation")--- Crouch
Anim.AnimationId = "rbxassetid://287325678"
Plor = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

Anim = Instance.new("Animation")--- Beat Box
Anim.AnimationId = "rbxassetid://45504977"
Plpr = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

Anim = Instance.new("Animation")--- Big Guns
Anim.AnimationId = "rbxassetid://161268368"
Plar = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

Anim = Instance.new("Animation")--- Smelly Run
Anim.AnimationId = "rbxassetid://30235165"
Plsr = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

Anim = Instance.new("Animation")--- Bigger Guns
Anim.AnimationId = "rbxassetid://225975820"
Pldr = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

Anim = Instance.new("Animation")--- Modern Art
Anim.AnimationId = "rbxassetid://248336163"
Plfr = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

Anim = Instance.new("Animation")--- Scared
Anim.AnimationId = "rbxassetid://180612465"
Plgr = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

Anim = Instance.new("Animation")--- Punch
Anim.AnimationId = "rbxassetid://204062532"
Plhr = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

Anim = Instance.new("Animation")--- No Legs
Anim.AnimationId = "rbxassetid://248336459"
Pljr = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

Anim = Instance.new("Animation")--- GOOOOOOAL
Anim.AnimationId = "rbxassetid://28488254"
Plkr = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

---------------------------------------------------------------------------
--- [Start Properties] ---
---------------------------------------------------------------------------


TheMainGUI.Name = "TheMainGUI"
TheMainGUI.Parent = game.CoreGui
TheMainGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
TheMainGUI.ResetOnSpawn = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = TheMainGUI
MainFrame.Draggable = true
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.new(0, 0.384314, 0.52549)
MainFrame.BorderColor3 = Color3.new(0.133333, 0.219608, 0.27451)
MainFrame.BorderSizePixel = 10
MainFrame.Position = UDim2.new(0.617999971, 0, 1.27900004, 0)
MainFrame.Size = UDim2.new(0, 400, 0, 320)

MainText.Name = "MainText"
MainText.Parent = MainFrame
MainText.Active = true
MainText.BackgroundColor3 = Color3.new(0, 0, 0)
MainText.BorderSizePixel = 0
MainText.Size = UDim2.new(0, 400, 0, 35)
MainText.Font = Enum.Font.GothamSemibold
MainText.Text = "Rare Animations GUI"
MainText.TextColor3 = Color3.new(1, 1, 1)
MainText.TextSize = 16
MainText.TextStrokeColor3 = Color3.new(1, 1, 1)
MainText.TextStrokeTransparency = 0.89999997615814
MainText.TextWrapped = true

CloseButton.Name = "CloseButton"
CloseButton.Parent = MainFrame
CloseButton.BackgroundColor3 = Color3.new(0, 0, 0)
CloseButton.BorderColor3 = Color3.new(1, 1, 1)
CloseButton.Position = UDim2.new(0.855000019, 0, 0.00312500005, 0)
CloseButton.Size = UDim2.new(0, 57, 0, 33)
CloseButton.Font = Enum.Font.GothamSemibold
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.TextSize = 16

ByMe.Name = "ByMe"
ByMe.Parent = MainFrame
ByMe.Active = true
ByMe.BackgroundColor3 = Color3.new(0, 0.2, 0.294118)
ByMe.BorderSizePixel = 5
ByMe.Position = UDim2.new(0.712499857, 0, 1.04375005, 0)
ByMe.Size = UDim2.new(0, 120, 0, 25)
ByMe.Font = Enum.Font.GothamSemibold
ByMe.Text = "By: CrowsDesire1"
ByMe.TextColor3 = Color3.new(1, 1, 1)
ByMe.TextSize = 12
ByMe.TextStrokeColor3 = Color3.new(1, 1, 1)
ByMe.TextStrokeTransparency = 0.89999997615814

DinoWalk.Name = "Dino Walk"
DinoWalk.Parent = MainFrame
DinoWalk.BackgroundColor3 = Color3.new(0, 0, 0)
DinoWalk.BorderSizePixel = 0
DinoWalk.Position = UDim2.new(0.0250000004, 0, 0.140625, 0)
DinoWalk.Size = UDim2.new(0, 100, 0, 35)
DinoWalk.Font = Enum.Font.GothamSemibold
DinoWalk.Text = "Dino Walk"
DinoWalk.TextColor3 = Color3.new(1, 1, 1)
DinoWalk.TextSize = 14
DinoWalk.MouseButton1Down:Connect(function()
	Plr:Play()
	Plr:AdjustSpeed(1.3)
end)

TiltHead.Name = "Tilt Head"
TiltHead.Parent = MainFrame
TiltHead.BackgroundColor3 = Color3.new(0, 0, 0)
TiltHead.BorderSizePixel = 0
TiltHead.Position = UDim2.new(0.0250000004, 0, 0.28125, 0)
TiltHead.Size = UDim2.new(0, 100, 0, 35)
TiltHead.Font = Enum.Font.GothamSemibold
TiltHead.Text = "Tilt Head"
TiltHead.TextColor3 = Color3.new(1, 1, 1)
TiltHead.TextSize = 14
TiltHead.MouseButton1Down:Connect(function()
	Pler:Play()
	Pler:AdjustSpeed()
end)

BeastWalk.Name = "Beast Walk"
BeastWalk.Parent = MainFrame
BeastWalk.BackgroundColor3 = Color3.new(0, 0, 0)
BeastWalk.BorderSizePixel = 0
BeastWalk.Position = UDim2.new(0.0250000004, 0, 0.421875, 0)
BeastWalk.Size = UDim2.new(0, 100, 0, 35)
BeastWalk.Font = Enum.Font.GothamSemibold
BeastWalk.Text = "Beast Walk"
BeastWalk.TextColor3 = Color3.new(1, 1, 1)
BeastWalk.TextSize = 14
BeastWalk.MouseButton1Down:Connect(function()
	Pltr:Play()
	Pltr:AdjustSpeed(2.3)
end)

StankyLegs.Name = "Stanky Legs"
StankyLegs.Parent = MainFrame
StankyLegs.BackgroundColor3 = Color3.new(0, 0, 0)
StankyLegs.BorderSizePixel = 0
StankyLegs.Position = UDim2.new(0.0250000004, 0, 0.5625, 0)
StankyLegs.Size = UDim2.new(0, 100, 0, 35)
StankyLegs.Font = Enum.Font.GothamSemibold
StankyLegs.Text = "Stanky Legs"
StankyLegs.TextColor3 = Color3.new(1, 1, 1)
StankyLegs.TextSize = 14
StankyLegs.MouseButton1Down:Connect(function()
	Plyr:Play()
	Plyr:AdjustSpeed(6)
end)

Shuffle.Name = "Shuffle"
Shuffle.Parent = MainFrame
Shuffle.BackgroundColor3 = Color3.new(0, 0, 0)
Shuffle.BorderSizePixel = 0
Shuffle.Position = UDim2.new(0.0250000004, 0, 0.703125, 0)
Shuffle.Size = UDim2.new(0, 100, 0, 35)
Shuffle.Font = Enum.Font.GothamSemibold
Shuffle.Text = "Shuffle"
Shuffle.TextColor3 = Color3.new(1, 1, 1)
Shuffle.TextSize = 14
Shuffle.MouseButton1Down:Connect(function()
	Plqr:Play()
	Plqr:AdjustSpeed(0.8)
end)

MoonWalk.Name = "Moon Walk"
MoonWalk.Parent = MainFrame
MoonWalk.BackgroundColor3 = Color3.new(0, 0, 0)
MoonWalk.BorderSizePixel = 0
MoonWalk.Position = UDim2.new(0.0250000004, 0, 0.84375, 0)
MoonWalk.Size = UDim2.new(0, 100, 0, 35)
MoonWalk.Font = Enum.Font.GothamSemibold
MoonWalk.Text = "Moon Walk"
MoonWalk.TextColor3 = Color3.new(1, 1, 1)
MoonWalk.TextSize = 14
MoonWalk.MouseButton1Down:Connect(function()
	Plur:Play()
	Plur:AdjustSpeed(2.3)
end)

HeadThrow.Name = "Head Throw"
HeadThrow.Parent = MainFrame
HeadThrow.BackgroundColor3 = Color3.new(0, 0, 0)
HeadThrow.BorderSizePixel = 0
HeadThrow.Position = UDim2.new(0.372500002, 0, 0.140625, 0)
HeadThrow.Size = UDim2.new(0, 100, 0, 35)
HeadThrow.Font = Enum.Font.GothamSemibold
HeadThrow.Text = "Head Throw"
HeadThrow.TextColor3 = Color3.new(1, 1, 1)
HeadThrow.TextSize = 14
HeadThrow.MouseButton1Down:Connect(function()
	Plir:Play()
	Plir:AdjustSpeed(2.5)
end)

Crouch.Name = "Crouch"
Crouch.Parent = MainFrame
Crouch.BackgroundColor3 = Color3.new(0, 0, 0)
Crouch.BorderSizePixel = 0
Crouch.Position = UDim2.new(0.372500002, 0, 0.28125, 0)
Crouch.Size = UDim2.new(0, 100, 0, 35)
Crouch.Font = Enum.Font.GothamSemibold
Crouch.Text = "Crouch"
Crouch.TextColor3 = Color3.new(1, 1, 1)
Crouch.TextSize = 14
Crouch.MouseButton1Down:Connect(function()
	Plor:Play()
	Plor:AdjustSpeed()
end)

AnimeMan.Name = "Anime Man"
AnimeMan.Parent = MainFrame
AnimeMan.BackgroundColor3 = Color3.new(0, 0, 0)
AnimeMan.BorderSizePixel = 0
AnimeMan.Position = UDim2.new(0.372500002, 0, 0.421875, 0)
AnimeMan.Size = UDim2.new(0, 100, 0, 35)
AnimeMan.Font = Enum.Font.GothamSemibold
AnimeMan.Text = "Anime Man"
AnimeMan.TextColor3 = Color3.new(1, 1, 1)
AnimeMan.TextSize = 14
AnimeMan.MouseButton1Down:Connect(function()
	Plwr:Play()
	Plwr:AdjustSpeed(3.1)
end)

SmellyRun.Name = "Smelly Run"
SmellyRun.Parent = MainFrame
SmellyRun.BackgroundColor3 = Color3.new(0, 0, 0)
SmellyRun.BorderSizePixel = 0
SmellyRun.Position = UDim2.new(0.372500002, 0, 0.5625, 0)
SmellyRun.Size = UDim2.new(0, 100, 0, 35)
SmellyRun.Font = Enum.Font.GothamSemibold
SmellyRun.Text = "Smelly Run"
SmellyRun.TextColor3 = Color3.new(1, 1, 1)
SmellyRun.TextSize = 14
SmellyRun.MouseButton1Down:Connect(function()
	Plsr:Play()
	Plsr:AdjustSpeed(1.5)
end)

NoLegs.Name = "No Legs"
NoLegs.Parent = MainFrame
NoLegs.BackgroundColor3 = Color3.new(0, 0, 0)
NoLegs.BorderSizePixel = 0
NoLegs.Position = UDim2.new(0.372500002, 0, 0.703125, 0)
NoLegs.Size = UDim2.new(0, 100, 0, 35)
NoLegs.Font = Enum.Font.GothamSemibold
NoLegs.Text = "No Legs"
NoLegs.TextColor3 = Color3.new(1, 1, 1)
NoLegs.TextSize = 14
NoLegs.MouseButton1Down:Connect(function()
	Pljr:Play()
	Pljr:AdjustSpeed()
end)

BeatBox.Name = "Beat Box"
BeatBox.Parent = MainFrame
BeatBox.BackgroundColor3 = Color3.new(0, 0, 0)
BeatBox.BorderSizePixel = 0
BeatBox.Position = UDim2.new(0.372500002, 0, 0.84375, 0)
BeatBox.Size = UDim2.new(0, 100, 0, 35)
BeatBox.Font = Enum.Font.GothamSemibold
BeatBox.Text = "Beat Box"
BeatBox.TextColor3 = Color3.new(1, 1, 1)
BeatBox.TextSize = 14
BeatBox.MouseButton1Down:Connect(function()
	Plpr:Play()
	Plpr:AdjustSpeed(2)
end)

Scared.Name = "Scared"
Scared.Parent = MainFrame
Scared.BackgroundColor3 = Color3.new(0, 0, 0)
Scared.BorderSizePixel = 0
Scared.Position = UDim2.new(0.737500012, 0, 0.140625, 0)
Scared.Size = UDim2.new(0, 100, 0, 35)
Scared.Font = Enum.Font.GothamSemibold
Scared.Text = "Scared"
Scared.TextColor3 = Color3.new(1, 1, 1)
Scared.TextSize = 14
Scared.MouseButton1Down:Connect(function()
	Plgr:Play()
	Plgr:AdjustSpeed(1.5)
end)

BigGuns.Name = "Big Guns"
BigGuns.Parent = MainFrame
BigGuns.BackgroundColor3 = Color3.new(0, 0, 0)
BigGuns.BorderSizePixel = 0
BigGuns.Position = UDim2.new(0.737500012, 0, 0.28125, 0)
BigGuns.Size = UDim2.new(0, 100, 0, 35)
BigGuns.Font = Enum.Font.GothamSemibold
BigGuns.Text = "Big Guns"
BigGuns.TextColor3 = Color3.new(1, 1, 1)
BigGuns.TextSize = 14
BigGuns.MouseButton1Down:Connect(function()
	Plar:Play()
	Plar:AdjustSpeed()
end)

GOAAAAAL.Name = "GOAAAAAL"
GOAAAAAL.Parent = MainFrame
GOAAAAAL.BackgroundColor3 = Color3.new(0, 0, 0)
GOAAAAAL.BorderSizePixel = 0
GOAAAAAL.Position = UDim2.new(0.737500012, 0, 0.421875, 0)
GOAAAAAL.Size = UDim2.new(0, 100, 0, 35)
GOAAAAAL.Font = Enum.Font.GothamSemibold
GOAAAAAL.Text = "GOAAAAAL"
GOAAAAAL.TextColor3 = Color3.new(1, 1, 1)
GOAAAAAL.TextSize = 14
GOAAAAAL.MouseButton1Down:Connect(function()
	Plkr:Play()
	Plkr:AdjustSpeed(1.3)
end)

BiggerGuns.Name = "Bigger Guns"
BiggerGuns.Parent = MainFrame
BiggerGuns.BackgroundColor3 = Color3.new(0, 0, 0)
BiggerGuns.BorderSizePixel = 0
BiggerGuns.Position = UDim2.new(0.737500012, 0, 0.5625, 0)
BiggerGuns.Size = UDim2.new(0, 100, 0, 35)
BiggerGuns.Font = Enum.Font.GothamSemibold
BiggerGuns.Text = "Bigger Guns"
BiggerGuns.TextColor3 = Color3.new(1, 1, 1)
BiggerGuns.TextSize = 14
BiggerGuns.MouseButton1Down:Connect(function()
	Pldr:Play()
	Pldr:AdjustSpeed()
end)

WeirdPose.Name = "Weird Pose"
WeirdPose.Parent = MainFrame
WeirdPose.BackgroundColor3 = Color3.new(0, 0, 0)
WeirdPose.BorderSizePixel = 0
WeirdPose.Position = UDim2.new(0.737500012, 0, 0.703125, 0)
WeirdPose.Size = UDim2.new(0, 100, 0, 35)
WeirdPose.Font = Enum.Font.GothamSemibold
WeirdPose.Text = "Punch"
WeirdPose.TextColor3 = Color3.new(1, 1, 1)
WeirdPose.TextSize = 14
WeirdPose.MouseButton1Down:Connect(function()
	Plhr:Play()
	Plhr:AdjustSpeed()
end)

Page2.Name = "Page2"
Page2.Parent = MainFrame
Page2.BackgroundColor3 = Color3.new(0, 0, 0)
Page2.BorderColor3 = Color3.new(0, 0.4, 0.584314)
Page2.BorderSizePixel = 2
Page2.Position = UDim2.new(0.100000001, 0, 1.03437495, 0)
Page2.Size = UDim2.new(0, 50, 0, 30)
Page2.Font = Enum.Font.GothamBlack
Page2.Text = "Page 2"
Page2.TextColor3 = Color3.new(1, 1, 1)
Page2.TextSize = 12
Page2.TextStrokeColor3 = Color3.new(1, 1, 1)
Page2.TextStrokeTransparency = 0.89999997615814
Page2.MouseButton1Down:Connect(function()
	AnimeMan.Visible = false
	BeastWalk.Visible = false
	BeatBox.Visible = false
	BigGuns.Visible = false
	BiggerGuns.Visible = false
	Crouch.Visible = false
	DinoWalk.Visible = false
	GOAAAAAL.Visible = false
	HeadThrow.Visible = false
	ModernArt.Visible = false
	MoonWalk.Visible = false
	NoLegs.Visible = false
	Scared.Visible = false
	Shuffle.Visible = false
	SmellyRun.Visible = false
	StankyLegs.Visible = false
	TiltHead.Visible = false
	WeirdPose.Visible = false	
	NextPage.Visible = true
	Empty.Visible = true
end)


Page1.Name = "Page1"
Page1.Parent = MainFrame
Page1.BackgroundColor3 = Color3.new(0, 0, 0)
Page1.BorderColor3 = Color3.new(0, 0.333333, 0.498039)
Page1.BorderSizePixel = 2
Page1.Position = UDim2.new(-0.0225000009, 0, 1.03437495, 0)
Page1.Size = UDim2.new(0, 49, 0, 30)
Page1.Font = Enum.Font.GothamBlack
Page1.Text = "Page 1"
Page1.TextColor3 = Color3.new(1, 1, 1)
Page1.TextSize = 12
Page1.TextStrokeColor3 = Color3.new(1, 1, 1)
Page1.TextStrokeTransparency = 0.89999997615814
Page1.MouseButton1Down:Connect(function()
	AnimeMan.Visible = true
	BeastWalk.Visible = true
	BeatBox.Visible = true
	BigGuns.Visible = true
	BiggerGuns.Visible = true
	Crouch.Visible = true
	DinoWalk.Visible = true
	GOAAAAAL.Visible = true
	HeadThrow.Visible = true
	ModernArt.Visible = true
	MoonWalk.Visible = true
	NoLegs.Visible = true
	Scared.Visible = true
	Shuffle.Visible = true
	SmellyRun.Visible = true
	StankyLegs.Visible = true
	TiltHead.Visible = true
	WeirdPose.Visible = true	
	NextPage.Visible = false
	Empty.Visible = false
end)

ModernArt.Name = "Modern Art"
ModernArt.Parent = MainFrame
ModernArt.BackgroundColor3 = Color3.new(0, 0, 0)
ModernArt.BorderSizePixel = 0
ModernArt.Position = UDim2.new(0.737500012, 0, 0.84375, 0)
ModernArt.Size = UDim2.new(0, 100, 0, 35)
ModernArt.Font = Enum.Font.GothamSemibold
ModernArt.Text = "Modern Art"
ModernArt.TextColor3 = Color3.new(1, 1, 1)
ModernArt.TextSize = 14
ModernArt.MouseButton1Down:Connect(function()
	Plfr:Play()
	Plfr:AdjustSpeed()
end)

NextPage.Name = "NextPage"
NextPage.Parent = MainFrame
NextPage.Active = true
NextPage.BackgroundColor3 = Color3.new(0, 0.333333, 0.498039)
NextPage.BorderSizePixel = 0
NextPage.Position = UDim2.new(0, 0, 0.109375, 0)
NextPage.Size = UDim2.new(0, 399, 0, 107)
NextPage.Visible = false
NextPage.Font = Enum.Font.GothamSemibold
NextPage.Text = "I know that some of these Animations are not really rare, but they were worth including. If you guys liked this GUI and found it interesting like the original post on my V3rmillion, @CrowsDesire1."
NextPage.TextColor3 = Color3.new(1, 1, 1)
NextPage.TextSize = 18
NextPage.TextWrapped = true

Empty.Name = "Empty"
Empty.Parent = MainFrame
Empty.Active = true
Empty.BackgroundColor3 = Color3.new(0, 0, 0)
Empty.BorderColor3 = Color3.new(0, 0.223529, 0.329412)
Empty.BorderSizePixel = 10
Empty.Position = UDim2.new(0.0225000009, 0, 0.474999994, 0)
Empty.Size = UDim2.new(0, 380, 0, 158)
Empty.Visible = false
Empty.Font = Enum.Font.GothamSemibold
Empty.Text = "Currently empty, nothing to see here...."
Empty.TextColor3 = Color3.new(1, 1, 1)
Empty.TextSize = 17
Empty.TextStrokeColor3 = Color3.new(1, 1, 1)
Empty.TextStrokeTransparency = 0.89999997615814
Empty.TextWrapped = true

StopAnims.Name = "StopAnims"
StopAnims.Parent = MainFrame
StopAnims.BackgroundColor3 = Color3.new(0, 0.431373, 0.631373)
StopAnims.BorderColor3 = Color3.new(0.258824, 0.403922, 0.509804)
StopAnims.BorderSizePixel = 0
StopAnims.Size = UDim2.new(0, 80, 0, 35)
StopAnims.Font = Enum.Font.GothamSemibold
StopAnims.Text = "Stop Animations"
StopAnims.TextColor3 = Color3.new(1, 1, 1)
StopAnims.TextScaled = true
StopAnims.TextSize = 13
StopAnims.TextStrokeColor3 = Color3.new(1, 1, 1)
StopAnims.TextStrokeTransparency = 0.89999997615814
StopAnims.TextWrapped = true
StopAnims.MouseButton1Down:Connect(function()
	Plr:Stop()
	Plyr:Stop()
	Plfr:Stop()
	Plqr:Stop()
	Pltr:Stop()
	Plwr:Stop()
	Plar:Stop()
	Pldr:Stop()
	Pler:Stop()
	Plgr:Stop()
	Plhr:Stop()
	Pljr:Stop()
	Plkr:Stop()
	Plpr:Stop()
	Plor:Stop()
	Plur:Stop()
	Plir:Stop()
	Plsr:Stop()
end)

Extra4.Name = "Extra4"
Extra4.Parent = StopAnims
Extra4.Active = true
Extra4.BackgroundColor3 = Color3.new(0, 0.294118, 0.423529)
Extra4.BorderSizePixel = 0
Extra4.Position = UDim2.new(1, 0, 0, 0)
Extra4.Size = UDim2.new(0, 7, 0, 35)

local OpenGUI = Instance.new("ScreenGui")
local OpenButton = Instance.new("TextButton")

OpenGUI.Name = "OpenGUI"
OpenGUI.Parent = game.CoreGui
OpenGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
OpenGUI.ResetOnSpawn = false

OpenButton.Name = "OpenButton"
OpenButton.Parent = OpenGUI
OpenButton.BackgroundColor3 = Color3.new(0.00392157, 0.160784, 0.227451)
OpenButton.BorderSizePixel = 5
OpenButton.Position = UDim2.new(0, 0, 0.755218267, 0)
OpenButton.Size = UDim2.new(0, 105, 0, 35)
OpenButton.Font = Enum.Font.GothamSemibold
OpenButton.Text = "Open"
OpenButton.TextColor3 = Color3.new(1, 1, 1)
OpenButton.TextSize = 16
OpenButton.TextStrokeColor3 = Color3.new(1, 1, 1)
OpenButton.TextStrokeTransparency = 0.89999997615814

function SCRIPT_OJFQ65_FAKESCRIPT() -- OpenButton.TweenOpen 
	local script = Instance.new('LocalScript')
	script.Parent = OpenButton
	script.Parent.MouseButton1Down:Connect(function()
		local frame = script.Parent.Parent.Parent.TheMainGUI.MainFrame
		frame:TweenPosition(UDim2.new(0.618, 0,0.279, 0))
	end)

end
coroutine.resume(coroutine.create(SCRIPT_OJFQ65_FAKESCRIPT))


function SCRIPT_LLCM76_FAKESCRIPT() -- CloseButton.MainLocal 
	local script = Instance.new('LocalScript')
	script.Parent = CloseButton
	script.Parent.MouseButton1Down:Connect(function()
		local frame = script.Parent.Parent
		frame:TweenPosition(UDim2.new(0.605, 0,1.296, 0))
	end)

end
coroutine.resume(coroutine.create(SCRIPT_LLCM76_FAKESCRIPT))
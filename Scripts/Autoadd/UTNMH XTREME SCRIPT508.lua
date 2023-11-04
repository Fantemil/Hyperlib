



































































































local gui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local title = Instance.new("TextLabel")
local Speed_Finish = Instance.new("TextButton")
local closetab = Instance.new("TextButton")
local hotbar = Instance.new("Frame")
local minitab = Instance.new("TextButton")
local openmenu = Instance.new("TextButton")
local BSpeed_Finish = Instance.new("TextButton")
local CSpeed_Finish = Instance.new("TextButton")
local DSpeed_Finish = Instance.new("TextButton")
local ESpeed_Finish = Instance.new("TextButton")
local FSpeed_Finish = Instance.new("TextButton")
local GSpeed_Finish = Instance.new("TextButton")
local GGSpeed_Finish = Instance.new("TextButton")
local GGGSpeed_Finish = Instance.new("TextButton")
local gGSpeed_Finish = Instance.new("TextButton")
local GGGGSpeed_Finish = Instance.new("TextButton")
local GDGSpeed_Finish = Instance.new("TextButton")
wait(0)
gui.Parent = game.Players.LocalPlayer.PlayerGui
gui.Name = ("CustomChars")
gui.ResetOnSpawn = false


frame.Parent = gui
frame.Name = ("MainFrame")
frame.Size = UDim2.new(0.4, 0, 0.5, 0)
frame.Active = true
frame.Draggable = true
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BackgroundTransparency = 0.1
frame.BorderSizePixel = 5
frame.BorderColor3 = Color3.fromRGB(85, 255, 0)
hotbar.Parent = gui
hotbar.Name = ("Hotbar")
hotbar.Size = UDim2.new(0.6, 0, 0.1, 0)
hotbar.Active = true
hotbar.Draggable = false
hotbar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
hotbar.BackgroundTransparency = 0.1
hotbar.BorderSizePixel = 5
hotbar.BorderColor3 = Color3.fromRGB(85, 255, 0)
hotbar.Position = UDim2.new(0.195, 0, 0.04, 0)
hotbar.Visible = false


title.Parent = gui.MainFrame
title.Name = ("GODOOOD")
title.Size = UDim2.new(0.5, 0, 0.2, 0)
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(85, 255, 0)
title.TextScaled = true
title.Text = ("UTNMH XTREME GUI")
title.Font = ("Arcade")

closetab.Parent = gui.MainFrame
closetab.Name = ("Colose")
closetab.Size = UDim2.new(0.1, 0, 0.05, 0)
closetab.BackgroundTransparency = 0.1
closetab.BorderSizePixel = 3
closetab.BorderColor3 = Color3.fromRGB(85, 255, 0)
closetab.Text = ("X")
closetab.TextColor3 = Color3.fromRGB(85, 255, 0)
closetab.BackgroundColor3 = Color3.fromRGB(0,0,0)
closetab.TextScaled = true
closetab.Position = UDim2.new(0.9, 0, 0, 0)
closetab.Font = ("Arcade")


openmenu.Parent = gui.Hotbar
openmenu.Name = ("OpenDaMain")
openmenu.Size = UDim2.new(0.08, 0, 1, 0)
openmenu.BackgroundTransparency = 0.1
openmenu.BorderSizePixel = 3
openmenu.BorderColor3 = Color3.fromRGB(85, 255, 0)
openmenu.Text = ("Main Menu")
openmenu.TextColor3 = Color3.fromRGB(85, 255, 0)
openmenu.BackgroundColor3 = Color3.fromRGB(0,0,0)
openmenu.TextScaled = true
openmenu.Position = UDim2.new(0, 0, 0, 0)
openmenu.Visible = false
openmenu.Font = ("Arcade")


minitab.Parent = gui.MainFrame
minitab.Name = ("Minimizeizie")
minitab.Size = UDim2.new(0.1, 0, 0.05, 0)
minitab.BackgroundTransparency = 0.1
minitab.BorderSizePixel = 3
minitab.BorderColor3 = Color3.fromRGB(85, 255, 0)
minitab.Text = ("-")
minitab.TextColor3 = Color3.fromRGB(85, 255, 0)
minitab.BackgroundColor3 = Color3.fromRGB(0,0,0)
minitab.TextScaled = true
minitab.Position = UDim2.new(0.79, 0, 0, 0)
minitab.Font = ("Arcade")


Speed_Finish.Parent = gui.MainFrame
Speed_Finish.Name = ("Birdtale fun")
Speed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
Speed_Finish.BackgroundTransparency = 0.1
Speed_Finish.BorderSizePixel = 3
Speed_Finish.BorderColor3 = Color3.fromRGB(55, 255, 25)
Speed_Finish.Text = ("SinglePlayer WinFarm (AutoClick Middle Of the Screen)")
Speed_Finish.TextColor3 = Color3.fromRGB(25, 255, 25)
Speed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
Speed_Finish.TextScaled = true
Speed_Finish.Position = UDim2.new(0, 8, 0.25, 0)
Speed_Finish.Visible = true
Speed_Finish.Font = ("Arcade")


DSpeed_Finish.Parent = gui.MainFrame
DSpeed_Finish.Name = ("myas")
DSpeed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
DSpeed_Finish.BackgroundTransparency = 0.1
DSpeed_Finish.BorderSizePixel = 3
DSpeed_Finish.BorderColor3 = Color3.fromRGB(85, 55, 0)
DSpeed_Finish.Text = ("AutoTier")
DSpeed_Finish.TextColor3 = Color3.fromRGB(85, 255, 90)
DSpeed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
DSpeed_Finish.TextScaled = true
DSpeed_Finish.Position = UDim2.new(0, 8, 0.45, 0)
DSpeed_Finish.Visible = false
DSpeed_Finish.Font = ("Arcade")	

BSpeed_Finish.Parent = gui.MainFrame
BSpeed_Finish.Name = ("THE BUFFEREDAXY")
BSpeed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
BSpeed_Finish.BackgroundTransparency = 0.1
BSpeed_Finish.BorderSizePixel = 3
BSpeed_Finish.BorderColor3 = Color3.fromRGB(255, 180, 355)
BSpeed_Finish.Text = ("God Mode")
BSpeed_Finish.TextColor3 = Color3.fromRGB(235, 225, 199)
BSpeed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
BSpeed_Finish.TextScaled = true
BSpeed_Finish.Position = UDim2.new(0, 155, 0.25, 0)
BSpeed_Finish.Visible = true
BSpeed_Finish.Font = ("Arcade")


CSpeed_Finish.Parent = gui.MainFrame
CSpeed_Finish.Name = ("DUSTETETETETERORRRRRRER")
CSpeed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
CSpeed_Finish.BackgroundTransparency = 0.1
CSpeed_Finish.BorderSizePixel = 3
CSpeed_Finish.BorderColor3 = Color3.fromRGB(67, 0, math.random(0,255))
CSpeed_Finish.Text = ("Melee Hitbox")
CSpeed_Finish.TextColor3 = Color3.fromRGB(67, 0, 99)
CSpeed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
CSpeed_Finish.TextScaled = true
CSpeed_Finish.Position = UDim2.new(0, 305, 0.25, 0)
CSpeed_Finish.Visible = true
CSpeed_Finish.Font = ("Arcade")

ESpeed_Finish.Parent = gui.MainFrame
ESpeed_Finish.Name = ("realreal")
ESpeed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
ESpeed_Finish.BackgroundTransparency = 0.1
ESpeed_Finish.BorderSizePixel = 3
ESpeed_Finish.BorderColor3 = Color3.fromRGB(85, 255, 0)
ESpeed_Finish.Text = ("Buffed Ralsei")
ESpeed_Finish.TextColor3 = Color3.fromRGB(85, 255, 0)
ESpeed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
ESpeed_Finish.TextScaled = true
ESpeed_Finish.Position = UDim2.new(0, 155, 0.45, 0)
ESpeed_Finish.Visible = false
ESpeed_Finish.Font = ("Arcade")

FSpeed_Finish.Parent = gui.MainFrame
FSpeed_Finish.Name = ("Grealreal")
FSpeed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
FSpeed_Finish.BackgroundTransparency = 0.1
FSpeed_Finish.BorderSizePixel = 3
FSpeed_Finish.BorderColor3 = Color3.fromRGB(255, 255, 255)
FSpeed_Finish.Text = ("One Time Spam")
FSpeed_Finish.TextColor3 = Color3.fromRGB(0, 255, 255)
FSpeed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
FSpeed_Finish.TextScaled = true
FSpeed_Finish.Position = UDim2.new(0, 305, 0.45, 0)
FSpeed_Finish.Visible = false
FSpeed_Finish.Font = ("Arcade")

GSpeed_Finish.Parent = gui.MainFrame
GSpeed_Finish.Name = ("Grealreal")
GSpeed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
GSpeed_Finish.BackgroundTransparency = 0.1
GSpeed_Finish.BorderSizePixel = 3
GSpeed_Finish.BorderColor3 = Color3.fromRGB(99,99,99)
GSpeed_Finish.Text = ("Buff Hp")
GSpeed_Finish.TextColor3 = Color3.fromRGB(99,99,99)
GSpeed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
GSpeed_Finish.TextScaled = true
GSpeed_Finish.Position = UDim2.new(0, 8, 0.65, 0)
GSpeed_Finish.Visible = false
GSpeed_Finish.Font = ("Arcade")

GGSpeed_Finish.Parent = gui.MainFrame
GGSpeed_Finish.Name = ("Grealreal")
GGSpeed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
GGSpeed_Finish.BackgroundTransparency = 0.5
GGSpeed_Finish.BorderSizePixel = 3
GGSpeed_Finish.BorderColor3 = Color3.fromRGB(0,199,0)
GGSpeed_Finish.Text = ("Get Spectate Gui")
GGSpeed_Finish.TextColor3 = Color3.fromRGB(0,99,0)
GGSpeed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
GGSpeed_Finish.TextScaled = true
GGSpeed_Finish.Position = UDim2.new(0, 527, .15, 0)
GGSpeed_Finish.Visible = false
GGSpeed_Finish.Font = ("Arcade")


GDGSpeed_Finish.Parent = gui.MainFrame
GDGSpeed_Finish.Name = ("FUCKalreal")
GDGSpeed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
GDGSpeed_Finish.BackgroundTransparency = 0.5
GDGSpeed_Finish.BorderSizePixel = 3
GDGSpeed_Finish.BorderColor3 = Color3.fromRGB(0,0,255)
GDGSpeed_Finish.Text = ("One Time Kill all")
GDGSpeed_Finish.TextColor3 = Color3.fromRGB(0,0,255)
GDGSpeed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
GDGSpeed_Finish.TextScaled = true
GDGSpeed_Finish.Position = UDim2.new(0, 671, .15, 0)
GDGSpeed_Finish.Visible = false
GDGSpeed_Finish.Font = ("Arcade")

GGGSpeed_Finish.Parent = gui.MainFrame
GGGSpeed_Finish.Name = ("Grealreal")
GGGSpeed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
GGGSpeed_Finish.BackgroundTransparency = 0.5
GGGSpeed_Finish.BorderSizePixel = 3
GGGSpeed_Finish.BorderColor3 = Color3.fromRGB(250,0,25)
GGGSpeed_Finish.Text = ("LoopKill All Enemies")
GGGSpeed_Finish.TextColor3 = Color3.fromRGB(25,188,155)
GGGSpeed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
GGGSpeed_Finish.TextScaled = true
GGGSpeed_Finish.Position = UDim2.new(0, 527, .32, 0)
GGGSpeed_Finish.Visible = false
GGGSpeed_Finish.Font = ("Arcade")

GGGGSpeed_Finish.Parent = gui.MainFrame
GGGGSpeed_Finish.Name = ("Grealreal")
GGGGSpeed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
GGGGSpeed_Finish.BackgroundTransparency = 0.5
GGGGSpeed_Finish.BorderSizePixel = 3
GGGGSpeed_Finish.BorderColor3 = Color3.fromRGB(250,250,250)
GGGGSpeed_Finish.Text = ("GOD MODE")
GGGGSpeed_Finish.TextColor3 = Color3.fromRGB(250,255,255)
GGGGSpeed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
GGGGSpeed_Finish.TextScaled = true
GGGGSpeed_Finish.Position = UDim2.new(0, 527, .5,0)
GGGGSpeed_Finish.Visible = false
GGGGSpeed_Finish.Font = ("Arcade")

gGSpeed_Finish.Parent = gui.MainFrame
gGSpeed_Finish.Name = ("Grealreal")
gGSpeed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
gGSpeed_Finish.BackgroundTransparency = 0.1
gGSpeed_Finish.BorderSizePixel = 3
gGSpeed_Finish.BorderColor3 = Color3.fromRGB(255,99,99)
gGSpeed_Finish.Text = ("AutoFarm Coins")
gGSpeed_Finish.TextColor3 = Color3.fromRGB(99,255,99)
gGSpeed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
gGSpeed_Finish.TextScaled = true
gGSpeed_Finish.Position = UDim2.new(0, 155, 0.65, 0)
gGSpeed_Finish.Visible = false
gGSpeed_Finish.Font = ("Arcade")
closetab.MouseButton1Click:Connect(function()
	frame.Visible = false
end)





minitab.MouseButton1Click:Connect(function()
	hotbar.Visible = true
	frame.Visible = false
	openmenu.Visible = true
end)





openmenu.MouseButton1Click:Connect(function()
	frame.Visible = true
	openmenu.Visible = false
end)

Speed_Finish.MouseButton1Click:Connect(function()



while true do
 wait(.001) if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 100 then game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game.Workspace.Doors.SuddenChanges.CFrame    end sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 112412400000)
        sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", 112412400000)
        for i,d in pairs(game:GetService("Workspace"):GetDescendants()) do
            if d.ClassName == 'Humanoid' and d.Parent.Name ~= game.Players.LocalPlayer.Name  then
                d.Health = 0
            
        end end end


end)

FSpeed_Finish.MouseButton1Click:Connect(function()
	--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren())do
if v.ClassName == "Tool" then
v.Parent = game:GetService("Players").LocalPlayer.Character
end
end
for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren())do
if v.ClassName == "Tool" then
v:Activate()
end
end
end)
CSpeed_Finish.MouseButton1Click:Connect(function()
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]


local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
 
_G.HeadSize = 100
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)

end)


DSpeed_Finish.MouseButton1Click:Connect(function()
	




while true do wait()
workspace:WaitForChild("UpgradingTier"):WaitForChild("tierisbuy"):FireServer()
end






end)
ESpeed_Finish.MouseButton1Click:Connect(function()
for i=1,10 do
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4104.98779, 920.473145, -5309.96289, 0, 0, -1, -1, 0, 0, 0, 1, 0)
	wait(.7)
	
end



end)

GSpeed_Finish.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
		8200.71777, 772.642883, -5380.16162, -9.53674316e-06, -0.0191621184, -0.999816418, 0.999999464, -0.00103521347, 1.03712082e-05, -0.00103524327, -0.999815881, 0.019162178)
	wait(6)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50




end)

gGSpeed_Finish.MouseButton1Click:Connect(function()
	
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
_, Protected_by_MoonSecV2, Discord = 'discord.gg/gQEH2uZxUk'


,nil,nil;(function() _msec=(function(l,o,e)local q=o[(115+-0x53)];local V=e[l[(767+-0x6d)]][l[(-93+0x349)]];local x=(0x76+-114)/(((3-(82+-0x3b))+0x95)-0x7f)local a=((24308/(0xe5-126))/0x76)-(0x46/70)local S=e[l[(0x972c/215)]][l[(0xd4dc/228)]];local i=(0x64/(-0x19+(183+-0x3a)))+(-0x7f+129)local g=e[l[(0x4cc-649)]][l[(0x6dc-915)]]local d=(33+-0x1f)-(((-307+0x87)+0x3c)+0x71)local L=((-0x76+((900/0x2)-0x11c))-46)local p=((-0x48+((0x34a-436)-0xf6))+-86)local M=((((0x425-562)-269)-135)-93)local O=(-0x3c+(10106/(-67+(-0x7d+355))))local c=(0x41-(12411/(0xf3+(-12+-0x22))))local f=(208/(((-0x906/154)-0x5)+124))local H=((215+((-0x525+-18)/0xf))/0x2a)local m=((((-632008/0x1a)+0x2f6c)/0xea)+55)local B=(((-537168/(-32+0x6c))/0x72)+65)local r=(90-((9756/(1620/0x2d))-184))local P=(-0x37+((0x38130/(0x143-224))/0x28))local k=((0x301-(56032/(363-0xe3)))/0x77)local C=(0x58+(0x4+(-85-(0x147/109))))local w=(-111+(-0x49+(0x98c/((369-0xee)+-0x76))))local _=(((437-(578-0x138))-0x6b)+-60)local F=(((0x4bf000/(0x84-(0xbb-109)))/0x78)/192)local D=(0x37-(((-0xe9025/127)/167)+96))local j=(41+(10-(221-(0xc3+-21))))local Q=l[(0x52f/1)];local G=e[l[(0x1e4-304)]][l[(0x1a41e/239)]];local Y=e[(function(l)return type(l):sub(1,1)..'\101\116'end)('BLMBMBLl')..'\109\101'..('\116\97'or'KKfpookM')..l[(0x5cbb/41)]];local K=e[l[(0x499-598)]][l[((-2+-0x7d)+0x429)]];local u=(-0x22+36)-(0x78-((0x18b+-103)-0xae))local U=(((-0x23+66)-70)+0x29)-(152/0x4c)local y=e[l[(-92+(575-0x12f))]][l[(825-0x1ce)]];local o=function(l,o)return l..o end local N=(0x14/5)*(((248-0x9a)+-0x45)-21)local A=e[l[(2308-0x498)]];local b=(20-0x12)*(((1251-0x2ad)-0x15a)+-0x5c)local v=(0x47a+(-70+-0x34))*((((-0x12b187/67)/159)+147)/0x10)local J=(-100+((24-0x3f)+191))local t=(((418-0xe1)-127)-0x40)*(28/0xe)local s=e[l[(0x2426a/138)]]or e[l[(1250-0x29f)]][l[(0x2426a/138)]];local h=(((-35+0x2d5023)/0xe8)/50)local l=e[l[(-103+0x52c)]];local g=(function(h)local b,e=1,0x10 local o={j={},v={}}local n=-d local l=e+a while true do o[h:sub(l,(function()l=b+l return l-a end)())]=(function()n=n+d return n end)()if n==(N-d)then n=""e=u break end end local n=#h while l<n+a do o.v[e]=h:sub(l,(function()l=b+l return l-a end)())e=e+d if e%x==u then e=U K(o.j,(y((o[o.v[U]]*N)+o[o.v[d]])))end end return g(o.j)end)("..:::MoonSec::..bBfFlLkKoOpPhHmMmmOOBbpBFfMoLomLKkbKbMopfFPMpkbKOKfoPOlpHPohpFfpOBBKpoFOBkhplMHmKpmMOhffhPlomkboOpfKPolOBHHpkLMPfBPKlbHBkflOmFoOBBKPBKpLLLfHBBOHfmPMplLbmlKkbFohPplKHokOkbMlopBBLpHFkbMBofKpbLpffPFOmOOLBlOPfhPHOBlbHmllbBoMfbpmFphhBlOFBppPFhfhPHkfmLKlBKpLfOPpLKHmbOOOfpPPpPfPKpMMObfBBkpKFhHLFmhhkPmHOhfpOmlhfmbMmmFOhfLFmlPkKlMpObfoPhlbHbhoOFBMPblBlfhlLHMKoOlbFMhOLpmPmFKfBfOkfLPMLoLKbpOLfkPKPPlHHhklMpolKOlkHbkBMfHFobbkpMfhhpLhpMBlOhfHPmhklMmFkHbkOlBkpOFholbKopBPpholFFHFFlmkoLbkOOFFPplomkKHbHbMhblHHmkMlmMfoMBoHHHHkkMKookOBOpmFLHBLKmmKmmMFFhFLlmLPHoKpBfOPplPBMHLLMbBoBBlPkFoHkfpOPBKpoFOfmhlLMmbKHBBOlmMPOlppFkhmKkhbbKPlMhLKlmfoOmFlbHBkfMLoPBLpkFKhOLOmpKPBmhMfmPMLbmhKfbFOlfLPklKHokOMpoPBhpHFmhMkbMfofBFplFLhkkOmoKObPOPFOPHlmHMofbBOfflPlLBHkkKMopMBppPFHhHkKmMoBBBPhFFhokkmkKKbopffpPhlhmBKMMMObfBPhlFHLkLMkpfBopOFphhLhmHKmBBpKFBhFLFmlKLbkOKFpHklpHhkhbfomBMPbLFHMkFMLoLfKpKFohOLpBBKhbmOmFbhbLFmfpFflOLfKPKkbHOKFMPOmfppmlbHbKfMfoFBlpLLhhKLOmOKPbPOmfHHmLmmbKfbfOlflhHlkHHoPMOoPBPHMFHhMLMMboBBkPlFlhLLkBpKobpOpFHhOlHHMkMboOBffPFklbLkkMoooBppplmhhKHmmKMBBpBFFhFLKmLOkbKOofpPplhHhokMmpMfbPBlFHFkLMLohBKhoFOhpLhmhKmbmPkFbHFLfmFKkbLOmfKPolOMpkPMhoMBmPBlbmLkfBFolBLpoFKhpLOMMKPbhOHfmhBLbmFKfbLOlFKPklKHPkOMPoPBhpHLbmlkbMLofBLplFLhkLKBKKObHOPfmPHlMHMofbBOffkPlLLHkkKMooOBppPlbhHkbmMobBBpfFFhlLomkKOboOmfpPMlhHHkmMMhbfBPFlFmkKfMkoMBoPPFphPLhbHpMbMpoFBhpLFmPKLfkOKfohflpmfkhBFomFBPblBHhkFMooLBkpKFohOLpMFKhBKOmFBhbLKmfKFbhOLLFPKlOHOkPMPObfmpmFMHbomMfolBlpOlKhKLomOppbPOHfHhmkmmbKobfppflPklkbKooMOOBBPPPFHHKLMfbpBBfppFlhMLkMLKobMPMfPPMlHbFkMbBOBflPFlomkkkMKooFmppFhhhkBMMKMBbpBlBhFLLmLKkffOofOPplhHhkHMmOBfbPBlfHkkhMLokBKoPFOhpLPmhKHbmoMkMMkLkmFKlbLMOoMBOPPlBkMMhoHBmBBPOlLhKKFoKBLpkFKFPhmlhMpbhOHfmPMLbmBmflFhOfLPklKHokkbkoPBhpHpfFFhokBhpLoMKKOfoPkfpHobKpBfhPHlmLfmlKFMPOBBPkKHkkKMoOPfKpPFMhHkLmMobBBpflBhlLomkKpboOpfphBKbHHKBMMOLfBPFlFHLkLMpOoBopOFpHbLhmmKmBFPBFBhfLFmhKLbKOKFphklpHmkhblomBMPblBmbkFMKoLBOpKFOhOLpbLKhBbOmFBhbLBmfoLBOOLfOPKlOHOkpMPOmlppmlFHbkKMfoFBlPKFkhKLHmOKPbPOhfHPmlMmbKKbfOFflPLlkmOkoMOOBBPpHFHhmLMMloBBfpoFlmFLkmoKobOPBfPhLlHmfkMbbOBFlHMllHMkkMMooBOppLPhhLHMoKMBppBFlhFKlmLKkBfOofOPplMHhkHMmoMfHPBlpHFklMLokBKpolKhpkFmhKHbmOMFbhBLHmFofbLOofKHolOHpKkMhOoBmPflbHBkfMFoMBLpoFKhpLOmpKPbhpofmhpLbmlKffFOlfLhBlKmFkOMMoPBhpHFmHOkbMFofBLplFLhkLKmhKOBFOPFkPHlmHMKbbpOffkPllKHkoKMooOBHpPlLhHkFmMolBhpfFohlkFmkKobopPFKPPLBHHKLMMObfBPfkBHlkpMkooBopHFphPKkmHofbMpfFBhfLFmlObbkOKfoPplpHPkhMHomBMPblFHlkFMloLBfpKFohOLpmPKhbHOmklhLLBmfKFKlMooKfFPlMKkpMPohfMhFFMHfkBMFoFBlpLloHhLomhKpbhOhfHPmkBmHKBbkOFfkPLlkHKkmMMopfbphFHhmkbMboLBfpFlPhLLkmKKpbOOpfPPhklHmkMbbOBffPFllHLKHMKooBOpHFPhhLHmmOkBbpBFfhlLlmLKkbKhbfOPmlPHmkHMMoMfkhOlfHFklbBokBopoFphpLMMHKHbmOMFhhBLFmFKoBkOkfKPokFHpkhMhOFFkpMlbHBKBMFoLBLpKFKhhkpmpKPbhphfmhbLbmLoFbFOlfLHblKHOkObbOlBhpmFmmOkbMfofBFplFOHKLKmoKOflOPfHPHlmbBKbbLOffLPlloHkkKBpoOBMpPFMhHkbmMokfOpfFKhlkPmkKoboOmfpPMLHHHkmMMpkfBPFlFHoKkMkoKBohFFphhLhmHpbbMplFBhlLFmKKLbkPOfoPmlpHmkhMMomfLholBHkkFbMoLBKpKFHhOLmMhKhbHOmlphbLfmfKFBoOLfpPKloHOkpMPohFbpmlFHbkfMfoFBlpLLbhKLhmOKhbPOhfHPmkpmbKBbfOlflPLlkHokoMOopBPphFHhmLMMKoBBfpFFlMFLkmKKobpOpfPPhlHHmkMbbOBffPFllHLkkMKooBOppFPhhLHmmKMBbpBFfhFLKmLKkbKOofOPplPHhkHMmoMfbPBlfHFklMLooBKpoFOhpLPmhKHbmpbFbhBLfmFKlbLOk");local K=(0xe6+-119)local e=18 local n=d;local l={}l={[(-0x7d+126)]=function()local a,d,l,o=S(g,n,n+i);n=n+t;e=(e+(K*t))%h;return(((o+e-(K)+b*(t*x))%b)*((x*v)^x))+(((l+e-(K*x)+b*(x^i))%h)*(b*h))+(((d+e-(K*i)+v)%h)*b)+((a+e-(K*t)+v)%h);end,[(0x10a/133)]=function(l,l,l)local l=S(g,n,n);n=n+a;e=(e+(K))%h;return((l+e-(K)+v)%b);end,[(0x1f+-28)]=function()local o,l=S(g,n,n+x);e=(e+(K*x))%h;n=n+x;return(((l+e-(K)+b*(x*t))%b)*h)+((o+e-(K*x)+h*(x^i))%b);end,[(86+-0x52)]=function(e,l,o)if o then local l=(e/x^(l-d))%x^((o-a)-(l-d)+a);return l-l%d;else local l=x^(l-a);return(e%(l+l)>=l)and d or U;end;end,[(0x2a8/136)]=function()local o=l[(-113+0x72)]();local e=l[(0x58/(14608/0xa6))]();local f=d;local n=(l[(-59+0x3f)](e,a,N+t)*(x^(N*x)))+o;local o=l[(376/0x5e)](e,21,31);local l=((-d)^l[(55-0x33)](e,32));if(o==U)then if(n==u)then return l*U;else o=a;f=u;end;elseif(o==(b*(x^i))-a)then return(n==U)and(l*(a/u))or(l*(U/u));end;return V(l,o-((h*(t))-d))*(f+(n/(x^J)));end,[(594/0x63)]=function(o,x,x)local x;if(not o)then o=l[(4/0x4)]();if(o==U)then return'';end;end;x=G(g,n,n+o-d);n=n+o;local l=''for o=a,#x do l=Q(l,y((S(G(x,o,o))+e)%h))e=(e+K)%b end return l;end}local function g(...)return{...},A('#',...)end local function v()local O={};local r={};local o={};local f={O,r,nil,o};local e={}local p=(0x41+-62)local o={[(0x34-51)]=(function(o)return not(#o==l[(-0x38+58)]())end),[(36+-0x22)]=(function(o)return l[(-0x5f+100)]()end),[(-0x4b+78)]=(function(o)return l[(49-0x2b)]()end),[(404/0x65)]=(function(o)local e=l[((209-0x8b)-0x40)]()local o=''local l=1 for n=1,#e do l=(l+p)%h o=Q(o,y((S(e:sub(n,n))+l)%b))end return o end)};f[3]=l[(0x3e-60)]();local n=l[(0x29-40)]()for n=1,n do local l=l[(120-0x76)]();local d;local l=o[l%(2750/(335-0xe1))];e[n]=l and l({});end;for b=1,l[(-0x13+(3640/0xb6))]()do local o=l[(0x100/128)]();if(l[(-84+0x58)](o,d,a)==u)then local f=l[(0x1b0/108)](o,x,i);local n=l[(-0x74+120)](o,t,x+t);local o={l[(0x2f1/251)](),l[(0x45-66)](),nil,nil};local h={[(-0x3b+59)]=function()o[B]=l[(0x2df/245)]();o[_]=l[(0x25-34)]();end,[(0x22-33)]=function()o[P]=l[(104+-0x67)]();end,[(0x1e4/242)]=function()o[k]=l[(0x28+-39)]()-(x^N)end,[(0x2b5/231)]=function()o[k]=l[((0x40a0/88)/188)]()-(x^N)o[F]=l[(498/0xa6)]();end};h[f]();if(l[(0x324/201)](n,a,d)==a)then o[c]=e[o[M]]end if(l[(-0x6c+112)](n,x,x)==d)then o[B]=e[o[m]]end if(l[(0x35+-49)](n,i,i)==a)then o[w]=e[o[D]]end O[b]=o;end end;for l=a,l[(-0x73+116)]()do r[l-a]=v();end;return f;end;local function U(l,t,K)local N=l[x];local h=l[i];local n=l[d];return(function(...)local S={...};local l=d l*=-1 local l=l;local v={};local e={};local b=n;local u=A('#',...)-a;local i={};local n=d;local N=N;local l=g local h=h;for l=0,u do if(l>=h)then v[l-h]=S[l+a];else e[l]=S[l+d];end;end;local l=u-h+d local l;local h;while true do l=b[n];h=l[(0x75/117)];o=(477516)while(0x58-64)>=h do o-= o o=(1919133)while(0xaa8/248)>=h do o-= o o=(1012536)while h<=(92-(6090/0x46))do o-= o o=(10551870)while(26-0x18)>=h do o-= o o=(429528)while h<=(0x25-37)do o-= o local l={e,l};l[a][l[x][f]]=l[d][l[x][D]]+l[a][l[x][B]];break;end while(o)/(((-57-0x1)+0x142))==1627 do o=(5622048)while(-59+0x3c)<h do o-= o local l=l[L]e[l](e[l+a])break end while 1928==(o)/((64152/0x16))do local o=l[O]local h={e[o](e[o+1])};local n=0;for l=o,l[C]do n=n+d;e[l]=h[n];end break end;break;end break;end while(o)/((419580/0x94))==3722 do o=(3938928)while h<=(-0x1d+32)do o-= o local o=l[f]e[o]=e[o](s(e,o+d,l[m]))break;end while(o)/((0x73b0/24))==3192 do o=(5872702)while(92/0x17)<h do o-= o local l=l[O]e[l]=e[l]()break end while 1738==(o)/((0x6a6b3/129))do local l=l[p]e[l]=e[l](e[l+a])break end;break;end break;end break;end while(o)/((376+-0x7c))==4018 do o=(11666739)while h<=(-98+0x6a)do o-= o o=(277173)while h<=(0x58-82)do o-= o local h=N[l[r]];local d;local o={};d=Y({},{__index=function(e,l)local l=o[l];return l[1][l[2]];end,__newindex=function(n,l,e)local l=o[l]l[1][l[2]]=e;end;});for d=1,l[w]do n=n+a;local l=b[n];if l[(45-0x2c)]==23 then o[d-1]={e,l[k]};else o[d-1]={t,l[B]};end;i[#i+1]=o;end;e[l[c]]=U(h,d,K);break;end while 897==(o)/((681-0x174))do o=(10031024)while(0x32-(0x6f-68))<h do o-= o local n=l[P];local o=e[n]for l=n+1,l[D]do o=o..e[l];end;e[l[O]]=o;break end while 2504==(o)/((8060-0xfd6))do e[l[p]]=U(N[l[P]],nil,K);break end;break;end break;end while(o)/((760284/0xfc))==3867 do o=(9214380)while(1935/(15480/0x48))>=h do o-= o if(e[l[p]]==e[l[D]])then n=n+a;else n=l[r];end;break;end while 2485==(o)/((800928/0xd8))do o=(3098331)while h>(68+-0x3a)do o-= o local o=l[M];local h=e[o+2];local d=e[o]+h;e[o]=d;if(h>0)then if(d<=e[o+1])then n=l[B];e[o+3]=d;end elseif(d>=e[o+1])then n=l[B];e[o+3]=d;end break end while 2349==(o)/((106839/0x51))do if(e[l[f]]==l[C])then n=n+a;else n=l[k];end;break end;break;end break;end break;end break;end while(o)/((3835+-0x5e))==513 do o=(1096134)while(0xe47/215)>=h do o-= o o=(5423362)while(-42+0x38)>=h do o-= o o=(4952703)while(0x2b-31)>=h do o-= o local o=l[O];local d=e[o]local h=e[o+2];if(h>0)then if(d>e[o+1])then n=l[B];else e[o+3]=d;end elseif(d<e[o+1])then n=l[B];else e[o+3]=d;end break;end while(o)/((10424/0x8))==3801 do o=(2379000)while h>(90+-0x4d)do o-= o e[l[p]]=e[l[k]][e[l[j]]];break end while 975==(o)/((4961-0x9d9))do e[l[f]]=K[l[B]];break end;break;end break;end while 1442==(o)/((-0x5b+3852))do o=(4043018)while h<=(3360/0xe0)do o-= o e[l[O]]=e[l[B]][l[C]];break;end while(o)/((0x768+-74))==2219 do o=(10430800)while h>(0x330/51)do o-= o n=l[k];break end while 3560==(o)/((0x170b-2969))do e[l[f]]=t[l[H]];break end;break;end break;end break;end while 598==(o)/((53157/0x1d))do o=(768075)while(0x72-94)>=h do o-= o o=(8255250)while(2322/0x81)>=h do o-= o e[l[M]]=#e[l[m]];break;end while 2250==(o)/((843870/0xe6))do o=(2704982)while h>(0x80-109)do o-= o e[l[f]]=(l[H]~=0);n=n+a;break end while 3826==(o)/((9898/0xe))do e[l[O]]=(l[B]~=0);break end;break;end break;end while 825==(o)/((969+-0x26))do o=(3092715)while h<=(5214/0xed)do o-= o o=(2688165)while(0x4ec/60)<h do o-= o e[l[M]]=e[l[k]]%l[C];break end while 1271==(o)/((4275-0x870))do e[l[c]]=l[r];break end;break;end while(o)/((0x52458/152))==1395 do o=(5738040)while(0x83-108)<h do o-= o if(e[l[L]]~=e[l[C]])then n=n+a;else n=l[k];end;break end while 2268==(o)/((0x1421-2623))do e[l[c]]=e[l[B]];break end;break;end break;end break;end break;end break;end while 156==(o)/((0xc6b+-118))do o=(3493040)while((1313130/0xc3)/182)>=h do o-= o o=(360584)while(0xb5e/97)>=h do o-= o o=(12760480)while h<=(1377/0x33)do o-= o o=(1600324)while h<=(0xa3-138)do o-= o e[l[O]]={};break;end while(o)/((-0x64+914))==1966 do o=(2685683)while(1222/0x2f)<h do o-= o do return end;break end while 1001==(o)/((-0x4d+2760))do do return e[l[f]]end break end;break;end break;end while 3460==(o)/((0x38b98/63))do o=(8689296)while(2772/0x63)>=h do o-= o local o=l[c];local n=e[l[m]];e[o+1]=n;e[o]=n[l[j]];break;end while(o)/((326789/0x8b))==3696 do o=(3025158)while(0x5a-61)<h do o-= o e[l[M]][e[l[r]]]=e[l[w]];break end while(o)/((5359-0xa96))==1142 do K[l[k]]=e[l[p]];break end;break;end break;end break;end while 959==(o)/((0x35b-483))do o=(12921000)while(95-0x3e)>=h do o-= o o=(6285312)while(0x81-98)>=h do o-= o e[l[O]][l[r]]=e[l[_]];break;end while 1584==(o)/((0xe9780/241))do o=(5577180)while h>(0x5d-61)do o-= o t[l[m]]=e[l[O]];break end while 1715==(o)/((6572-(677280/0xcc)))do e[l[c]][l[H]]=l[D];break end;break;end break;end while(o)/((-33+0xdf5))==3650 do o=(6118266)while((26418/0xee)-76)>=h do o-= o o=(13891724)while(128-0x5e)<h do o-= o if e[l[f]]then n=n+d;else n=l[r];end;break end while(o)/((4204+-0x7b))==3404 do e[l[c]]=e[l[k]]-e[l[F]];break end;break;end while(o)/((1678+-0x78))==3927 do o=(9810324)while h>(103-0x43)do o-= o local h=l[f];local b=l[F];local o=h+2 local h={e[h](e[h+1],e[o])};for l=1,b do e[o+l]=h[l];end;local h=h[1]if h then e[o]=h n=l[k];else n=n+d;end;break end while(o)/((57816/0x16))==3733 do if not e[l[c]]then n=n+a;else n=l[B];end;break end;break;end break;end break;end break;end while(o)/((0x1d8a-3802))==929 do o=(1210917)while h<=(0x6d-(207-0x8d))do o-= o o=(620928)while(0x7f+-87)>=h do o-= o o=(1314540)while h<=(0xc1-155)do o-= o local l=l[c]e[l]=e[l]()break;end while 1308==(o)/((-66+0x42f))do o=(7064675)while((-55+0xb)+0x53)<h do o-= o local l=l[p]e[l](e[l+a])break end while 2675==(o)/((176947/0x43))do local l=l[p]e[l]=e[l](e[l+a])break end;break;end break;end while(o)/(((11211200/0xaf)/208))==2016 do o=(2261454)while(0x2b9/17)>=h do o-= o local o=l[L]local h={e[o](e[o+1])};local n=0;for l=o,l[F]do n=n+d;e[l]=h[n];end break;end while 2054==(o)/((2286-0x4a1))do o=(2554664)while(129-0x57)<h do o-= o local l={e,l};l[a][l[x][M]]=l[d][l[x][F]]+l[a][l[x][k]];break end while(o)/((4863-0x99e))==1064 do local o=l[c]e[o]=e[o](s(e,o+d,l[r]))break end;break;end break;end break;end while(o)/((0x133e-2509))==501 do o=(5552890)while(3450/0x4b)>=h do o-= o o=(4109833)while(704/0x10)>=h do o-= o local O;local h;local k;local o;e[l[M]]=K[l[r]];n=n+d;l=b[n];e[l[p]]=e[l[P]][l[F]];n=n+d;l=b[n];o=l[f];k=e[l[H]];e[o+1]=k;e[o]=k[l[F]];n=n+d;l=b[n];e[l[p]]=e[l[B]];n=n+d;l=b[n];e[l[L]]=e[l[P]];n=n+d;l=b[n];o=l[f]e[o]=e[o](s(e,o+d,l[P]))n=n+d;l=b[n];o=l[c];k=e[l[P]];e[o+1]=k;e[o]=k[l[F]];n=n+d;l=b[n];o=l[M]e[o]=e[o](e[o+a])n=n+d;l=b[n];h={e,l};h[a][h[x][M]]=h[d][h[x][_]]+h[a][h[x][H]];n=n+d;l=b[n];e[l[L]]=e[l[H]]%l[F];n=n+d;l=b[n];o=l[M]e[o]=e[o](e[o+a])n=n+d;l=b[n];k=l[P];O=e[k]for l=k+1,l[w]do O=O..e[l];end;e[l[L]]=O;n=n+d;l=b[n];h={e,l};h[a][h[x][c]]=h[d][h[x][F]]+h[a][h[x][r]];n=n+d;l=b[n];e[l[p]]=e[l[P]]%l[_];break;end while(o)/((0x6e6+-37))==2377 do o=(3911085)while h>(0x7a-77)do o-= o e[l[f]]=t[l[P]];n=n+d;l=b[n];e[l[O]]=#e[l[r]];n=n+d;l=b[n];t[l[k]]=e[l[f]];n=n+d;l=b[n];e[l[p]]=t[l[H]];n=n+d;l=b[n];e[l[f]]=#e[l[P]];n=n+d;l=b[n];t[l[k]]=e[l[O]];n=n+d;l=b[n];do return end;break end while 3915==(o)/((0x800-1049))do local a;local h;local o;e[l[L]]=l[r];n=n+d;l=b[n];e[l[L]]=l[m];n=n+d;l=b[n];e[l[O]]=#e[l[r]];n=n+d;l=b[n];e[l[c]]=l[r];n=n+d;l=b[n];o=l[M];h=e[o]a=e[o+2];if(a>0)then if(h>e[o+1])then n=l[r];else e[o+3]=h;end elseif(h<e[o+1])then n=l[m];else e[o+3]=h;end break end;break;end break;end while(o)/((170660/0x6a))==3449 do o=(1999864)while h<=(-0x39+105)do o-= o o=(1929620)while h>(-0x5f+142)do o-= o local h;local o;e[l[M]]=e[l[B]][l[w]];n=n+d;l=b[n];e[l[c]]=e[l[H]][l[j]];n=n+d;l=b[n];e[l[f]]=e[l[m]][l[_]];n=n+d;l=b[n];e[l[O]]=e[l[P]][l[F]];n=n+d;l=b[n];e[l[L]]=e[l[m]][l[w]];n=n+d;l=b[n];e[l[f]]=K[l[B]];n=n+d;l=b[n];e[l[f]]=e[l[m]][l[_]];n=n+d;l=b[n];o=l[p];h=e[l[B]];e[o+1]=h;e[o]=h[l[_]];n=n+d;l=b[n];o=l[O]e[o]=e[o](e[o+a])n=n+d;l=b[n];e[l[M]]=K[l[k]];break end while 716==(o)/((0x1562-2779))do local h;local x;local o;o=l[f]e[o](e[o+a])n=n+d;l=b[n];e[l[f]]=K[l[k]];n=n+d;l=b[n];e[l[O]]=e[l[m]];n=n+d;l=b[n];o=l[M]x={e[o](e[o+1])};h=0;for l=o,l[w]do h=h+d;e[l]=x[h];end n=n+d;l=b[n];n=l[k];break end;break;end while(o)/((0x47b+-26))==1784 do o=(395469)while(-118+0xa7)<h do o-= o K[l[r]]=e[l[L]];n=n+d;l=b[n];e[l[O]]={};n=n+d;l=b[n];e[l[O]]={};n=n+d;l=b[n];K[l[P]]=e[l[O]];n=n+d;l=b[n];e[l[L]]=K[l[r]];n=n+d;l=b[n];if(e[l[M]]==l[j])then n=n+a;else n=l[k];end;break end while(o)/((-88+(0x289+-108)))==873 do local o;e[l[f]]=e[l[r]][l[D]];n=n+d;l=b[n];e[l[c]]=e[l[k]][l[w]];n=n+d;l=b[n];e[l[O]]=l[H];n=n+d;l=b[n];o=l[p]e[o]=e[o](s(e,o+d,l[r]))n=n+d;l=b[n];if not e[l[M]]then n=n+a;else n=l[H];end;break end;break;end break;end break;end break;end break;end n+= a end;end);end;return U(v(),{},q())()end)_msec({[(39600/0xdc)]='\115\116'..(function(l)return(l and'(0x620c/(0x215-282))')or'\114\105'or'\120\58'end)((50/0xa)==(0x66-96))..'\110g',[(-93+0x349)]='\108\100'..(function(l)return(l and'(3100/0x1f)')or'\101\120'or'\119\111'end)((520/(0xaf+-71))==(0x4a-68))..'\112',[(0xd4dc/228)]=(function(l)return(l and'(-0x43+167)')and'\98\121'or'\100\120'end)((525/0x69)==(0x3c+-55))..'\116\101',[(825-0x1ce)]='\99'..(function(l)return(l and'(0x41a0/168)')and'\90\19\157'or'\104\97'end)((-0x16+27)==((23088/0x25)/208))..'\114',[(1193-0x266)]='\116\97'..(function(l)return(l and'(0xd48/34)')and'\64\113'or'\98\108'end)((-105+0x6f)==((0x318/8)+-94))..'\101',[(0x1a41e/239)]=(function(l)return(l and'(15500/0x9b)')or'\115\117'or'\78\107'end)((699/0xe9)==(106-0x4b))..'\98',[(0x6dc-915)]='\99\111'..(function(l)return(l and'(-0x15+121)')and'\110\99'or'\110\105\103\97'end)((0x160a/182)==(0x6a+(-0x1437/69)))..'\97\116',[(128968/0xc4)]=(function(l,o)return(l and'(0x3b60/152)')and'\48\159\158\188\10'or'\109\97'end)((48-0x2b)==(1080/0xb4))..'\116\104',[(0xacc-1437)]=(function(l,o)return((61-0x38)==(321/0x6b)and'\48'..'\195'or l..((not'\20\95\69'and'\90'..'\180'or o)))or'\199\203\95'end),[((-2+-0x7d)+0x429)]='\105\110'..(function(l,o)return(l and'(327-0xe3)')and'\90\115\138\115\15'or'\115\101'end)((1195/0xef)==(169-0x8a))..'\114\116',[(0x2426a/138)]='\117\110'..(function(l,o)return(l and'(0xbd+-89)')or'\112\97'or'\20\38\154'end)((136-0x83)==(166-0x87))..'\99\107',[(2308-0x498)]='\115\101'..(function(l)return(l and'((32700/0x6d)-0xc8)')and'\110\112\99\104'or'\108\101'end)((94+-0x59)==(3906/0x7e))..'\99\116',[(-103+0x52c)]='\116\111\110'..(function(l,o)return(l and'(-74+0xae)')and'\117\109\98'or'\100\97\120\122'end)((128+-0x7b)==(58+-0x35))..'\101\114'},{[((10272/0x6b)/3)]=((getfenv))},((getfenv))()) end)()




end)


BSpeed_Finish.MouseButton1Click:Connect(function()

while true do
wait()


for i,d in pairs(game:GetService("Workspace"):GetDescendants()) do
	if d.Name == ("Dmg") then d.Parent:Remove() end end end




end)

GGSpeed_Finish.MouseButton1Click:Connect(function()
	
local x = game.ReplicatedFirst.REF:Clone() x.Parent = game.Players.LocalPlayer.PlayerGui
end)
GGGSpeed_Finish.MouseButton1Click:Connect(function()









while true do
   wait(1)
        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 112412400000)
        sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", 112412400000)
        for i,d in pairs(game:GetService("Workspace"):GetDescendants()) do
            if d.ClassName == 'Humanoid' and d.Parent.Name ~= game.Players.LocalPlayer.Name and d.Health ~= 9999 then
                d.Health = 0
            end
        end
    end

end)

GDGSpeed_Finish.MouseButton1Click:Connect(function()
sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 112412400000)
        sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", 112412400000)
        for i,d in pairs(game:GetService("Workspace"):GetDescendants()) do
            if d.ClassName == 'Humanoid' and d.Parent.Name ~= game.Players.LocalPlayer.Name then
                d.Health = 0
            end
        end
end)

GGGGSpeed_Finish.MouseButton1Click:Connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart. CFrame = CFrame.new(206.424911, 867.730713, -5385.64209, 0, 0, -1, -1, 0, 0, 0, 1, 0)
wait(1)
local x = game.Players. LocalPlayer.Character. HumanoidRootPart. CFrame
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart. CFrame = CFrame.new(130.147705, 771.247375, -5329.77686, -0.00100660324, -0.999815822, 0.0191653259, 0.999999523, -0.00100660324, 9.64663923e-06, 9.64663923e-06, 0.0191653259, 0.999816298)

wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart. CFrame = CFrame.new(-66.211853, 20, -66.9095764, 1, 0, 0, 0, 1, 0, 0, 0, 1)
game.Players.LocalPlayer.Character.Chesta:Remove()
end)

while true do
	if openmenu.Visible == false and frame.Visible == true and hotbar.Visible == true then
		hotbar.Visible = false
		wait(0.01)
	end
	wait(0.01)
end


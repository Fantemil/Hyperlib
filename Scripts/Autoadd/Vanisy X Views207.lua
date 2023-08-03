local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Vanisy HViews", "Midnight")

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Thanks For 5 Views")
Section:NewButton("FE Invisibility", "Credits uzee", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)",true))()
end)
Section:NewButton("Boombox", "Mute Boombox", function()
    while wait(1) do
for i,v in pairs(game:GetDescendants()) do
if v.Name == "BoomBox" then v:Destroy() end
end
end
end)
local Section = Tab:NewSection("Thanks For 10 Views")
Section:NewButton("Godmode", "you become invincible.", function()
    local player = game.Players.LocalPlayer

if player.Character then

if player.Character:FindFirstChild("Humanoid") then

player.Character.Humanoid.Name = "1"

end

local l = player.Character["1"]:Clone()

l.Parent = player.Character

l.Name = "Humanoid"; wait(0.1)

player.Character["1"]:Destroy()

workspace.CurrentCamera.CameraSubject = player.Character.Humanoid

player.Character.Animate.Disabled = true; wait(0.1)

player.Character.Animate.Disabled = false

end

print("finished.")
end)
Section:NewButton("Time Stop", "Stop Times", function()
    --RIGHT control, not left
_G.key = Enum.KeyCode.Q
 
loadstring(game:HttpGet("https://paste.gg/p/anonymous/cb1c7198b269449eb8a2cf8ced061bed/files/4a98e88f82ee47388b3030a7f000b34e/raw", true))()
 
setting = settings().Network
local Effect = Instance.new("ColorCorrectionEffect")
Effect.Parent = game.Lighting
Effect.Saturation = -1 
Effect.Contrast = 0
toggle = false
 
Effect.Enabled = false
function onKeyPress(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.RightControl then	
		if toggle == false then
			setting.IncomingReplicationLag = 1000
			Effect.Enabled = true
			toggle = true
		else
			setting.IncomingReplicationLag = 0
			Effect.Enabled = false
			toggle = false
		end
 
	end
end
 
game:GetService("UserInputService").InputBegan:connect(onKeyPress)
game:GetService("UserInputService").InputBegan:connect(onKeyPress)
end)
local Section = Tab:NewSection("Thanks For 15 Views")
Section:NewButton("Use all Itens", "Use all itens", function()
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
Section:NewButton("Ornithopter", "Ornithopter", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/nAWpBaQF'),true))()
end)
local Section = Tab:NewSection("Thanks For 20 Views")
Section:NewButton("Infinite Yield", "Inf Yield", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
Section:NewButton("Backdoor.exe", "Backdoor", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/iK4oS/backdoor.exe/master/source.lua'))()
end)
local Section = Tab:NewSection("Thanks For 30 Views")
Section:NewButton("Adminus Old", "Old", function()
    loadstring(game:HttpGet"https://rawscripts.net/raw/Universal-Script-test-1232")()
end)
Section:NewButton("Adminus", "Admins", function()
    loadstring(game:HttpGet"https://rawscripts.net/raw/Universal-Script-ADMINUS-GUI-(UPDATE)-1290")()
end)
local Section = Tab:NewSection("Thanks For 40 Views")
Section:NewButton("Inf Jump", "the player gains infinite jump", function()
    local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';

_G.JumpHeight = 50;

function Action(Object, Function) if Object ~= nil then Function(Object); end end

UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)
end)
Section:NewButton("R15 Invisible", "R15 Player Is Invisible", function()
    local removeNametags = false -- remove custom billboardgui nametags from hrp, could trigger anticheat

local plr = game:GetService("Players").LocalPlayer
local character = plr.Character
local hrp = character.HumanoidRootPart
local old = hrp.CFrame

if not character:FindFirstChild("LowerTorso") or character.PrimaryPart ~= hrp then
return print("unsupported")
end

if removeNametags then
local tag = hrp:FindFirstChildOfClass("BillboardGui")
if tag then tag:Destroy() end

hrp.ChildAdded:Connect(function(item)
if item:IsA("BillboardGui") then
task.wait()
item:Destroy()
end
end)
end

local newroot = character.LowerTorso.Root:Clone()
hrp.Parent = workspace
character.PrimaryPart = hrp
character:MoveTo(Vector3.new(old.X,9e9,old.Z))
hrp.Parent = character
task.wait(0.5)
newroot.Parent = hrp
hrp.CFrame = old
end)
local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Search")
Section:NewLabel("Script Created By Me")
Section:NewLabel("My name in scriptblox : 7DAYS")
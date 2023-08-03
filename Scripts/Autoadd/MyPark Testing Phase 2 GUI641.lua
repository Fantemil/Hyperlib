local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/TheAbsolutionism/Wally-GUI-Library-V2-Remastered/main/Library%20Code", true))()
 
library.options.underlinecolor = 'rainbow' 
library.options.toggledisplay = 'Check'
 
local Window = library:CreateWindow('MyPark') 
local Label = Window:Label('MADE BY LEGEND HANDLES',(nil))
 
local Section = Window:Section('Mypark',(true))
local Slider = Window:Slider('Ball Size',{ 
    ['default'] = 1.2; 
    ['min'] = 1.2; 
    ['max'] = 10;
    ['precise'] = (true or false); 
    ['flag'] = 'ball'; 
    ['location'] = {}; 
    },function(Value)
for _, v in pairs (game.workspace.Balls:GetDescendants())do
if v.Name == 'Ball' then 
v.Size = Vector3.new((Value),(Value),(Value))
end
end
end)
local Slider = Window:Slider('Walk Spd',{ 
    ['default'] = 16; 
    ['min'] = 15; 
    ['max'] = 18;
    ['precise'] = (true or false); 
    ['flag'] = 'speed'; 
    ['location'] = {}; 
    },function(Value)
_G.WS = (Value);
				local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
				Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
				Humanoid.WalkSpeed = _G.WS;
				end)
				Humanoid.WalkSpeed = _G.WS;
end)
local Slider = Window:Slider('Handle Spd',{ 
    ['default'] = 1; 
    ['min'] = 1; 
    ['max'] = 3;
    ['precise'] = (true or false); 
    ['flag'] = 'handlespd'; 
    ['location'] = {}; 
    },function(Value)
local plr = game.Players.LocalPlayer
local cha = plr.Character or plr.CharacterAdded:Wait()
_G.go = true
while _G.go == true do
    wait()
    for i,v in next, cha.Humanoid:GetPlayingAnimationTracks() do
        if v.Looped == false and v.Length == 1 then
            print(i,v,v.Length)
            v:AdjustSpeed(Value)
        end
    end
end
end)
    local Box = Window:Box('Change Name',{ -- 1st Arg = Name of Box Displayed
        ['default'] = 'string' or 0; -- Arg to manually set it when created can be string or number
        ['type'] = nil; -- If want to Box to only be numbers keep 'number', if want other characters for such as saving names put nil
        ['min'] = 0; -- if type = 'number' this will set how low can the number be set in the box
        ['max'] = math.huge; -- if type = 'number' this will set how high can the number be set in the box
        ['flag'] = 'Name'; -- Name to be called upon when applied to specified table or default table of library
        ['location'] = {}; -- Can be edited for any table or will be placed in Window.flags
    },function(v)
game:GetService("Workspace").CrypticZum.HumanoidRootPart.nameTag.NameTag.Text = (v)
    end)
local Button = Window:Button('Shift To Speed',function()
game.StarterGui:SetCore("SendNotification", {
Title = "Shift to Speed"; 
Text = "Enabled";
})
local sound = Instance.new("Sound", game.Workspace)
sound.Volume = 5
sound.SoundId = "rbxassetid://6098419898" 
sound.Looped = false
sound:Play()
ShiftHeld = false
local gcheck = true
urspeed = -1 -- The lower it is the faster. So don't worry about it being minus 1
 
 
function ChangeFaster(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.Minus and gameProcessedEvent == false then        
urspeed = urspeed - 0.1
    end
end
 
 
 
function ChangeSlower(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.Equals and gameProcessedEvent == false then        
urspeed = urspeed + 0.1
    end
end
 
 
 
function GChecker(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.K and gameProcessedEvent == false then        
if gcheck == false then
gcheck = true
elseif gcheck == true then
gcheck = false
end
 
    end
end
 
game:GetService("UserInputService").InputBegan:connect(GChecker)
 
 
 
function PressShift(inputObject,gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.LeftShift and gameProcessedEvent == false and gcheck == true then
        ShiftHeld = true
    end
end
 
function ReleaseShift(inputObject,gameProcessed)
    if inputObject.KeyCode == Enum.KeyCode.LeftShift then
        ShiftHeld = false
    end
end
 
game:GetService("UserInputService").InputBegan:connect(PressShift)
game:GetService("UserInputService").InputEnded:connect(ReleaseShift)
game:GetService("UserInputService").InputBegan:connect(ChangeFaster)
game:GetService("UserInputService").InputBegan:connect(ChangeSlower)
 
 
game:GetService('RunService').Stepped:connect(function()
if ShiftHeld == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,urspeed)
end
end)
end)
local Button = Window:Button('Infinite Stamina',function() 
game.StarterGui:SetCore("SendNotification", {
Title = "Stamina"; 
Text = "Enabled";
})
local sound = Instance.new("Sound", game.Workspace)
sound.Volume = 5
sound.SoundId = "rbxassetid://6098419898" 
sound.Looped = false
sound:Play()
while true do
    wait(0.1)
    game:GetService("Players").LocalPlayer.Info.Profile.Stamina.Value = 2000
    end
end)
local Button = Window:Button('Unlock Handles',function()
game.StarterGui:SetCore("SendNotification", {
Title = "Handles"; 
Text = "Enabled";
})
local sound = Instance.new("Sound", game.Workspace)
sound.Volume = 5
sound.SoundId = "rbxassetid://6098419898" 
sound.Looped = false
sound:Play()
game:GetService("Players").LocalPlayer.Info.Stats.Handles.Value = 9e9
end)
local Button = Window:Button('Max Overall',function() 
game.StarterGui:SetCore("SendNotification", {
Title = "Apperance Changer"; 
Text = "Enabled";
})
local sound = Instance.new("Sound", game.Workspace)
sound.Volume = 5
sound.SoundId = "rbxassetid://6098419898" 
sound.Looped = false
sound:Play()
_G.ovr = "99"
game:GetService("Players").LocalPlayer.Info.Profile.Overall.Value = (_G.ovr)
 
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character
game:GetService("Workspace")character.HumanoidRootPart.nameTag.Title.Text = "LEGEND HANDLES"
game:GetService("Workspace")character.HumanoidRootPart.nameTag.Title.TextScaled = false
game:GetService("Workspace")character.HumanoidRootPart.nameTag.Title.TextSize = 14
game:GetService("Workspace")character.HumanoidRootPart.nameTag.Title.TextColor3 = Color3.new(106, 0, 159)
game:GetService("Workspace")character.Hair.Handle.Color = Color3.new(250,250,250)
game:GetService("Workspace")character.HumanoidRootPart.nameTag.Ovr.Overall.Text = (_G.ovr)
game:GetService("Workspace")character.HumanoidRootPart.nameTag.Ovr.ImageColor3 = Color3.new(106, 0, 159)
game:GetService("Workspace")character.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=6749027419"
game:GetService("Workspace")character.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=1259256792"
game:GetService("Workspace")character["ShoeL_2"].TextureID = ("http://www.roblox.com/asset/?id=8724947115")
game:GetService("Workspace")character["ShoeR_2"].TextureID = ("http://www.roblox.com/asset/?id=8724947115")
end)
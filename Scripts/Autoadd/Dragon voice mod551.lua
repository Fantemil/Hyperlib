game:GetService("RunService").RenderStepped:Connect(change_color)
 
_G.voicepack = "Kiryu" -- Current available voices: "Kiryu", "Akiyama", "Majima" and "Vulcan"
local player = game.Players.LocalPlayer
local character = player.Character
local pgui = player.PlayerGui
local status = player.Status
local RPS = game.ReplicatedStorage
_G.voice = RPS.Voices:FindFirstChild(_G.voicepack)
 
print(_G.voice.Name)
local function playSound(sound)
    local soundclone = Instance.new("Sound")
    soundclone.Parent = character.Head
    soundclone.Name = sound.Name
    soundclone.SoundId = sound.Value
    soundclone.Volume = 0.35
    soundclone:Play()
    soundclone.Ended:Connect(function()
        game:GetService("Debris"):AddItem(soundclone)
    end)
end
local function fetchRandom(instance)
    local instancechildren = instance:GetChildren()
    local random = instancechildren[math.random(1, #instancechildren)]
    return random
end
 
 
local plr = game.Players.LocalPlayer
local pgui = plr.PlayerGui
local interf = pgui.Interface
local bt = interf.Battle
local main = bt.Main
 
local notifyevent 
for i,v in pairs (pgui:GetChildren()) do
    if v:IsA("BindableEvent") then
        notifyevent = v
    end
end
 
local function sendNotification(text, color, sound)
    if not color then color = Color3.new(1, 1, 1) end
    pgui.NotifyUI.Awards.ChildAdded:Once(function(c)
        if c.Text == text then
            c.TextColor3 = color
            coroutine.wrap(function()
                local con;
                con = game:GetService("RunService").RenderStepped:Connect(function()
                    if not c then
                        con:Disconnect()
                        return
                    end
                    c.TextColor3 = color
                end)()
            end)()
        end
    end)
    notifyevent:Fire(text, sound or nil)
end
 
 
local alreadyRunning = RPS:FindFirstChild("VoiceMod")
if alreadyRunning then
    sendNotification("Selected voice: ".._G.voice.Name, Color3.fromRGB(255, 255, 255))
    return
end 
 
alreadyRunning = Instance.new("BoolValue")
alreadyRunning.Parent = RPS
alreadyRunning.Value = true
alreadyRunning.Name = "VoiceMod"
 
sendNotification("Voice Mod loaded", Color3.fromRGB(255, 255, 255))
sendNotification("Selected voice: ".._G.voice.Name, Color3.fromRGB(255, 255, 255))
local receivedsound
 
player.ChildAdded:Connect(function(child)
    if child.Name == "InBattle" then
        receivedsound = fetchRandom(_G.voice.BattleStart)
        playSound(receivedsound)
    end 
end) 
local hitCD = false
character.ChildAdded:Connect(function(child)
    if child.Name == "Heated" and child:WaitForChild("Heating",0.5).Value ~= character then
        local isThrowing = child:WaitForChild("Throwing",0.5)
        if not isThrowing then
            receivedsound = fetchRandom(_G.voice.HeatAction)
            playSound(receivedsound)
        end
    end
    if child.Name == "Hitstunned" and not character:FindFirstChild("Ragdolled") then
        if hitCD == false then
            hitCD = true
            receivedsound = fetchRandom(_G.voice.Pain)
            playSound(receivedsound)
            delay(2,function()
                hitCD = false
            end)
        end
    end
    if child.Name == "Ragdolled" then
        receivedsound = fetchRandom(_G.voice.Knockdown)
        playSound(receivedsound)
    end
    if child.Name == "ImaDea" then
        receivedsound = fetchRandom(_G.voice.Death)
        playSound(receivedsound)
    end
    if child.Name == "Stunned" then
        receivedsound = fetchRandom(_G.voice.Stun)
        playSound(receivedsound)
    end
end)
 
character.ChildRemoved:Connect(function(child)
    if child.Name == "Ragdolled" then
        wait(0.1)
        if not string.match(status.CurrentMove.Value.Name, "Getup") then
            receivedsound = fetchRandom(_G.voice.Recover)
            playSound(receivedsound)
        end
    end
end)
 
character.HumanoidRootPart.ChildAdded:Connect(function(child)
    if child.Name == "KnockOut" or child.Name == "KnockOutRare" then
        child.Volume = 0
    end
end) 
local dodgeCD = false
status.FFC.Evading.Changed:Connect(function()
    if status.FFC.Evading.Value == true and character:FindFirstChild("BeingHacked") and not dodgeCD then
        dodgeCD = true
        receivedsound = fetchRandom(_G.voice.Dodge)
        playSound(receivedsound)
        delay(10,function()
            dodgeCD = false
        end)
    end
end)
local fakeTauntSound = RPS.Sounds:FindFirstChild("Laugh"):Clone()
fakeTauntSound.Parent = RPS.Sounds
fakeTauntSound.Name = "FakeLaugh"
fakeTauntSound.Volume.Value = 0
RPS.Moves.Taunt.Sound.Value = "FakeLaugh"
RPS.Moves.RushTaunt.Sound.Value = "FakeLaugh"
RPS.Moves.GoonTaunt.Sound.Value = "FakeLaugh"
status.Taunting.Changed:Connect(function()
    if status.Taunting.Value == true and status.CurrentMove.Value.Name ~= "BeastTaunt" then
        receivedsound = fetchRandom(_G.voice.Taunt)
        playSound(receivedsound)
    end
end)
local lattackCD = false
status.CurrentMove.Changed:Connect(function()
    if string.match(status.CurrentMove.Value.Name, "Attack") or string.match(status.CurrentMove.Value.Name, "Punch") then
        if lattackCD == false then
            lattackCD = true
            receivedsound = fetchRandom(_G.voice.LightAttack)
            playSound(receivedsound)
            delay(0.35, function()
                lattackCD = false
            end)
        end
    else
        if not string.match(status.CurrentMove.Value.Name, "Taunt") and not string.match(status.CurrentMove.Value.Name, "Grab") then
            receivedsound = fetchRandom(_G.voice.HeavyAttack)
            playSound(receivedsound)
        end
    end
end)
 
game.UserInputService.InputBegan:Connect(function(key)
    if game.UserInputService:GetFocusedTextBox() == nil then
        if key.KeyCode == Enum.KeyCode.H then
            if _G.voicepack == "Kiryu" then
                _G.voicepack = "Akiyama"
            elseif _G.voicepack == "Akiyama" then
                _G.voicepack = "Majima"
            elseif _G.voicepack == "Majima" then
                _G.voicepack = "Vulcan"
            elseif _G.voicepack == "Vulcan" then
                _G.voicepack = "Kiryu"
            end
            _G.voice = RPS.Voices:FindFirstChild(_G.voicepack)
            sendNotification("Selected voice: ".._G.voice.Name, Color3.fromRGB(255, 255, 255))
        end 
    end
end)
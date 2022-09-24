local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("i present")

local b = w:CreateFolder("the goofy ahh script")
local c = w:CreateFolder("COLLECTION 2!")
local d = w:CreateFolder("scripts")

d:Button("the booga rap",function()
local args = {
   [1] = "im probably a guy",
   [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
wait(1)
local args = {
   [1] = "one look at you burns my eyes",
   [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
wait(2)
local args = {
   [1] = "makes me wanna cry. maybe die",
   [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
wait(3)
local args = {
   [1] = "built like a whole dump without the truck",
   [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

wait(1)
local args = {
   [1] = "yessir i got the iq",
   [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
wait(1.5)
local args = {
   [1] = "to hit you like a drummer",
   [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
wait(2)
local args = {
   [1] = "and we know whos dumber",
   [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end)
d:Button("goofy ah walk 1",function()
game:GetService"RunService".RenderStepped:Connect(function()
spawn(function()

for i,e in next, game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Animator:GetPlayingAnimationTracks() do
if e.Name == "RunAnim" or e.Name == "WalkAnim" then
   e:AdjustSpeed(10)
end
   end
for i,v in pairs(game.Players.LocalPlayer.Character.Animate:GetDescendants()) do
if v.ClassName == "Animation" and v.Name == "RunAnim" or v.Name == "WalkAnim" then
   v.AnimationId = game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId
end
end
end)
end)
end)
d:Button("goofy ah walk 2",function()
game:GetService"RunService".RenderStepped:Connect(function()
spawn(function()

for i,e in next, game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Animator:GetPlayingAnimationTracks() do
if e.Name == "RunAnim" or e.Name == "WalkAnim" then
   e:AdjustSpeed(10)
end
   end
for i,v in pairs(game.Players.LocalPlayer.Character.Animate:GetDescendants()) do
if v.ClassName == "Animation" and v.Name == "RunAnim" or v.Name == "WalkAnim" then
   v.AnimationId = game.Players.LocalPlayer.Character.Animate.sit.SitAnim.AnimationId
end
end
end)
end)
end)
d:Button("goofy ah walk 3",function()
game:GetService"RunService".RenderStepped:Connect(function()
spawn(function()

for i,e in next, game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Animator:GetPlayingAnimationTracks() do
if e.Name == "RunAnim" or e.Name == "WalkAnim" then
   e:AdjustSpeed(10)
end
   end
for i,v in pairs(game.Players.LocalPlayer.Character.Animate:GetDescendants()) do
if v.ClassName == "Animation" and v.Name == "RunAnim" or v.Name == "WalkAnim" then
   v.AnimationId = game.Players.LocalPlayer.Character.Animate.climb.ClimbAnim.AnimationId
end
end
end)
end)
end)
d:Button("Russian roulette",function()
local starterGui = game:GetService('StarterGui');
local replicatedStorage = game:GetService('ReplicatedStorage');

local insults = {
   '1',--1
   '2',--2
   '3',-- 3
}
if insults[math.random(1, #insults)] == "3" then
 local hi = Instance.new("Sound")
hi.Name = "Sound"
hi.SoundId = "http://www.roblox.com/asset/?id=136523485"
hi.Volume = 10
hi.Looped = false
hi.archivable = false
hi.Parent = game.Workspace
hi:Play()
wait(0.5)
 game.Players.LocalPlayer:Kick("yo ass got clappped bro")
 else
    local args = {
   [1] = "i survived",
   [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

   end
   end)
d:Button("goofy ah song",function()


local hi = Instance.new("Sound")
hi.Name = "Sound"
hi.SoundId = "http://www.roblox.com/asset/?id=9039445224"
hi.Volume = 10
hi.Looped = true
hi.archivable = false
hi.Parent = game.Workspace
hi.PlaybackSpeed = 1
hi:Play()


local hi = Instance.new("Sound")
hi.Name = "Sound"
hi.SoundId = "http://www.roblox.com/asset/?id=9046865270"
hi.Volume = 10
hi.Looped = true
hi.archivable = false
hi.Parent = game.Workspace
hi.PlaybackSpeed = 1
hi:Play()


local hi = Instance.new("Sound")
hi.Name = "Sound"
hi.SoundId = "http://www.roblox.com/asset/?id=1836057733"
hi.Volume = 10
hi.Looped = true
hi.archivable = false
hi.Parent = game.Workspace
hi.PlaybackSpeed = 1
hi:Play()


local hi = Instance.new("Sound")
hi.Name = "Sound"
hi.SoundId = "http://www.roblox.com/asset/?id=1845092181"
hi.Volume = 10
hi.Looped = true
hi.archivable = false
hi.Parent = game.Workspace
hi.PlaybackSpeed = 3
hi:Play()


local hi = Instance.new("Sound")
hi.Name = "Sound"
hi.SoundId = "http://www.roblox.com/asset/?id=1844926686"
hi.Volume = 10
hi.Looped = true
hi.archivable = false
hi.Parent = game.Workspace
hi.PlaybackSpeed = 3
hi:Play()
local hi = Instance.new("Sound")
hi.Name = "Sound"
hi.SoundId = "http://www.roblox.com/asset/?id=9046863579"
hi.Volume = 10
hi.Looped = true
hi.archivable = false
hi.Parent = game.Workspace
hi.PlaybackSpeed = 3
hi:Play()

local hi = Instance.new("Sound")
hi.Name = "Sound"
hi.SoundId = "http://www.roblox.com/asset/?id=1836098756"
hi.Volume = 10
hi.Looped = true
hi.archivable = false
hi.Parent = game.Workspace
hi.PlaybackSpeed = 3
hi:Play()

local hi = Instance.new("Sound")
hi.Name = "Sound"
hi.SoundId = "http://www.roblox.com/asset/?id=9048538224"
hi.Volume = 10
hi.Looped = true
hi.archivable = false
hi.Parent = game.Workspace
hi.PlaybackSpeed = 3
hi:Play()

local hi = Instance.new("Sound")
hi.Name = "Sound"
hi.SoundId = "http://www.roblox.com/asset/?id=9047734631"
hi.Volume = 10
hi.Looped = true
hi.archivable = false
hi.Parent = game.Workspace
hi.PlaybackSpeed = 3
hi:Play()
end)
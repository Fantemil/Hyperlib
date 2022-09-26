local place = game.PlaceId

spawn(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Eprx/scripts/master/VortexHub%20Intro", true))()
end)
if place == 4443032907 then -- https://www.roblox.com/games/4443032907/NEW-Sword-Simulator
print("Loaded GUI")
loadstring(game:HttpGet("https://pastebin.com/raw/VK4kCztM", true))()
else
if place == 2949177054 then -- https://www.roblox.com/games/2949177054/Banana-Simulator-2
print("Loaded Daily-Reward Spam")
_G.toggle = true
while _G.toggle do
wait()
game:GetService("ReplicatedStorage").Events.DailyRewards:FireServer("CollectReward")
end
else
if place == 4704006941 then -- https://www.roblox.com/games/4704006941/PERKS-Blade-Throwing-Simulator
loadstring(game:HttpGet("https://pastebin.com/raw/4XGYSU7h", true))()
else
if place == 3956818381 then 
loadstring(game:HttpGet("https://pastebin.com/raw/0V0gQ5qe", true))()
else
if place == 4399032158 then
loadstring(game:HttpGet("https://pastebin.com/raw/WV0QAKPx"))()
else
if place == 2870343637 then 
loadstring(game:HttpGet("https://pastebin.com/raw/QipKyQFW"))()
else
if place == 4458733955 then 
loadstring(game:HttpGet("https://pastebin.com/raw/fi5gZv9c"))()
else
if place == 3823781113 then 
loadstring(game:HttpGet("https://pastebin.com/raw/4jHBeTtf", true))()
else
if place == 4721064529 then 
loadstring(game:HttpGet("https://pastebin.com/raw/LajtQ8qU", true))()
else
if place == 4562626938 then 
print("Loaded Kill-Aura")
_G.kill = true
local range = 50 -- change higher if you want a larger distance, don't go too high or it will kick you for suspicious activity
local walkspeed = 100
game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = walkspeed
while _G.kill do
wait()
for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
if v.Name == "HumanoidRootPart" then
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude < range then
game:GetService("ReplicatedStorage").Remotes.RemoteEvent:FireServer("DamageInvoke", v.Parent)
end
end
end
end
else
if place == 1958470779 then 
print("Loaded All Emotes")
for i,v in pairs(game.workspace:GetDescendants()) do 
 if v.Name == "GiverPart" then 
  v.CanCollide = false
  wait(0.2)
  game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
 end
 end
else
if place == 1647589158 then 
print("Loaded Infinite Ammo")
loadstring(game:HttpGet("https://pastebin.com/raw/ZqsRtnUg"))()
end
if place == 3065716641 then 
loadstring(game:HttpGet("https://pastebin.com/raw/zQfGXRm8"))()
else
if place == 2999189350 then 
loadstring(game:HttpGet("https://pastebin.com/raw/vg82bqGh"))()
else
if place == 4519672226 then 
loadstring(game:HttpGet("https://pastebin.com/raw/4cvq4q5R", true))()
else
if place == 2017976530 then 
loadstring(game:HttpGet("https://pastebin.com/raw/gphjyU5y", true))()
else
if place == 3946738988 then 
loadstring(game:HttpGet("https://pastebin.com/raw/mRekDwQf", true))()
else
if place == 3840257802 then 
print("Loaded GUI")
loadstring(game:HttpGet("https://pastebin.com/raw/aSpdnuH4", true))()
else
if place == 3725149043 then 
print("Loaded GUI")
loadstring(game:HttpGet("https://pastebin.com/raw/PDfDX8Aq", true))()
else
if place == 3977968708 then 
loadstring(game:HttpGet("https://pastebin.com/raw/j3Q9CCw1", true))()
else
if place == 4408587791 then 
loadstring(game:HttpGet("https://pastebin.com/raw/PJMrQtVV", true))()
else
if place == 1828509885 then 
loadstring(game:HttpGet("https://pastebin.com/raw/1uB7HMFb", true))()
else
if place == 891539556 then 
loadstring(game:HttpGet("https://pastebin.com/raw/kLs7cERz", true))()
else
if place == 2866967438 then
loadstring(game:HttpGet("https://pastebin.com/raw/qN4TSGU4", true))()
else
if place == 3822470741 then
loadstring(game:HttpGet("https://pastebin.com/raw/pjYnMsKD", true))()
else
if place == 3923754109 then
loadstring(game:HttpGet("https://pastebin.com/raw/2t1RAryM", true))()
else
if place == 4254575069 then
loadstring(game:HttpGet("https://pastebin.com/raw/YBj7Uypt", true))()
else
if place == 3787906236 then
loadstring(game:HttpGet("https://pastebin.com/raw/fBefnJCm", true))()
else
if place == 2210085102 then
loadstring(game:HttpGet("https://pastebin.com/raw/vCkw6SF7", true))()
else
if place == 4539184430 then
loadstring(game:HttpGet("https://pastebin.com/raw/AjPSzWvq", true))()
else
if place == 2756231960 then
loadstring(game:HttpGet("https://pastebin.com/raw/7vyXWnCu", true))()
else
if place == 4521984823 then
loadstring(game:HttpGet("https://pastebin.com/raw/cwWHmCR3", true))()
else
if place == 4221615296 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/Eprx/scripts/master/BanningSimulator2GUI", true))()
else
if place == 4390380541 then
loadstring(game:HttpGet("https://pastebin.com/raw/dnCeUhXw", true))()
else
if place == 4680735230 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/IvesAwadi/Sword-Elites-GUI/master/lua", true))()
else
if place == 4651779470 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/Eprx/scripts/master/recoilGunMods", true))()
else
if place == 4743953901 then
loadstring(game:HttpGet("https://pastebin.com/raw/ZhWAEhUj", true))()
else
if place == 3263098820 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/IvesAwadi/Germ-Simulator/master/script", true))()
else
if place == 1393976700 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/Eprx/scripts/master/Recycling%20Simulator%20GUI", true))()
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
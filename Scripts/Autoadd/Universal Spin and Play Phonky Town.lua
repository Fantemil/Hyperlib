if not isfile("funkytown.mp3") then
 writefile("funkytown.mp3", game:HttpGet("https://minhseuxd2.000webhostapp.com/funkytown.txt"))
end

local Lyrics = {
 [11] = "Gotta make a move to a town that's right for me",
 [19] = "Town to keep me movin' keep me groovin' with some energy",
 [26] = "Well, I talk about it, talk about it, talk about it, talk about it",
 [34] = "Talk about, talk about, talk about, movin'",
 [42] = "Gotta move on",
 [46] = "Gotta move on",
 [50] = "Gotta move on",
 [67] = "Won't you take me to, Funkytown?",
 [71] = "Won't you take me to, Funkytown?",
 [75] = "Won't you take me to, Funkytown?",
 [78] = "Won't you take me to, Funkytown?",
 [113] = "Won't you take me to, Funkytown?",
 [117] = "Won't you take me to, Funkytown?",
 [121] = "Won't you take me to, Funkytown?",
 [126] = "Won't you take me to, Funkytown?",
 [140] = "Gotta make a move to a town that's right for me",
 [148] = "Town to keep me movin' Keep me groovin' with some energy",
 [155] = "Well, I talk about it, talk about it, talk about it, talk about it",
 [164] = "Talk about, talk about, talk about, movin'",
 [172] = "Gotta move on",
 [175] = "Gotta move on",
 [180] = "Gotta move on",
 [196] = "Won't you take me to, Funkytown?",
 [200] = "Won't you take me to, Funkytown?",
 [204] = "Won't you take me to, Funkytown?",
 [208] = "Won't you take me to, Funkytown?"
}

local Character = game.Players.LocalPlayer.Character
local Head = Character.Head
local HumanoidRootPart = Character.HumanoidRootPart
 
local Funkytown = Instance.new("Sound", Head)
Funkytown.Looped = true
Funkytown.SoundId = (getsynasset or getcustomasset)("funkytown.mp3")
Funkytown:Play()

local CurrentTimePosition = 0

while HumanoidRootPart do
    HumanoidRootPart.CFrame *= CFrame.Angles(0, math.rad(20), 0)
    if Lyrics[math.floor(Funkytown.TimePosition)] and CurrentTimePosition ~= math.floor(Funkytown.TimePosition) then
  CurrentTimePosition = math.floor(Funkytown.TimePosition)
  game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Lyrics[math.floor(Funkytown.TimePosition)], "All")
 end
 wait()
end
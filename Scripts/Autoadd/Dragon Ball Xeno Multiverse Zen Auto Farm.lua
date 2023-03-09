_G.GetYen = true 

while _G.GetYen do wait()

local args = {
   [1] = "Open Quest",
   [2] = "Whis Quest 1"
}

game:GetService("ReplicatedStorage").Events.Gameplay.QuestMentors.NPCFunction:InvokeServer(unpack(args))
wait(0.5)
fireproximityprompt(game:GetService("Workspace").World.NPC.LindaTalk.TalkProximityPrompt)
wait(0.5)
local args = {
   [1] = "Quest Complete",
   [2] = "Whis Quest 1"
}

game:GetService("ReplicatedStorage").Events.Gameplay.QuestMentors.NPCFunction:InvokeServer(unpack(args))
end
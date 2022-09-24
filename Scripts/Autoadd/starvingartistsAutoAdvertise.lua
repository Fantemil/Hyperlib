_G.Active = true
local minWait = 10
local maxWait = 40

-- code here
local function autoSpeak(message) -- message function
    local ohString1 = message; local ohString2 = "All"; game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
end

for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
    v:Disable()
end

-- messages
local messageData = {
    "afk, but, hey guys, can you check out my art? i spend a lot of time making it <3",
    "afk; my art is really rare, please look at it",
    "hey! im afk, but, my art is really nice, please take a look at it!",
    "i just spent a ton of time making some art, please take a look at it!",
    "come and visit my art shop plz!!!",
    "afk rn, but look at my art please :))",
    "if you like memes and other things, check out my shop!",
    "afk; please buy my art :)",
    "please like/buy my work if you like it! thank you.",
    "whats up everyone! i just made some new art... please check it out!"
    -- add messages here
}

while _G.Active do
    local waitTime = math.random(minWait,maxWait); print("waiting for "..waitTime); task.wait(waitTime)
    autoSpeak(tostring(messageData[math.random(1, #messageData)]))
end
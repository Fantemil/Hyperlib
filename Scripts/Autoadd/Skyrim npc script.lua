local player = game.Players.LocalPlayer

local playerCharacter = player.Character
local humanoidRootPart = playerCharacter and playerCharacter:FindFirstChild("HumanoidRootPart")

local distanceThreshold = 5

local nearbyPlayers = {}

local sentences = {
    {
        sentence = "Looks like Deeja won't be bothering us again playerName.",
        command = "/e point"
    },
    {
    sentence = "May your sword stay sharp and your aim true, playerName. Talos guide you.",
    command = "/e salute"
    },
    {
    sentence = "I've seen giants wandering near the Throat of the World, playerName. Best to give them a wide berth.",
    command = "/e point"
    },
    {
    sentence = "The Thieves Guild is always looking for skilled individuals like yourself, playerName. Interested in joining their ranks?",
    command = "/e point"
    },
    {
    sentence = "Beware of the Dark Brotherhood, playerName. They're assassins for hire, lurking in the shadows.",
    command = "/e salute"
    },
    {
    sentence = "If you're heading to Whiterun, playerName, make sure to pay a visit to the Gildergreen. It's a sight to behold.",
    command = "/e salute"
    },
    {
    sentence = "Watch out for Forsworn in the hills, playerName. They're a dangerous bunch.",
    command = "/e point"
    },
    {
    sentence = "By the Nine, playerName! You've got a talent for magic. Have you considered joining the College of Winterhold?",
    command = "/e cheer"
    },
    {
    sentence = "I heard there's a dragon attacking a nearby village, playerName. We should go and lend them our aid.",
    command = "/e point"
    },
    {
    sentence = "Be careful in the wilderness, playerName. Wolves are known to roam these lands.",
    command = "/e point"
    },  
    {
        sentence = "Look! I see playerName.",
        command = "/e point"
    },
    {
        sentence = "Woah! Back off playerName.",
        command = "/e point"
    },
    {
        sentence = "We're stretched thin in Solitude, and I don't expect these bandits to be much challenge. Are you ready playerName?",
        command = "/e laugh"
    },
    {
        sentence = "What? Were you hoping to claim this house for yourself playerName? Well, the Aretinos always liked me, so I think I'm family enough to take up here.",
        command = "/e point"
    },
    {
        sentence = "In fact, there is. I need a soul gem filled, if you're up to it playerName.",
        command = "/e point"
    },
    {
        sentence = "Is there any College business I can help you with playerName?",
        command = "/e wave"
    },
    {
        sentence = "Have to admit, I'm attached to the place playerName. Suppose that makes me crazy, doesn't it?",
        command = "/e cheer"
    },
    {
        sentence = "Here you are playerName. Always good to see a fellow bard. Tell Giraud I said hello.",
        command = "/e point"
    },
        {
        sentence = "Heard they're reforming the Dawnguard. Vampire hunters or something, in the old fort near Riften. Might consider joining up myself. You too playerName! Might consider joining up ",
        command = "/e point"
    },
    {
        sentence = "Go on inside playerName, Isran will want to talk to you.",
        command = nil
    },
    {
        sentence = "We've got some traders coming in, and are short on Cave Bear pelts playerName, Please collect them.",
        command = nil
    },
    {
        sentence = "If you want to fight your way out of here, you have to do it in the Pit playerName.",
        command = nil
    },
    {
        sentence = "You have earned the right to call yourself my Champion, playerName.",
        command = nil
    },
    {
        sentence = "Stay close and in plain view. No funny business unless you want a few inches of steel in your belly, playerName.",
        command = nil
    },
    {
        sentence = "Private quarters are strictly off limits. You have been warned playerName.",
        command = nil
    },
    {
        sentence = "What's wrong with the Jarl? playerName answer me!",
        command = nil
    },
    {
        sentence = "Looks like Deeja won't be bothering us again playerName.",
        command = "/e point"
    },
    {
        sentence = "Look! I see playerName.",
        command = "/e point"
    },
    {
        sentence = "Woah! Back off playerName.",
        command = "/e point"
    },
    {
        sentence = "We're stretched thin in Solitude, and I don't expect these bandits to be much challenge. Are you ready playerName?",
        command = "/e laugh"
    },
    {
        sentence = "What? Were you hoping to claim this house for yourself playerName? Well, the Aretinos always liked me, so I think I'm family enough to take up here.",
        command = "/e point"
    },
    {
        sentence = "In fact, there is. I need a soul gem filled, if you're up to it playerName.",
        command = "/e point"
    },
    {
        sentence = "Is there any College business I can help you with playerName?",
        command = "/e wave"
    },
    {
        sentence = "Have to admit, I'm attached to the place playerName. Suppose that makes me crazy, doesn't it?",
        command = "/e cheer"
    },
    {
        sentence = "Here you are playerName. Always good to see a fellow bard. Tell Giraud I said hello.",
        command = "/e point"
    },
    {
        sentence = "Heard they're reforming the Dawnguard. Vampire hunters or something, in the old fort near Riften. Might consider joining up myself. You too playerName! Might consider joining up ",
        command = "/e point"
    },
    {
        sentence = "Go on inside playerName, Isran will want to talk to you.",
        command = nil
    },
    {
        sentence = "We've got some traders coming in, and are short on Cave Bear pelts playerName, Please collect them.",
        command = nil
    },
    {
        sentence = "If you want to fight your way out of here, you have to do it in the Pit playerName.",
        command = nil
    },
    {
        sentence = "You have earned the right to call yourself my Champion, playerName.",
        command = nil
    },
    {
        sentence = "Stay close and in plain view. No funny business unless you want a few inches of steel in your belly, playerName.",
        command = nil
    },
    {
        sentence = "Private quarters are strictly off limits. You have been warned playerName.",
        command = nil
    },
    {
        sentence = "What's wrong with the Jarl? playerName answer me!",
        command = nil
    },
    {
        sentence = "Yes. Do not kill Gaius Maro in Dragon Bridge playerName, or on the road. Kill him in one of the other major cities he'll be visiting.",
        command = "/e point"
    },
    {
        sentence = "Come back to me if you change your mind, playerName.",
        command = "/e point"
    },
    {
        sentence = "I suppose Giraud sent you for it playerName? I was still trying to get the wording right but here it is.",
        command = "/e wave"
    },
    {
        sentence = "Yes. Do not kill Gaius Maro in Dragon Bridge playerName, or on the road. Kill him in one of the other major cities he'll be visiting.",
        command = "/e point"
    },
    {
        sentence = "Come back to me if you change your mind, playerName.",
        command = "/e wave"
    },
    {
    sentence = "The Orc stronghold of Dushnikh Yal is known for its skilled blacksmiths, playerName. Their weapons are highly sought after.",
    command = "/e point"
    },
    {
    sentence = "The Thalmor Embassy is a heavily guarded place, playerName. Be cautious if you ever find yourself there.",
    command = "/e wave"
    },
    {
    sentence = "The town of Dawnstar is plagued by nightmares, playerName. Help the citizens find peace by investigating the source.",
    command = "/e point"
    },
    {
    sentence = "The ruins of Mzulft hold a powerful artifact, playerName. Venture deep into its depths to uncover its secrets.",
    command = "/e wave"
    },
    {
    sentence = "Greetings, playerName",
    command = "/e wave"
    },
    {
        sentence = "I suppose Giraud sent you for it playerName? I was still trying to get the wording right but here it is.",
        command = nil
    },
}

if humanoidRootPart then
    local playerPosition = humanoidRootPart.Position
    
    for _, otherPlayer in ipairs(game.Players:GetPlayers()) do
        if otherPlayer ~= player then
            local otherPlayerCharacter = otherPlayer.Character
            local otherPlayerHumanoidRootPart = otherPlayerCharacter and otherPlayerCharacter:FindFirstChild("HumanoidRootPart")
            
            if otherPlayerHumanoidRootPart and (playerPosition - otherPlayerHumanoidRootPart.Position).Magnitude <= distanceThreshold then
                table.insert(nearbyPlayers, otherPlayer)
            end
        end
    end
end

if #nearbyPlayers > 0 then
    local randomPlayer = nearbyPlayers[math.random(1, #nearbyPlayers)]
    local playerName = randomPlayer.DisplayName or randomPlayer.Name
    
    local availableSentences = {}
    
    for i, sentenceData in ipairs(sentences) do
        local sentence = sentenceData.sentence
        local command = sentenceData.command
        
        if sentence:find("playerName") then
            sentence = sentence:gsub("playerName", playerName)
            table.insert(availableSentences, { sentence = sentence, command = command })
        end
    end
    
    if #availableSentences > 0 then
        local randomIndex = math.random(1, #availableSentences)
        local randomSentenceData = availableSentences[randomIndex]
        
        local randomSentence = randomSentenceData.sentence
        local command = randomSentenceData.command
        
        if command then
            game:GetService("Players"):Chat(command)
        end
        
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(randomSentence, "All")
        
        local randomPlayerCharacter = randomPlayer.Character
        local randomPlayerHumanoidRootPart = randomPlayerCharacter and randomPlayerCharacter:FindFirstChild("HumanoidRootPart")
        
        if randomPlayerHumanoidRootPart and humanoidRootPart then
            humanoidRootPart.CFrame = CFrame.lookAt(humanoidRootPart.Position, randomPlayerHumanoidRootPart.Position)
        end
    end
else
    local defaultSentence = "No players nerby. find a player or change the distance"
    game.StarterGui:SetCore("ChatMakeSystemMessage",  { Text = defaultSentence, Color = Color3.fromRGB( 1,1,1 ), Font = Enum.Font.Arial, FontSize = Enum.FontSize.Size24 } )
end
local words = {
    "I didn't ask",
    "sonned",
    "bad",
    "even a grandma wouldn't love you",
    ":clown:",
    "gg = get good",
    "im just better",
    "my gaming chair is just better",
    "clip me",
    "skill",
    ":Skull:",
    "go play adopt me",
    "go play brookhaven",
    "omg you are so good :screm:",
    "awesome",
    "you built like gru",
    "fridge",
    "do not bully pliisss :sobv:",
    "it was your lag ofc",
    "fly high",
    "*cough* *cough*",
    "son",
    "already mad?",
    "please don't report :sobv:",
    "sob harder",
    "sopt be neamn to me :sob :sob: sov:",

}

local event = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest
local player = game.Players.LocalPlayer
local keybind = "e" -- change hotkey here

 player:GetMouse().KeyDown:connect(function(key)
        if key == keybind then
            event:FireServer(words[math.random(1,#words)], "ALL")
        end
    end)
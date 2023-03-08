repeat wait() until game:IsLoaded()
print("Executed")
local ChatEvent = game:GetService"ReplicatedStorage".DefaultChatSystemChatEvents.SayMessageRequest
print("Locals Loaded")
getgenv().MessageStatus = true
getgenv().Message = { -- Put quotes in here.
    "A person who is nice to you, but rude to the waiter, is not a nice person.",
    "Be nice to people on your way up because youll meet them on your way down.",
    "You must not let anyone define your limits because of where you come from. Your only limit is your soul.",
    "Itâs a small world after all.",
    "Our fate lives within us. You only have to be brave enough to see it.",
    "Being brave doesnât mean you go looking for trouble.", "You're never too old to wish upon a star.",
    "Iâd rather die today than live 100 years without knowing you.",
    "I can show you the worldâ¦",
    "Iâll make a man out of you.",
    "Laughter is timeless, imagination has no age, and dreams are forever.",
    "This is love. Youâre not gonna find another girl like her in a million years. Believe me, I know. Iâve looked.",
    "If there ever comes a day when we canât be together, keep me in your heart. Iâll stay there forever.",
}
local debounce = false
print("Globals Loaded")

print("Executed")

game.Players.LocalPlayer.leaderstats.Raised.Changed:Connect(function()
    if getgenv().MessageStatus == true then
        if not debounce then
            debounce = true
            wait(1)
            print("Try Chat")
            ChatEvent:FireServer(getgenv().Message[math.random(1,#getgenv().Message)],"All")
            wait(3)
            debounce = false
        end
    end
end)

for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
    v:Disable()
end
-- note this is not everything you need to please read the documentation

local CommandModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/skbiditoiletrizz327/Discord-Bot-in-roblox-without-websocket/main/src/Roblox/Module.lua"))()

CommandModule:AddCommand(".hi", function(arguments)
    print("Hello, world!",arguments[1])
end)
CommandModule:AddCommand(".say", function(arguments)
    local message = CommandModule:CompleteString(arguments)
     game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer(message, "All")
end)

CommandModule:Start()
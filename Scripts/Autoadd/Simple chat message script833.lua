--[[
Basically two roblox scripts that send a message of your choice into the roblox chat.
These scripts dont work for the oppsite versions of chat services.
--]]

--Legacy Chat
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Message", "All")

--TextChatService
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("Message")
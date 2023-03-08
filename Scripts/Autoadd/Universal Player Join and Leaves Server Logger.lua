local cilvania = print
local PlayerAdded = game.Players.PlayerAdded
local PlayerRemoving = game.Players.PlayerRemoving
local Request = http_request or request or (syn and syn.request)
local HttpService = game:GetService("HttpService")

cilvania("-- [[ Player Joins/Leaves Logging has been Initiated ]] --")
 
PlayerAdded:Connect(function(playerjoined)
 local creationdate = HttpService:JSONDecode(Request({
   Url = "https://users.roblox.com/v1/users/".. playerjoined.UserId
 }).Body)
 
 local friendcount = HttpService:JSONDecode(Request({
      Url = "https://friends.roblox.com/v1/users/".. playerjoined.UserId .."/friends/count"
 }).Body)

 cilvania("-- [[ â Player has JOINED the Server! â ]] --")
 cilvania("Username â¢ ".. playerjoined.Name)
 cilvania("Display Name â¢ ".. playerjoined.DisplayName)
 cilvania("UserId â¢ ".. playerjoined.UserId)
 cilvania("Creation Date â¢ ".. creationdate.created)
 cilvania("Friends Count â¢ ".. friendcount.count)
 cilvania("--------- [[ â¬ Information â¬ ]] ---------")
 cilvania("")
 cilvania("")
end)

PlayerRemoving:Connect(function(playerleft)
 local creationdateleft = HttpService:JSONDecode(Request({
   Url = "https://users.roblox.com/v1/users/".. playerleft.UserId
 }).Body)
 
 local friendcountleft = HttpService:JSONDecode(Request({
      Url = "https://friends.roblox.com/v1/users/".. playerleft.UserId .."/friends/count"
 }).Body)

 cilvania("-- [[ â Player has LEFT the Server! â ]] --")
 cilvania("Username â¢ ".. playerleft.Name)
 cilvania("Display Name â¢ ".. playerleft.DisplayName)
 cilvania("UserId â¢ ".. playerleft.UserId)
 cilvania("Creation Date â¢ ".. creationdateleft.created)
 cilvania("Friends Count â¢ ".. friendcountleft.count)
 cilvania("--------- [[ â¬ Information â¬ ]] ---------")
 cilvania("") -- Leaving a black space so it won't be confusing and hard to read.
 cilvania("") -- Also adding 2 Emoji, as you can see to easily determine the player joining and leaving.
end)
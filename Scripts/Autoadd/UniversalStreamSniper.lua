-- Old Version: https://raw.githubusercontent.com/Acrillis/SynapseX/master/Synapse%20Scripts/StreamSniper.lua
local Screenguini = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local UsernameBox = Instance.new("TextBox")
local TextLabel_3 = Instance.new("TextLabel")
local PlaceIdBox = Instance.new("TextBox")
local StartButton = Instance.new("TextButton")
local TextLabel_4 = Instance.new("TextLabel")
local UsernameLabel = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local UserIdLabel = Instance.new("TextLabel")
local GamerPicture = Instance.new("ImageLabel")

local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")

Screenguini.Name = HttpService:GenerateGUID(false)
Screenguini.Parent = game:GetService("CoreGui")

Frame.Parent = Screenguini
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Frame.BorderColor3 = Color3.fromRGB(31, 31, 31)
Frame.Draggable = true
Frame.Size = UDim2.new(0, 400, 0, 260)

TextLabel.Parent = Frame
TextLabel.Active = true
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
TextLabel.BorderColor3 = Color3.fromRGB(31, 31, 40)
TextLabel.Size = UDim2.new(0, 400, 0, 40)
TextLabel.Font = Enum.Font.SourceSansLight
TextLabel.Text = "Synapse X Stream Sniper"
TextLabel.TextSize = 24.000

TextLabel_2.Parent = Frame
TextLabel_2.Active = true
TextLabel_2.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
TextLabel_2.BorderColor3 = Color3.fromRGB(31, 31, 31)
TextLabel_2.Position = UDim2.new(0, 10, 0, 49)
TextLabel_2.Size = UDim2.new(0, 150, 0, 20)
TextLabel_2.Font = Enum.Font.SourceSansLight
TextLabel_2.Text = "Username/UserId:"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 16.000

UsernameBox.Name = "UsernameBox"
UsernameBox.Parent = Frame
UsernameBox.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
UsernameBox.BorderColor3 = Color3.fromRGB(31, 31, 31)
UsernameBox.Position = UDim2.new(0, 10, 0, 80)
UsernameBox.Size = UDim2.new(0, 150, 0, 35)
UsernameBox.Font = Enum.Font.SourceSansLight
UsernameBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
UsernameBox.PlaceholderText = "Enter Username Here"
UsernameBox.Text = ""
UsernameBox.TextColor3 = Color3.fromRGB(255, 255, 255)
UsernameBox.TextSize = 18.000

TextLabel_3.Parent = Frame
TextLabel_3.Active = true
TextLabel_3.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
TextLabel_3.BorderColor3 = Color3.fromRGB(31, 31, 31)
TextLabel_3.Position = UDim2.new(0, 10, 0, 130)
TextLabel_3.Size = UDim2.new(0, 150, 0, 20)
TextLabel_3.Font = Enum.Font.SourceSansLight
TextLabel_3.Text = "Place Id:"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 16.000

PlaceIdBox.Name = "PlaceIdBox"
PlaceIdBox.Parent = Frame
PlaceIdBox.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
PlaceIdBox.BorderColor3 = Color3.fromRGB(31, 31, 31)
PlaceIdBox.Position = UDim2.new(0, 10, 0, 157)
PlaceIdBox.Size = UDim2.new(0, 150, 0, 35)
PlaceIdBox.Font = Enum.Font.SourceSansLight
PlaceIdBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
PlaceIdBox.PlaceholderText = "Enter PlaceId Here"
PlaceIdBox.Text = ""
PlaceIdBox.TextColor3 = Color3.fromRGB(255, 255, 255)
PlaceIdBox.TextSize = 18.000

StartButton.Name = "StartButton"
StartButton.Parent = Frame
StartButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
StartButton.BorderColor3 = Color3.fromRGB(31, 31, 31)
StartButton.Position = UDim2.new(0, 10, 0, 210)
StartButton.Size = UDim2.new(0, 380, 0, 40)
StartButton.Font = Enum.Font.SourceSansLight
StartButton.Text = "Start"
StartButton.TextColor3 = Color3.fromRGB(255, 255, 255)
StartButton.TextSize = 24.000

TextLabel_4.Parent = Frame
TextLabel_4.Active = true
TextLabel_4.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(31, 31, 31)
TextLabel_4.Position = UDim2.new(0, 200, 0, 49)
TextLabel_4.Size = UDim2.new(0, 0, 0, 20)
TextLabel_4.AutomaticSize = Enum.AutomaticSize.X
TextLabel_4.Font = Enum.Font.SourceSansBold
TextLabel_4.Text = "Username:"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 16.000
TextLabel_4.TextWrapped = true
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left

UsernameLabel.Name = "UsernameLabel"
UsernameLabel.Parent = TextLabel_4
UsernameLabel.Active = true
UsernameLabel.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
UsernameLabel.BackgroundTransparency = 1.000
UsernameLabel.BorderColor3 = Color3.fromRGB(31, 31, 31)
UsernameLabel.Position = UDim2.new(0.5, 0, 0, 0)
UsernameLabel.Size = UDim2.new(0, 150, 0, 20)
UsernameLabel.Font = Enum.Font.SourceSansLight
UsernameLabel.Text = ""
UsernameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
UsernameLabel.TextSize = 16.000
UsernameLabel.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_5.Parent = Frame
TextLabel_5.Active = true
TextLabel_5.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderColor3 = Color3.fromRGB(31, 31, 31)
TextLabel_5.Position = UDim2.new(0, 200, 0, 69)
TextLabel_5.Size = UDim2.new(0, 0, 0, 20)
TextLabel_5.AutomaticSize = Enum.AutomaticSize.X
TextLabel_5.Font = Enum.Font.SourceSansBold
TextLabel_5.Text = "UserId:"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextSize = 16.000
TextLabel_5.TextWrapped = true
TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left

UserIdLabel.Name = "UserIdLabel"
UserIdLabel.Parent = TextLabel_5
UserIdLabel.Active = true
UserIdLabel.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
UserIdLabel.BackgroundTransparency = 1.000
UserIdLabel.BorderColor3 = Color3.fromRGB(31, 31, 31)
UserIdLabel.Position = UDim2.new(0.5, 0, 0, 0)
UserIdLabel.Size = UDim2.new(0, 150, 0, 20)
UserIdLabel.Font = Enum.Font.SourceSansLight
UserIdLabel.Text = ""
UserIdLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
UserIdLabel.TextSize = 16.000
UserIdLabel.TextXAlignment = Enum.TextXAlignment.Left

GamerPicture.Name = "GamerPicture"
GamerPicture.Parent = Frame
GamerPicture.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GamerPicture.Position = UDim2.new(0, 200, 0, 95)
GamerPicture.Size = UDim2.new(0, 97, 0, 97)
GamerPicture.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

if shared.STREAM_SNIPER then
   shared.STREAM_SNIPER:Destroy()
end
shared.STREAM_SNIPER = Screenguini

local searching = false
local confirm = false

local function HttpGet(url)
return pcall(HttpService.JSONDecode, HttpService, game:HttpGet(url))
end

local function Status(text, tout)
StartButton.Text = text

   if tout then
       task.delay(tout, function()
           if StartButton.Text == text then
               searching = false
               StartButton.Text = "Start"    
           end
       end)
   end
end

local function getServers(id, cursor)
   local fullurl = "https://games.roblox.com/v1/games/".. id .."/servers/Public?limit=100"
   if cursor then
       fullurl = "&cursor=".. cursor
   end

   return HttpGet(fullurl)
end

local function fetchThumbs(tokens)
   local payload = {
       Url = "https://thumbnails.roblox.com/v1/batch",
       Headers = {
           ["Content-Type"] = "application/json"
       },
       Method = "POST",

       Body = {}
   }

   for _, token in ipairs(tokens) do
       table.insert(payload.Body, {
           requestId = "0:".. token ..":AvatarHeadshot:150x150:png:regular",
           type = "AvatarHeadShot",
           targetId = 0,
           token = token,
           format = "png",
           size = "150x150"
       })
   end

   payload.Body = HttpService:JSONEncode(payload.Body)
   local result = syn.request(payload)
   local s, data = pcall(HttpService.JSONDecode, HttpService, result.Body)
   return s, data and data.data or data
end

local function teleport(placeId, guid)
   TeleportService:TeleportToPlaceInstance(placeId, guid)
end


local threads = 30

StartButton.MouseButton1Click:Connect(function()
   if confirm then
       confirm = false
       searching = false
       Status("Cancelled")
       return
   end

   if searching then
       confirm = true
       local old = StartButton.Text
       Status("Click again to confirm.")
       task.delay(5, function()
           if "Click again to confirm." == StartButton.Text then
               confirm = false
               StartButton.Text = old
           end
       end)
       return
   end

   searching = true

   -- User ID
   Status("Getting user id...")

   local s, Username, UserId = pcall(function() -- TODO FIX: fix for only numbers players
       local userId = tonumber(UsernameBox.Text) or Players:GetUserIdFromNameAsync(UsernameBox.Text)
       local username = Players:GetNameFromUserIdAsync(userId)

return username, userId
end)

if not s then
return Status("Username or UserId does not exist!", 3)
end

   local s, thumbUrl = pcall(Players.GetUserThumbnailAsync, Players, UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)

   UsernameLabel.Text = Username
   UserIdLabel.Text = UserId
   GamerPicture.Image = s and thumbUrl or ""

   Status("Getting user's thumbnail...")
   local s, response = HttpGet("https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=" .. UserId .. "&format=Png&size=150x150&isCircular=false")
   --local s, response = HttpGet("https://www.roblox.com/headshot-thumbnail/json?userId=" .. UserId .. "&width=150&height=150")
   local thumbnail = s and response['data'][1].imageUrl

   Status("Searching for (".. UserId ..")")
   
   -- Place ID
   Status("Getting place id...")
   
   local placeId = tonumber(PlaceIdBox.Text)

   if PlaceIdBox.Text:gsub("%s", "") == "" then
       placeId = game.PlaceId

   elseif not placeId then
       Status("Invalid place id", 3)
       return
   end
   
   Status("Searching...")
   local cursor = nil
   local searched = 0
   local maxSearchs = 0
   local players = 0
   -- Server search
   while searching do
       if not Screenguini or not Screenguini.Parent then
           break
       end
       local s, result = getServers(placeId, cursor)

       if s then
           local servers = result.data
           cursor = result.nextPageCursor
           
           if StartButton.Text:match("Searching") then
               maxSearchs = maxSearchs + #servers
               Status(searched .."/".. maxSearchs .." servers scanned, players found: ".. players)
           end

           -- Search all servers
           for index, server in ipairs(servers) do
               local function fetchServer()
                   local s, thumbs = fetchThumbs(server.playerTokens)
                   if s then
                       players = players + #thumbs
                       for _, playerThumb in ipairs(thumbs) do
                           if playerThumb.imageUrl then
                               if playerThumb.imageUrl == thumbnail then
                                   searching = false
                                   Status("Found player, teleporting...")

                                   teleport(placeId, server.id)
                                   local try = 0
                                   Player.OnTeleport:Connect(function(teleportState)
                                       if teleportState == Enum.TeleportState.Failed then
                                           try = try + 1
                                           Status("Teleport failed, try #".. try)
                                           teleport(placeId, server.id)
                                       end
                                   end)
                               end
                           else
                               Status("token failed, id:", playerThumb.requestId, playerThumb.state, playerThumb.errorMessage)
                               --print("token failed, id:", playerThumb.requestId, playerThumb.state, playerThumb.errorMessage)
                           end
                       end
                   else
                       Status("token failed", s, thumb)
                       --print("token failed", s, thumbs)
                   end
               end
               searched = searched + 1
               if index % threads ~= 0 then
                   task.spawn(fetchServer)
                   task.wait()

               else
                   fetchServer()
               end

               if searching then
                   Status(searched .."/".. maxSearchs .." servers scanned, players found: ".. players)
               end
           end
           
           -- Player not found
           if not cursor then
               break
           end
       else
           return Status("Failed to find servers", 3)
       end

       task.wait()
   end
   
   if searching then
       Status("Failed to find ".. Username ..", maybe in a vip server", 3)
   end
end)
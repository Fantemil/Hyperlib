local playerlist = game:GetService("Players")
local userinterface = game:GetService("StarterGui")

local creatorkind = game.CreatorType

local function checkcreatorkind()
local creatordescription = ""
local creatornick = ""
local creatoridentity = ""

if creatorkind == Enum.CreatorType.User then
    creatordescription = "person"
    creatornick = playerlist:GetNameFromUserIdAsync(game.CreatorId)
    creatoridentity = game.CreatorId
elseif creatorkind == Enum.CreatorType.Group then
    creatordescription = "team"
    local teamdetails = game:GetService("GroupService"):GetGroupInfoAsync(game.CreatorId)
    creatornick = teamdetails.Name
    creatoridentity = teamdetails.Id
else
    creatordescription = "not identified"
end

userinterface:SetCore("SendNotification", {
    Title = "By Lordi â¢ Who is the creator?",
    Text = creatordescription .. " | Name: " .. creatornick .. " | ID: " .. creatoridentity,
    Duration = 10,
})
end

checkcreatorkind()
local Song = "Never Gonna Give You Up" -- The song name
local Author = "" -- THIS IS RECOMMENDED!
local Duration = 5 -- How long it takes for the next lyric to be sung

local Http = game:GetService("HttpService");
local Chat = game:GetService("TextChatService");
local Replicated = game:GetService("ReplicatedStorage");
local UI = game:GetService("StarterGui");

local Send = function(Message)
	if Chat:FindFirstChild("TextChannels") then
		Chat.TextChannels.RBXGeneral:SendAsync(Message);
	else
		Replicated.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Message, "All");
	end
end

local Foreach = function(Table, Function) 
    for Index, Value in next, Table do
        Function(Index, Value)
    end
end

local Notify = function(Title, Description) 
    UI:SetCore("SendNotification", {
	    Title = Title,
	    Text = Description,
        Duration = 10,
    })
end

if Author and Author:gsub("%s", "") == "" then
    Author = nil
end

local Format = string.format 
local Lower = string.lower 
local Split = string.split

local New = Lower(Song);
local SongInformation = Format("https://api.lyrics.ovh/suggest/%s", New);
local Author = Author or Http:JSONDecode(game:HttpGet(SongInformation))["data"][1]["artist"]["name"]
local Lyrics = Http:JSONDecode(game:HttpGet(Format("https://api.lyrics.ovh/v1/%s/%s", Author, New)))

if not Lyrics or not Lyrics["lyrics"] then
    Notify("Song not found", "Couldn't find the song, maybe try inputting the author, if it still wouldn't work then the song is not supported")
    return
end

local LyricTable = Split(Lyrics["lyrics"], "\n")

Foreach(LyricTable, function(Index, Lyric)
    local New = Lyric:gsub("\n", ""):gsub("\r", "")

    if New and New:gsub("%s", "") ~= "" and not New:find("Chorus") then
        Send(New)
        task.wait(Duration)
    end
end)
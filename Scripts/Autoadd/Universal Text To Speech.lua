local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
 Name = "Text To Speech",
 LoadingTitle = "Loading..",
 LoadingSubtitle = "",
 ConfigurationSaving = {
  Enabled = true,
  FolderName = nil,
  FileName = "TTSConfig"
 },
 Discord = {
  Enabled = false,
  Invite = "sirius", -- The Discord invite code, do not include discord.gg/
  RememberJoins = true -- Set this to false to make them join the discord every time they load it up
 },
 KeySystem = false, -- Set this to true to use our key system
 KeySettings = {
  Title = "Sirius Hub",
  Subtitle = "Key System",
  Note = "Join the discord (discord.gg/sirius)",
  FileName = "SiriusKey",
  SaveKey = true,
  GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
  Key = "Hello"
 }
})
local getcustomasset = getcustomasset or getsynasset
local Tab = Window:CreateTab("Main", 176572847)
local RequestSpeakers = {
 ["Arabic / Zeina"] = "Zeina",
 ["Australian English / Russell"] = "Russell",
 ["Australian English / Nicole"] = "Nicole",
 ["Brazilian Portuguese / Vitoria"] = "Vitoria",
 ["Brazilian Portuguese / Camila"] = "Camila",
 ["Brazilian Portuguese / Ricardo"] = "Ricardo",
 ["British English / Emma"] = "Emma",
 ["British English / Brian"] = "Brian",
 ["British English / Amy"] = "Amy",
 ["Canadian French / Chantal"] = "Chantal",
 ["Castilian Spanish / Conchita"] = "Conchita",
 ["Castilian Spanish / Lucia"] = "Lucia",
 ["Castilian Spanish / Enrique"] = "Enrique",
 ["Chinese Mandarin / Zhiyu"] = "Zhiyu",
 ["Danish / Naja"] = "Naja",
 ["Danish / Mads"] = "Mads",
 ["Dutch / Ruben"] = "Ruben",
 ["Dutch / Lotte"] = "Lotte",
 ["French / Celine"] = "Celine",
 ["French / Lea"] = "Lea",
 ["French / Mathieu"] = "Mathieu",
 ["German / Hans"] = "Hans",
 ["German / Vicki"] = "Vicki",
 ["German / Marlene"] = "Marlene",
 ["Icelandic / Dora"] = "Dora",
 ["Icelandic / Karl"] = "Karl",
 ["Indian English / Aditi"] = "Aditi",
 ["Indian English / Raveena"] = "Raveena",
 ["Italian / Bianca"] = "Bianca",
 ["Italian / Carla"] = "Carla",
 ["Italian / Giorgio"] = "Giorgio",
 ["Japanese / Takumi"] = "Takumi",
 ["Japanese / Mizuki"] = "Mizuki",
 ["Korean / Seoyeon"] = "Seoyeon",
 ["Mexican Spanish / Mia"] = "Mia",
 ["Norwegian / Liv"] = "Liv",
 ["Polish / Jacek"] = "Jacek",
 ["Polish / Jan"] = "Jan",
 ["Polish / Maja"] = "Maja",
 ["Polish / Ewa"] = "Ewa",
 ["Portuguese / Cristiano"] = "Cristiano",
 ["Portuguese / Ines"] = "Ines",
 ["Romanian / Carmen"] = "Carmen",
 ["Russian / Maxim"] = "Maxim",
 ["Russian / Tatyana"] = "Tatyana",
 ["Swedish / Astrid"] = "Astrid",
 ["Turkish / Filiz"] = "Filiz",
 ["US English / Salli"] = "Salli",
 ["US English / Ivy"] = "Ivy",
 ["US English / Joey"] = "Joey",
 ["US English / Matthew"] = "Matthew",
 ["US English / Kimberly"] = "Kimberly",
 ["US English / Kendra"] = "Kendra",
 ["US English / Justin"] = "Justin",
 ["US English / Joanna"] = "Joanna",
 ["US Spanish / Lupe"] = "Lupe",
 ["US Spanish / Penelope"] = "Penelope",
 ["US Spanish / Miguel"] = "Miguel",
 ["Welsh / Gwyneth"] = "Gwyneth",
 ["Welsh English / Geraint"] = "Geraint",
}
local Speakers = {
 "Arabic / Zeina",
 "Australian English / Russell",
 "Australian English / Nicole",
 "Brazilian Portuguese / VitÃ³ria",
 "Brazilian Portuguese / Camila",
 "Brazilian Portuguese / Ricardo",
 "British English / Emma",
 "British English / Brian",
 "British English / Amy",
 "Canadian French / Chantal",
 "Castilian Spanish / Conchita",
 "Castilian Spanish / Lucia",
 "Castilian Spanish / Enrique",
 "Chinese Mandarin / Zhiyu",
 "Danish / Naja",
 "Danish / Mads",
 "Dutch / Ruben",
 "Dutch / Lotte",
 "French / CÃ©line",
 "French / LÃ©a",
 "French / Mathieu",
 "German / Hans",
 "German / Vicki",
 "German / Marlene",
 "Icelandic / DÃ³ra",
 "Icelandic / Karl",
 "Indian English / Aditi",
 "Indian English / Raveena",
 "Italian / Bianca",
 "Italian / Carla",
 "Italian / Giorgio",
 "Japanese / Takumi",
 "Japanese / Mizuki",
 "Korean / Seoyeon",
 "Mexican Spanish / Mia",
 "Norwegian / Liv",
 "Polish / Jacek",
 "Polish / Jan",
 "Polish / Maja",
 "Polish / Ewa",
 "Portuguese / Cristiano",
 "Portuguese / InÃªs",
 "Romanian / Carmen",
 "Russian / Maxim",
 "Russian / Tatyana",
 "Swedish / Astrid",
 "Turkish / Filiz",
 "US English / Salli",
 "US English / Ivy",
 "US English / Joey",
 "US English / Matthew",
 "US English / Kimberly",
 "US English / Kendra",
 "US English / Justin",
 "US English / Joanna",
 "US Spanish / Lupe",
 "US Spanish / PenÃ©lope",
 "US Spanish / Miguel",
 "Welsh / Gwyneth",
 "Welsh English / Geraint",
}
local CurrentSpeaker = "Joey"
local function TextToSpeechRawBinary(Text)
 return game:HttpGetAsync(HttpService:JSONDecode(game:HttpPostAsync("https://ttsmp3.com/makemp3_new.php", "msg=".. HttpService:UrlEncode(Text).. string.format("&lang=%s&source=ttsmp3", CurrentSpeaker), "application/x-www-form-urlencoded")).URL)
end
local function TextToSpeech(Text)
 local Got = TextToSpeechRawBinary(Text)
 local Sound = Instance.new("Sound")
 local RandomFileName = string.gsub(HttpService:GenerateGUID(false), "-", "").. ".mp3"
 writefile(RandomFileName, Got)
 Sound.SoundId = getcustomasset(RandomFileName)
 Sound.Volume = 2
 spawn(function()
  while true do
   if Sound.IsLoaded then
    delfile(RandomFileName)
    break
   end
   task.wait(0)
  end
 end)
 return Sound
end
local Toggled = true
local ChatService = game:GetService("Chat")
local TextChatService = game:GetService("TextChatService")
local ChatVersion = gethiddenproperty(TextChatService, "ChatVersion")
local Dropdown = Tab:CreateDropdown({
 Name = "Speaker",
 Options = Speakers,
 CurrentOption = "US English / Joey",
 Flag = "DropdownSpeakers", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
 Callback = function(Option)
  CurrentSpeaker = RequestSpeakers[Option]
 end,
})
local Toggle = Tab:CreateToggle({
 Name = "Toggle",
 CurrentValue = true,
 Flag = "ToggleTTS",
 Callback = function(Value)
  Toggled = Value
 end,
})
ChatService.Chatted:Connect(function(Part, Message)
 if Toggled then
  local TTS = TextToSpeech(Message)
  TTS.Parent = Part
  TTS.Playing = true
 end
end)
if ChatVersion == Enum.ChatVersion.TextChatService then
 TextChatService.MessageReceived:Connect(function(TCM)
  local Player = Players:GetPlayerByUserId(TCM.TextSource.UserId)
  if Player then
   local Character = Player.Character
   if Character then
    local Head = Character:FindFirstChild("Head")
    if Head then
     if Toggled then
      local TTS = TextToSpeech(TCM.Text)
      TTS.Parent = Head
      TTS.Playing = true
     end
    end
   end
  end
 end)
elseif ChatVersion == Enum.ChatVersion.LegacyChatService then
 local RemoteEventChatRecieve
 for _, v in pairs(game:GetDescendants()) do
  if v:IsA("RemoteEvent") then
   if v.Name == "OnMessageDoneFiltering" and v.Parent then
    if v.Parent:IsA("Folder") and v.Parent.Name == "DefaultChatSystemChatEvents" then
     RemoteEventChatRecieve = v
     break
    end
   end
  end
 end
 if RemoteEventChatRecieve == nil then
  local Connection
  Connection = game.DescendantAdded:Connect(function(v)
   if RemoteEventChatRecieve then
    Connection:Disconnect()
   end
   if v:IsA("RemoteEvent") then
    if v.Name == "OnMessageDoneFiltering" and v.Parent then
     if v.Parent:IsA("Folder") and v.Parent.Name == "DefaultChatSystemChatEvents" then
      RemoteEventChatRecieve = v
      Connection:Disconnect()
     end
    end
   end
  end)
 end
 while true do
  if RemoteEventChatRecieve then
   break
  end
  task.wait(0)
 end
 RemoteEventChatRecieve.OnClientEvent:Connect(function(MessageData)
  local Player = Players:GetPlayerByUserId(MessageData.SpeakerUserId)
  if Player then
   local Character = Player.Character
   if Character then
    local Head = Character:FindFirstChild("Head")
    if Head then
     if Toggled then
      local TTS = TextToSpeech(MessageData.Message)
      TTS.Parent = Head
      TTS.Playing = true
     end
    end
   end
  end
 end)
end
repeat task.wait() until game:IsLoaded()

local TCS = game:GetService("TextChatService")
local CoreGui = game:GetService("CoreGui")
local RStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer.PlayerGui

local isLegacy = TCS.ChatVersion == Enum.ChatVersion.LegacyChatService
local ChatBar = CoreGui:FindFirstChild("TextBoxContainer", true) or PlayerGui:FindFirstChild("Chat"):FindFirstChild("ChatBar", true)
ChatBar = ChatBar:FindFirstChild("TextBox") or ChatBar

local function replace(str, find_str, replace_str)
 local escaped_find_str = find_str:gsub("[%-%^%$%(%)%%%.%[%]%*%+%-%?]", "%%%0")
 return str:gsub(escaped_find_str, replace_str)
            end

local letters = {
 ["a"] = "Ä", -- ["A"] = "ð¢â°â¨",
 ["b"] = "Æ", -- ["B"] = "Ð²",
 ["c"] = "Æ", -- ["C"] = "Ä",
 ["d"] = "DÌ½" ,-- ["D"] = "",
 ["e"] = "â", -- ["E"] = "Ä",
 ["f"] = "â£", -- ["F"] = "Ò",
 ["g"] = "Ô", -- ["G"] = "Ô",
 ["h"] = "Ä¤", -- ["H"] = "Ä¥",
 ["i"] = "IÌ¼",-- ["I"] = "i",
 ["j"] = "JÌ",-- ["J"] = "Ñ",
 ["k"] = "KÌÌÌ¿", ["K"] = "Îº",
 ["l"] = "â± ", -- ["L"] = "L",
 ["m"] = "M", -- ["M"] = "Ð¼",
 ["n"] = "Ð", -- ["N"] = "n",
 ["o"] = "0", -- ["O"] = "Î¿",
 ["p"] = "Æ¤", -- ["P"] = "Ñ",
 ["q"] = "ð", -- ["Q"] = "Ô",
 ["r"] = "Å",  -- ["R"] = "",
 ["s"] = "á¹ ", -- ["S"] = "Å",
 ["t"] = "Î¤", -- ["T"] = "t",
 ["u"] = "á´", -- ["U"] = "u",
 ["v"] = "Ñ´", -- ["V"] = "Ñµ",
 ["w"] = "V", -- ["W"] = "Ô",
 ["x"] = "X",  -- ["X"] = "x",
 ["y"] = "Æ³", -- ["Y"] = "y",
 ["z"] = "Å¹", -- ["Z"] = "á´¢"
}

local wordReplacements = {
  ["cum"] = "Ã§Å±m",
  ["people"] = "pÄÃ¶pÄ¼Ä",
  ["cock"] = "cÃ¸Äk",
  ["girl"] = "ÄÃ¬ÅÄº",
  ["boobie"] = "ÉÃ²Ã¶bÄ±Ã¨",
  ["samsung"] = "Å¡Ã£mÅ¡Å«nÄ",
  ["all"] = "Äll",
  ["discord"] = "ÉiÅcÃ²Åd",
  ["will"] = "wÃ¬Ä¼Äº",
  ["indian"] = "iÃ±dÃ¬Ã n",
  ["bat"] = "ÉÃ t"
}

MessagePrefix = ""
MessagePrefix0 = '("Ì²L '
MessagePrefix0 = ' "Å"Ì²Ã¶L '

local function Gen(message)
    for word, replacement in pairs(wordReplacements) do
        message = string.gsub(message, word, replacement)
    end
    for search, replacement in pairs(letters) do
        message = string.gsub(message, search, replacement)
    end
    return message
end

local Connection = Instance.new("BindableFunction")

for _, c in getconnections(ChatBar.FocusLost) do
    c:Disconnect()
end

ChatBar.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        Connection:Invoke(ChatBar.Text)
        ChatBar.Text = ""
    end
end)

Connection.OnInvoke = function(Message)
    Message = Gen(Message)
    if isLegacy then
        local ChatRemote = RStorage:FindFirstChild("SayMessageRequest", true)
        ChatRemote:FireServer(MessagePrefix .. Message, "All")
    else
        local Channel = TCS.TextChannels.RBXGeneral
        Channel:SendAsync(MessagePrefix .. Message)
    end
end



loadstring(game:HttpGet("https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLogger.lua", true))()
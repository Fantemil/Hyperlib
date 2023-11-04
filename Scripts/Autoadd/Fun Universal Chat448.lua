local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "CandyHub | Fun Universal Chat " .. Fluent.Version,
    SubTitle = "by flames (https://discord.gg/NZU9zq5gMu)",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark"
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),

}

local Options = Fluent.Options

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local chat = game:GetService("Chat")

-- Mapping of characters to their underlined version
local strikethroughMapping = {
    ["a"] = "a̶", ["b"] = "b̶", ["c"] = "c̶", ["d"] = "d̶",
    ["e"] = "e̶", ["f"] = "f̶", ["g"] = "g̶", ["h"] = "h̶",
    ["i"] = "i̶", ["j"] = "j̶", ["k"] = "k̶", ["l"] = "l̶",
    ["m"] = "m̶", ["n"] = "n̶", ["o"] = "o̶", ["p"] = "p̶",
    ["q"] = "q̶", ["r"] = "r̶", ["s"] = "s̶", ["t"] = "t̶",
    ["u"] = "u̶", ["v"] = "v̶", ["w"] = "w̶", ["x"] = "x̶",
    ["y"] = "y̶", ["z"] = "z̶",
    ["A"] = "A̶", ["B"] = "B̶", ["C"] = "C̶", ["D"] = "D̶",
    ["E"] = "E̶", ["F"] = "F̶", ["G"] = "G̶", ["H"] = "H̶",
    ["I"] = "I̶", ["J"] = "J̶", ["K"] = "K̶", ["L"] = "L̶",
    ["M"] = "M̶", ["N"] = "N̶", ["O"] = "O̶", ["P"] = "P̶",
    ["Q"] = "Q̶", ["R"] = "R̶", ["S"] = "S̶", ["T"] = "T̶",
    ["U"] = "U̶", ["V"] = "V̶", ["W"] = "W̶", ["X"] = "X̶",
    ["Y"] = "Y̶", ["Z"] = "Z̶"
}

local function strikethroughWord(word)
    local result = ""
    for i = 1, #word do
        local char = word:sub(i,i)
        result = result .. (strikethroughMapping[char] or char)
    end
    return result
end

local Input = Tabs.Main:AddInput("Input", {
    Title = "Chat Bypass",
    Default = "",
    Placeholder = "Type...",
    Numeric = false,
    Finished = true, -- This should be true, so that it calls the callback when you press enter
    Callback = function(Value)
        local transformed = strikethroughWord(Value)
        
        -- Send the transformed message to everyone
        game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(transformed, "All")
    end
})

Input:OnChanged(function()
    print("Input updated:", Input.Value)
end)

local alphabetToEmojiMapping = {
    ["a"] = "🍎", ["b"] = "🍌", ["c"] = "🍒", ["d"] = "🍇",
    ["e"] = "🍉", ["f"] = "🍓", ["g"] = "🍍", ["h"] = "🍋",
    ["i"] = "🍦", ["j"] = "🍊", ["k"] = "🍏", ["l"] = "🍋",
    ["m"] = "🍄", ["n"] = "🍜", ["o"] = "🍩", ["p"] = "🍕",
    ["q"] = "🍭", ["r"] = "🍓", ["s"] = "🍨", ["t"] = "🍅",
    ["u"] = "🍇", ["v"] = "🍆", ["w"] = "🍉", ["x"] = "🍋",
    ["y"] = "🍦", ["z"] = "🍑",

    ["1"] = "1️⃣", ["2"] = "2️⃣", ["3"] = "3️⃣", ["4"] = "4️⃣",
    ["5"] = "5️⃣", ["6"] = "6️⃣", ["7"] = "7️⃣", ["8"] = "8️⃣",
    ["9"] = "9️⃣", ["0"] = "0️⃣",

    ["."] = "🔵", ["?"] = "❓", ["!"] = "❗", [","] = "⏭️",
    ["'"] = "✍️", ["\""] = "💬", ["("] = "👈", [")"] = "👉",
    ["-"] = "➖", ["+"] = "➕", ["="] = "🔀", ["*"] = "✴️",
    ["/"] = "➗", ["\\"] = "⤵️"
    -- ... add any other characters as needed ...
}


local function textToEmoji(text)
    local emojiMessage = ""
    for i = 1, #text do
        local char = text:sub(i,i)
        emojiMessage = emojiMessage .. (alphabetToEmojiMapping[char] or char) -- if character not in our mapping, just use the original character
    end
    return emojiMessage
end


local EmojiInput = Tabs.Main:AddInput("EmojiInput", {
    Title = "Emoji Input",
    Default = "",
    Placeholder = "Type...",
    Numeric = false,
    Finished = true,
    Callback = function(Value)
        local emojiMessage = textToEmoji(Value)
        
        -- Send the emoji message to everyone
        game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(emojiMessage, "All")
    end
})

EmojiInput:OnChanged(function()
    print("Input updated:", EmojiInput.Value)
end)

local inversionMapping = {
    ["a"] = "ɐ", ["b"] = "q", ["c"] = "ɔ", ["d"] = "p", ["e"] = "ǝ", ["f"] = "ɟ", 
    ["g"] = "ƃ", ["h"] = "ɥ", ["i"] = "ı", ["j"] = "ɾ", ["k"] = "ʞ", ["l"] = "l", 
    ["m"] = "ɯ", ["n"] = "u", ["o"] = "o", ["p"] = "d", ["q"] = "b", ["r"] = "ɹ", 
    ["s"] = "s", ["t"] = "ʇ", ["u"] = "n", ["v"] = "ʌ", ["w"] = "ʍ", ["x"] = "x", 
    ["y"] = "ʎ", ["z"] = "z",

    ["A"] = "∀", ["B"] = "𐐒", ["C"] = "Ɔ", ["D"] = "ᗡ", ["E"] = "Ɛ", 
    ["F"] = "Ⅎ", ["G"] = "⅁", ["H"] = "H", ["I"] = "I", ["J"] = "ſ", 
    ["K"] = "⋊", ["L"] = "⅂", ["M"] = "W", ["N"] = "N", ["O"] = "O", 
    ["P"] = "Ԁ", ["Q"] = "Q", ["R"] = "ᴚ", ["S"] = "S", ["T"] = "⊥",
    ["U"] = "∩", ["V"] = "Λ", ["W"] = "M", ["X"] = "X", ["Y"] = "⅄", ["Z"] = "Z",

    ["."] = "˙", ["?"] = "¿", ["!"] = "¡", [","] = "'", 
    ["'"] = ",", ["\""] = ",,", ["("] = ")", [")"] = "(", ["{"] = "}", ["}"] = "{", 
    ["<"] = ">", [">"] = "<", ["["] = "]", ["]"] = "[", ["_"] = "‾", ["&"] = "⅋", 
    ["1"] = "⇂", ["2"] = "ᔭ", ["3"] = "Ɛ", ["4"] = "ᔤ", ["5"] = "S", 
    ["6"] = "9", ["7"] = "Ɫ", ["8"] = "8", ["9"] = "6", ["0"] = "0", 
    ["-"] = "-", ["+"] = "+", ["="] = "=", ["*"] = "*", ["/"] = "/",
    ["\\"] = "\\", ["|"] = "|", ["$"] = "S", ["%"] = "%", ["#"] = "#", 
    ["@"] = "@", ["^"] = "^", ["&"] = "⅋", [";"] = ";", [":"] = ":"
    -- ... add any other characters as needed ...
}


local function invertText(text)
    local invertedMessage = ""
    for i = #text, 1, -1 do  -- We start from the end to the beginning to invert the order as well
        local char = text:sub(i,i)
        invertedMessage = invertedMessage .. (inversionMapping[char] or char) 
        -- if character not in our mapping, just use the original character
    end
    return invertedMessage
end



local UpsideDownInput = Tabs.Main:AddInput("UpsideDownInput", {
    Title = "Upside Down Input",
    Default = "",
    Placeholder = "Type...",
    Numeric = false,
    Finished = true,
    Callback = function(Value)
        local invertedMessage = invertText(Value)
        
        -- Send the inverted message to everyone
        game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(invertedMessage, "All")
    end
})

UpsideDownInput:OnChanged(function()
    print("Input updated:", UpsideDownInput.Value)
end)


-- SpongeBob Mocking Text
local function mockingText(text)
    local result = ""
    for i = 1, #text do
        local char = text:sub(i, i)
        if math.random(2) == 1 then  -- 50% chance to capitalize
            result = result .. char:upper()
        else
            result = result .. char:lower()
        end
    end
    return result
end



-- Bubble Text
local bubbleMapping = {
    ["a"] = "ⓐ", ["b"] = "ⓑ", ["c"] = "ⓒ", ["d"] = "ⓓ", ["e"] = "ⓔ", 
    ["f"] = "ⓕ", ["g"] = "ⓖ", ["h"] = "ⓗ", ["i"] = "ⓘ", ["j"] = "ⓙ",
    ["k"] = "ⓚ", ["l"] = "ⓛ", ["m"] = "ⓜ", ["n"] = "ⓝ", ["o"] = "ⓞ", 
    ["p"] = "ⓟ", ["q"] = "ⓠ", ["r"] = "ⓡ", ["s"] = "ⓢ", ["t"] = "ⓣ",
    ["u"] = "ⓤ", ["v"] = "ⓥ", ["w"] = "ⓦ", ["x"] = "ⓧ", ["y"] = "ⓨ", ["z"] = "ⓩ",

    ["A"] = "Ⓐ", ["B"] = "Ⓑ", ["C"] = "Ⓒ", ["D"] = "Ⓓ", ["E"] = "Ⓔ",
    ["F"] = "Ⓕ", ["G"] = "Ⓖ", ["H"] = "Ⓗ", ["I"] = "Ⓘ", ["J"] = "Ⓙ",
    ["K"] = "Ⓚ", ["L"] = "Ⓛ", ["M"] = "Ⓜ", ["N"] = "Ⓝ", ["O"] = "Ⓞ", 
    ["P"] = "Ⓟ", ["Q"] = "Ⓠ", ["R"] = "Ⓡ", ["S"] = "Ⓢ", ["T"] = "Ⓣ",
    ["U"] = "Ⓤ", ["V"] = "Ⓥ", ["W"] = "Ⓦ", ["X"] = "Ⓧ", ["Y"] = "Ⓨ", ["Z"] = "Ⓩ"
}


local function bubbleText(text)
    local result = ""
    for i = 1, #text do
        local char = text:sub(i, i):lower()  -- Convert to lowercase for mapping
        result = result .. (bubbleMapping[char] or char)
    end
    return result
end



-- Mocking Input
local MockingInput = Tabs.Main:AddInput("MockingInput", {
    Title = "Mocking Input",
    Default = "",
    Placeholder = "Type...",
    Numeric = false,
    Finished = true,
    Callback = function(Value)
        local transformed = mockingText(Value)
        game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(transformed, "All")
    end
})


-- Bubble Input
local BubbleInput = Tabs.Main:AddInput("BubbleInput", {
    Title = "Bubble Input",
    Default = "",
    Placeholder = "Type...",
    Numeric = false,
    Finished = true,
    Callback = function(Value)
        local transformed = bubbleText(Value)
        game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(transformed, "All")
    end
})

-- Whenever the inputs are changed
MockingInput:OnChanged(function()
    print("Mocking Input updated:", MockingInput.Value)
end)

BubbleInput:OnChanged(function()
    print("Bubble Input updated:", BubbleInput.Value)
end)




local function toPigLatin(word)
    if word == "" then return "" end

    -- If the word starts with a vowel, just add "yay" at the end
    local firstChar = word:sub(1,1):lower()
    if firstChar == 'a' or firstChar == 'e' or firstChar == 'i' or firstChar == 'o' or firstChar == 'u' then
        return word .. "yay"
    else
        -- Otherwise, move initial consonants to the end and add "ay"
        local rest = word:match('[aeiou].*$')
        if rest then
            return rest .. word:sub(1, #word-#rest) .. "ay"
        else
            -- In case there's no vowel, just return the word + "ay"
            return word .. "ay"
        end
    end
end


local pigLatinInput = Tabs.Main:AddInput("Pig Latin", {
    Title = "Pig Latin",
    Default = "",
    Placeholder = "Type here",
    Numeric = false,
    Finished = true,
    Callback = function(Value)
        local words = {} -- Split the input string into words
        for w in Value:gmatch("%S+") do
            table.insert(words, toPigLatin(w))
        end
        local translatedMessage = table.concat(words, " ")
        game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(translatedMessage, "All")
    end
})




local morseMapping = {
    ["a"] = ".-", ["b"] = "-...", ["c"] = "-.-.", ["d"] = "-..", ["e"] = ".", ["f"] = "..-.", ["g"] = "--.",
    ["h"] = "....", ["i"] = "..", ["j"] = ".---", ["k"] = "-.-", ["l"] = ".-..", ["m"] = "--", ["n"] = "-.",
    ["o"] = "---", ["p"] = ".--.", ["q"] = "--.-", ["r"] = ".-.", ["s"] = "...", ["t"] = "-", ["u"] = "..-",
    ["v"] = "...-", ["w"] = ".--", ["x"] = "-..-", ["y"] = "-.--", ["z"] = "--..",
    ["1"] = ".----", ["2"] = "..---", ["3"] = "...--", ["4"] = "....-", ["5"] = ".....", 
    ["6"] = "-....", ["7"] = "--...", ["8"] = "---..", ["9"] = "----.", ["0"] = "-----",
    ["."] = ".-.-.-", [","] = "--..--", ["?"] = "..--..", ["'"] = ".----.", ["!"] = "-.-.--", ["/"] = "-..-.", 
    ["("] = "-.--.", [")"] = "-.--.-", ["&"] = ".-...", [":"] = "---...", [";"] = "-.-.-.", ["="] = "-...-", 
    ["+"] = ".-.-.", ["-"] = "-....-", ["_"] = "..--.-", ["\""] = ".-..-.", ["$"] = "...-..-", ["@"] = ".--.-."
}


local function toMorseCode(text)
    return text:lower():gsub(".", function(char)
        return morseMapping[char] or char
    end)
end

local morseInput = Tabs.Main:AddInput("Morse Code", {
    Title = "Morse Code",
    Default = "",
    Placeholder = "Type here",
    Numeric = false,
    Finished = true,
    Callback = function(Value)
        local translatedMessage = ""
        for i=1, #Value do
            local char = Value:sub(i,i):lower() -- convert to lowercase for mapping
            translatedMessage = translatedMessage .. (morseMapping[char] or char) .. " " -- default to char if not in mapping
        end
        game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(translatedMessage, "All")
    end
})
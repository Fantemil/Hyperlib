shared.autoGuess = true
shared.guessTimeout = 1
shared.hintRevealPercent = 0.25
shared.experimental = false
shared.emergencyTime = "0:20"

shared.drawItCheatExecuted = shared.drawItCheatExecuted or false

if shared.drawItCheatExecuted then
    print("Already executed, applying options")
    return
end

shared.drawItCheatExecuted = true

local HttpService = game:GetService("HttpService")
local Words = game:HttpGet("https://pastebin.com/raw/33JcCqc2")
local AlreadyUsed = {}
local Guessed = false
local Force = false

local function Trim(s)
   return (s:gsub("^%s*(.-)%s*$", "%1"))
end

Words = Words:lower():split("\n")

local Success, Return = pcall(readfile, "GuessItunknown.txt")

if Success then
    for _, UnknownWord in ipairs(Return:split("\n")) do
        warn(("Unknown word %s allocated"):format(UnknownWord))
        table.insert(Words, UnknownWord)
    end
end

-- load unknown words

local ActivityBar = game:GetService("Players").LocalPlayer.PlayerGui.App.Game.ActivityBar
local Label = ActivityBar.Label
local Timer = ActivityBar.Timer

local function GetWord()
    local text = Label.Text
    local result = (text:sub(15, #text):gsub("([%a_%- ]) ([%a_%- ]) ", "%1%2"))

    result = result:gsub("%s%s%s?", " ")
    result = result:gsub(" (.+) ", "%1")
    result = Trim(result)

    return result
end

local function levenshtein(a,b)local c=string.len(a)local d=string.len(b)local e={}local f=0;if c==0 then return d elseif d==0 then return c elseif a==b then return 0 end;for g=0,c,1 do e[g]={}e[g][0]=g end;for h=0,d,1 do e[0][h]=h end;for g=1,c,1 do for h=1,d,1 do if a:byte(g)==b:byte(h)then f=0 else f=1 end;e[g][h]=math.min(e[g-1][h]+1,e[g][h-1]+1,e[g-1][h-1]+f)end end;return e[c][d]end

local function Similar(One, Two)
    local Hits = 0

    for Index = 1, #One do
        local OneChar = One:sub(Index, Index)
        local TwoChar = Two:sub(Index, Index)

        if OneChar == TwoChar then
            Hits = Hits + 1
        end
    end
    
    return Hits
end

local ApiUrl = "https://api.dictionaryapi.dev/api/v2/entries/en/%s"

local function isNoun(word)
    local RequestFormat = ApiUrl:format(word)
    local Request, Ret = pcall(game.HttpGet, game, RequestFormat)
    
    if not Request then
        return true
    end
    
    Request = Ret
    local Body = HttpService:JSONDecode(Request)[1]
    local foundNoun = false

	if Body.title and Body.title == "No Definitions Found" then
		return true
	end
    
    for _, meaning in ipairs(Body.meanings) do
        if meaning.partOfSpeech == "noun" then
            foundNoun = true
            break
        end
    end
    
    return foundNoun
end

local function Chat(Sentence)
    game:GetService("ReplicatedStorage").Knit.Services.ChatService.RE.SendMessage:FireServer(Sentence)
end

local function Guess(Expect)
    Expect = Expect:lower()

    local Results = {}
    local Threshold = #Expect:gsub("[^_]", "") + 1

    for _, Word in ipairs(Words) do
        local Levenshteined = levenshtein(Word, Expect)

        if #Expect + 1 ~= #Word then
            continue
        end
        
        if Levenshteined == Threshold then
            local Simple = Similar(Expect, Word)
            local Check = #(Expect:gsub("[^_]", ""))
            
            if Levenshteined - Check <= Simple then

                local ContainsSpace = Label.Text:find("  ")
                if Word:find(" ") and not ContainsSpace then
                    continue
                end
                
                table.insert(Results, Word)
            end

        --  warn(Expect, Word, "simp", Simple, "leven", Levenshteined, "check", Check)
        end
    end
    
    local HintRevealPercent = #Expect:gsub("_", "") / #Expect
    
    if (#Results == 0 and HintRevealPercent >= shared.hintRevealPercent) or Force then -- backup
        Force = false

        warn(("Unable to find word '%s' using local database, using online"):format(Expect))

        local MuseRequest = game:HttpGet(("https://api.datamuse.com/sug?s=%s&max=25"):format((Expect:gsub("_", "?"))))
        local MuseBody = HttpService:JSONDecode(MuseRequest)

        for _, Info in ipairs(MuseBody) do
            if Guessed then
                break
            end

			print(isNoun(Info.word), Info.word)

			if isNoun(Info.word) then
            	warn(("Using word '%s' (score: %s)"):format(Info.word, Info.score))
            	Chat(Info.word)

            	task.wait(1)
			end
        end
    end

    return Results
end

local function Exists(Table, Find)
    for _, Value in pairs(Table) do
        Value = Value:gsub("\r", "")

        if Value == Find then
            return true
        end
    end
    return false
end

local function SaveUnknown()
    local Unknown = Label.Text:match("\"(.+)\"")
    Unknown = Unknown:lower()
    
    local Success, Return = pcall(readfile, "GuessItconfirmed.txt")

    if Success then
        Return = Return:split("\n")

        if not Exists(Return, Unknown) then
            appendfile("GuessItconfirmed.txt", "\n" .. Unknown)
        end
    else
        writefile("GuessItconfirmed.txt", Unknown)
    end

    if Exists(Words, Unknown) then
        warn(("The word %s already exists in dictionary, skipping"):format(Unknown))
        
        return
    end

    warn(("Got unknown word: %s"):format(Unknown))

    local Success, Return = pcall(readfile, "GuessItunknown.txt")

    if Success then
        appendfile("GuessItunknown.txt", "\n" .. Unknown)
    else
        writefile("GuessItunknown.txt", Unknown)
    end
    
    return Unknown
end

local function TextHandler()
    local Text = Label.Text

    print("Game: " .. Text)
    print()

    if Text:find("Everyone guessed") or Text:find("The round has ended") or Text:find("artist left") then
        if not Guessed then -- failed to get word, will store it for future use
            local Unknown = SaveUnknown()
            if Unknown then
                warn(("Unknown word %s saved"):format(Unknown))

                table.insert(Words, Unknown)
            end
        end
        
        AlreadyUsed = {}
        Guessed = false
    end
    
    if Text:find("You guessed") then
        Guessed = true
        
        local Unknown = SaveUnknown()
        if Unknown then
            warn(("Unknown word %s saved"):format(Unknown))

            table.insert(Words, Unknown)
        end
    end

    if Text:find("hint") and not Guessed then -- in round
        local CurrentHints = GetWord()
        if not CurrentHints then return end

        local NoHint = CurrentHints:match("[^_]")
        
        if not NoHint then
            return
        end
        
        warn(("--_--"):rep(10))

        print(("Guess attempt for word: %s"):format(CurrentHints))
        print()

        local Guesses = Guess(CurrentHints)
        table.foreach(Guesses, print)
        
        if #Guesses <= 5 and shared.autoGuess then
            for _, Word in ipairs(Guesses) do
                if Guessed then
                    break
                end

                if not AlreadyUsed[Word] then
                    Chat(Word)
                end
                
                AlreadyUsed[Word] = true
                warn(("Auto guessing word '%s'"):format(Word))

                task.wait(shared.guessTimeout)
            end
            
            if not Guessed then
                Force = true
            end
        end

        warn(("--_--"):rep(10))
    end
end

local function TimeHandler()
    local Text = Timer.Text

    if Text == shared.emergencyTime and not Guessed then
        local Expect = GetWord()
        local MuseRequest = game:HttpGet(("https://api.datamuse.com/sug?s=%s&max=15"):format((Expect:gsub("_", "?"))))
        local MuseBody = HttpService:JSONDecode(MuseRequest)

        for _, Info in ipairs(MuseBody) do
            if Guessed then
                break
            end

            warn(("Using word '%s' (score: %s)"):format(Info.word, Info.score))
            Chat(Info.word)

            task.wait(shared.guessTimeout)
        end
    end
end

Label:GetPropertyChangedSignal("Text"):Connect(TextHandler)
Timer:GetPropertyChangedSignal("Text"):Connect(TimeHandler)

TextHandler()
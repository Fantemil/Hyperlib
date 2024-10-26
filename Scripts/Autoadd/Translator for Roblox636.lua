--[[
    Message Translator
    Made by Aim, updated by evn
    Credits to Riptxde for the sending chathook
--]]

if not game['Loaded'] then game['Loaded']:Wait() end; repeat wait(.06) until game:GetService('Players').LocalPlayer ~= nil
local YourLang = "en" -- Language code that the messages are going to be translated to

local googlev = isfile'googlev.txt' and readfile'googlev.txt' or ''
local request = request or syn.request

local function outputHook(fnc)
    return function(...)
        return fnc('[INLINE TRANSLATOR]', ...)
    end
end

local print,warn = outputHook(print), outputHook(warn)

-- // GOOGLE TRANSLATE // --

local translate, getISOCode do
    function googleConsent(Body) -- Because google really said: "Fuck you."
        local args = {}

        for match in Body:gmatch('<input type="hidden" name=".-" value=".-">') do
            local k,v = match:match('<input type="hidden" name="(.-)" value="(.-)">')
            args[k] = v
        end
        googlev = args.v
        writefile('googlev.txt', args.v)
    end

    local function got(url, Method, Body) -- Basic version of https://www.npmjs.com/package/got using synapse's request API for google websites
        Method = Method or "GET"
        
        local res = request({
            Url = url,
            Method = Method,
            Headers = {cookie="CONSENT=YES+"..googlev},
            Body = Body
        })
        
        if res.Body:match('https://consent.google.com/s') then
            print('consent')
            googleConsent(res.Body)
            res = request({
                Url = url,
                Method = "GET",
                Headers = {cookie="CONSENT=YES+"..googlev}
            })
        end
        
        return res
    end

    local languages = {
        auto = "Automatic",
        af = "Afrikaans",
        sq = "Albanian",
        am = "Amharic",
        ar = "Arabic",
        hy = "Armenian",
        az = "Azerbaijani",
        eu = "Basque",
        be = "Belarusian",
        bn = "Bengali",
        bs = "Bosnian",
        bg = "Bulgarian",
        ca = "Catalan",
        ceb = "Cebuano",
        ny = "Chichewa",
        ['zh-cn'] = "Chinese Simplified",
        ['zh-tw'] = "Chinese Traditional",
        co = "Corsican",
        hr = "Croatian",
        cs = "Czech",
        da = "Danish",
        nl = "Dutch",
        en = "English",
        eo = "Esperanto",
        et = "Estonian",
        tl = "Filipino",
        fi = "Finnish",
        fr = "French",
        fy = "Frisian",
        gl = "Galician",
        ka = "Georgian",
        de = "German",
        el = "Greek",
        gu = "Gujarati",
        ht = "Haitian Creole",
        ha = "Hausa",
        haw = "Hawaiian",
        iw = "Hebrew",
        hi = "Hindi",
        hmn = "Hmong",
        hu = "Hungarian",
        is = "Icelandic",
        ig = "Igbo",
        id = "Indonesian",
        ga = "Irish",
        it = "Italian",
        ja = "Japanese",
        jw = "Javanese",
        kn = "Kannada",
        kk = "Kazakh",
        km = "Khmer",
        ko = "Korean",
        ku = "Kurdish (Kurmanji)",
        ky = "Kyrgyz",
        lo = "Lao",
        la = "Latin",
        lv = "Latvian",
        lt = "Lithuanian",
        lb = "Luxembourgish",
        mk = "Macedonian",
        mg = "Malagasy",
        ms = "Malay",
        ml = "Malayalam",
        mt = "Maltese",
        mi = "Maori",
        mr = "Marathi",
        mn = "Mongolian",
        my = "Myanmar (Burmese)",
        ne = "Nepali",
        no = "Norwegian",
        ps = "Pashto",
        fa = "Persian",
        pl = "Polish",
        pt = "Portuguese",
        pa = "Punjabi",
        ro = "Romanian",
        ru = "Russian",
        sm = "Samoan",
        gd = "Scots Gaelic",
        sr = "Serbian",
        st = "Sesotho",
        sn = "Shona",
        sd = "Sindhi",
        si = "Sinhala",
        sk = "Slovak",
        sl = "Slovenian",
        so = "Somali",
        es = "Spanish",
        su = "Sundanese",
        sw = "Swahili",
        sv = "Swedish",
        tg = "Tajik",
        ta = "Tamil",
        te = "Telugu",
        th = "Thai",
        tr = "Turkish",
        uk = "Ukrainian",
        ur = "Urdu",
        uz = "Uzbek",
        vi = "Vietnamese",
        cy = "Welsh",
        xh = "Xhosa",
        yi = "Yiddish",
        yo = "Yoruba",
        zu = "Zulu"
    };

    function find(lang)
        for i,v in pairs(languages) do
            if i == lang or v == lang then
                return i
            end
        end
    end

    function isSupported(lang)
        local key = find(lang)
        return key and true or false 
    end

    function getISOCode(lang)
        local key = find(lang)
        return key
    end

    function stringifyQuery(dataFields)
        local data = ""
        for k, v in pairs(dataFields) do
            if type(v) == "table" then
                for _,v in pairs(v) do
                    data = data .. ("&%s=%s"):format(
                        game.HttpService:UrlEncode(k),
                        game.HttpService:UrlEncode(v)
                    )
                end
            else
                data = data .. ("&%s=%s"):format(
                    game.HttpService:UrlEncode(k),
                    game.HttpService:UrlEncode(v)
                )
            end
        end
        data = data:sub(2)
        return data
    end

    local reqid = math.random(1000,9999)
    local rpcidsTranslate = "MkEWBc"
    local rootURL = "https://translate.google.com/"
    local executeURL = "https://translate.google.com/_/TranslateWebserverUi/data/batchexecute"
    local fsid, bl

    do -- init
        print('initialize')
        local InitialReq = got(rootURL)
        fsid = InitialReq.Body:match('"FdrFJe":"(.-)"')
        bl = InitialReq.Body:match('"cfb2h":"(.-)"')
    end

    local HttpService = game:GetService("HttpService")
    function jsonE(o)
        return HttpService:JSONEncode(o)
    end
    function jsonD(o)
        return HttpService:JSONDecode(o)
    end

    function translate(str, to, from)
        reqid+=10000
        from = from and getISOCode(from) or 'auto'
        to = to and getISOCode(to) or 'en'

        local data = {{str, from, to, true}, {nil}}

        local freq = {
            {
                {
                    rpcidsTranslate, 
                    jsonE(data),
                    nil,
                    "generic"
                }
            }
        }

        local url = executeURL..'?'..stringifyQuery{rpcids = rpcidsTranslate, ['f.sid'] = fsid, bl = bl, hl="en", _reqid = reqid-10000, rt = 'c'}
        local body = stringifyQuery{['f.req'] = jsonE(freq)}
        
        local req = got(url, "POST", body)
        
        local body = jsonD(req.Body:match'%[.-%]\n')
        local translationData = jsonD(body[1][3])
        local result = {
            text = "",
            from = {
                language = "",
                text = ""
            },
            raw = ""
        }
        result.raw = translationData
        result.text = translationData[2][1][1][6][1][1]
        
        result.from.language = translationData[3]
        result.from.text = translationData[2][5][1]

        return result
    end
end

local Players = game:GetService("Players")
local LP = Players.LocalPlayer
local StarterGui = game:GetService('StarterGui')
for i=1, 15 do
    local r = pcall(StarterGui["SetCore"])
    if r then break end
    game:GetService('RunService').RenderStepped:wait()
end
wait()

local properties = {
    Color = Color3.new(1,1,0);
    Font = Enum.Font.SourceSansItalic;
    TextSize = 16;
}

game:GetService("StarterGui"):SetCore("SendNotification",
    {
        Title = "Chat Translator",
        Text = "Ported to Google Translate",
        Duration = 3
    }
)
                  
properties.Text = "[TR] To send messages in a language, say > followed by the target language/language code, e.g.: >ru or >russian. To disable (go back to original language), say >d."
StarterGui:SetCore("ChatMakeSystemMessage", properties)

function translateFrom(message)
    local translation = translate(message, YourLang)

    local text
    if translation.from.language ~= YourLang then 
        text = translation.text
    end

    return {text, translation.from.language}
end

-- // CHAT FUNCTIONS // --

local CBar, Connected = LP['PlayerGui']:WaitForChild('Chat')['Frame'].ChatBarParentFrame['Frame'].BoxFrame['Frame'].ChatBar, {}
local EventFolder = game:GetService('ReplicatedStorage'):WaitForChild('DefaultChatSystemChatEvents')
local Chat do
    function Chat(Original, msg, Channel)
        CBar.Text = msg
        for i,v in pairs(getconnections(CBar.FocusLost)) do
            v:Fire(true, nil, true)
        end
    end

    --[[
    local ChatMain = LP.PlayerScripts:FindFirstChild('ChatMain', true)
    local MessageSender if ChatMain then
        MessageSender = require(ChatMain.MessageSender)
        ChatMain = require(ChatMain)
    end

    function Chat(Original, msg, Channel)
        Channel = Channel or "All"
        if MessageSender and ChatMain then
            ChatMain.MessagePosted:fire(Original)
            MessageSender:SendMessage(msg, Channel)
        else
            if not _G.SecureChat then
                game:GetService('Players'):Chat(Original); 
            end
            EventFolder.SayMessageRequest:FireServer(msg, Channel)
        end
    end]]
end

do -- :Chatted replacement!!
    function get(plr, msg)
        print(msg)
        local tab = translateFrom(msg)
        local translation = tab[1]
        print(translation)
        if translation then
            properties.Text = "("..tab[2]:upper()..") ".."[".. plr .."]: "..translation
            StarterGui:SetCore("ChatMakeSystemMessage", properties)
        end
    end

    EventFolder:WaitForChild("OnMessageDoneFiltering").OnClientEvent:Connect(function(data)
        if data == nil then return end

        local plr = Players:FindFirstChild(data.FromSpeaker)
        local msg = tostring(data.Message)
        local originalchannel = tostring(data.OriginalChannel)

        if plr then 
            plr = plr.DisplayName 
        else 
            plr = tostring(data.FromSpeaker)
        end

        if originalchannel:find("To ") then
            plr = plr..originalchannel
        end

        get(plr, msg)
    end)
end

local sendEnabled = false
local target = ""

function translateTo(message, target)
    target = target:lower() 
    local translation = translate(message, target, "auto")

    return translation.text
end

function disableSend()
    sendEnabled = false
    properties.Text = "[TR] Sending Disabled"
    StarterGui:SetCore("ChatMakeSystemMessage", properties)
end


local HookChat = function(Bar)
    coroutine.wrap(function()
        if not table.find(Connected,Bar) then
            local Connect = Bar['FocusLost']:Connect(function(Enter, _, ignore)
                if ignore then return end
                if Enter ~= false and Bar.Text ~= '' then
                    local Message = Bar.Text
                    Bar.Text = ''
                    if Message == ">d" then
                        disableSend()
                    elseif Message:sub(1,1) == ">" and not Message:find(" ") then
                        if getISOCode(Message:sub(2)) then
                            sendEnabled = true
                            target = Message:sub(2)
                        else
                            properties.Text = "[TR] Invalid language"
                            StarterGui:SetCore("ChatMakeSystemMessage", properties)
                        end
                    elseif sendEnabled and not (Message:sub(1,3) == "/e " or Message:sub(1,7) == "/emote ") then
                        local og = Message
                        Message = translateTo(Message, target)
                        --Bar.Text = Message
                        Chat(og, Message)
                    else
                        --Bar.Text = Message
                        Chat(Message, Message)
                    end
                end
            end)
            Connected[#Connected+1] = Bar; Bar['AncestryChanged']:Wait(); Connect:Disconnect()
        end
    end)()
end

HookChat(CBar); local BindHook = Instance.new('BindableEvent')

local MT = getrawmetatable(game); local NC = MT.__namecall; setreadonly(MT, false)

MT.__namecall = newcclosure(function(...)
    local Method, Args = getnamecallmethod(), {...}
    if rawequal(tostring(Args[1]),'ChatBarFocusChanged') and rawequal(Args[2],true) then 
        if LP['PlayerGui']:FindFirstChild('Chat') then
            BindHook:Fire()
        end
    end
    return NC(...)
end)

BindHook['Event']:Connect(function()
    CBar = LP['PlayerGui'].Chat['Frame'].ChatBarParentFrame['Frame'].BoxFrame['Frame'].ChatBar
    HookChat(CBar)
end)
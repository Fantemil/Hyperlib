local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))();
local AbyssVersion = " v1.0.0";

local Window = Fluent:CreateWindow({
    Title = "Abyss | Chat Bypasser"..AbyssVersion,
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Aqua",
    MinimizeKey = Enum.KeyCode.RightShift
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Bypass = Window:AddTab({ Title = "Bypass", Icon = "" }),
    WordBypasses = Window:AddTab({ Title = "Word Bypasses", Icon = "" }),
    SentanceBypasses = Window:AddTab({ Title = "Sentance Bypasses", Icon = "" })
}
Window:SelectTab(1);

local characterstable={["a"]="ð",["b"]="ð",["c"]="ð",["d"]="ð",["e"]="ð",["f"]="ð",["g"]="ð",["h"]="ð",["i"]="ð",["j"]="ð",["k"]="ð",["l"]="ð",["m"]="ð",["n"]="ð",["o"]="ð",["p"]="ð",["q"]="ð ",["r"]="ð¡",["s"]="ð¢",["t"]="ð£",["u"]="ð¤",["v"]="ð¥",["w"]="ð¦",["x"]="ð§",["y"]="ð¨",["z"]="ð©",[" "]=" "};

local function Bypass(input)
    local lowered = input:lower();
    local output = "";
    for i = 1, #lowered do
        local char = lowered:sub(i, i);
        output = output .. (characterstable[char] or char);
    end
    return output
end

function SendBypass(message)
    local msg = Bypass(message);
    if game:GetService("TextChatService").ChatInputBarConfiguration.TargetTextChannel then
        game:GetService("TextChatService").ChatInputBarConfiguration.TargetTextChannel:SendAsync(msg);
    else
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
    end
end

Fluent:Notify({
    Title = "Frosties",
    Content = "Chat Bypasser Loaded",
    SubContent = "Join the discord: .gg/XUUjpeyc3S",
    Duration = nil
})

Tabs.Main:AddParagraph({
    Title = "Thank you for using Abyss | ChatBypasser V1.0"
})

Tabs.Main:AddButton({
    Title = "Discord",
    Description = "Copys the discord invite to your clipboard",
    Callback = function()
        setclipboard("https://discord.gg/63pT8eeVkJ")
        local Request = syn and syn.request or request
        Request({
            Url = "http://127.0.0.1:6463/rpc?v=1",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json",
                ["Origin"] = "https://discord.com"
            },
            Body = game.HttpService:JSONEncode({
                cmd = "INVITE_BROWSER",
                args = {
                    code = "63pT8eeVkJ"
                },
                nonce = game.HttpService:GenerateGUID(false)
            }),
        })
        Fluent:Notify({
        Title = "Abyss | Chat Bypasser",
        Content = "Automatically joined discord, if it didn't work the link has been copied to your clipboard.",
        Duration = 8
    })
    end
})

Tabs.Bypass:AddParagraph({
    Title = "Chat Bypass",
    Content = "Enter text to bypass below"
})

local BypassText = Tabs.Bypass:AddInput("BypassText", {
    Title = "Text To Bypass",
    Default = "",
    Placeholder = "",
    Numeric = false,
    Finished = true,
    Callback = function(Text)
        SendBypass(Text)
    end
});

-- Word Presets

Tabs.WordBypasses:AddParagraph({
    Title = "Word Presets",
    Content = "Bypass Buttons"
})

Tabs.WordBypasses:AddButton({
    Title = "Discord",
    Description = "Bypass Button",
    Callback = function()
        SendBypass("discord")
    end
})
Tabs.WordBypasses:AddButton({
    Title = "Fuck",
    Description = "Bypass Button",
    Callback = function()
        SendBypass("fuck")
    end
})
Tabs.WordBypasses:AddButton({
    Title = "Nigger",
    Description = "Bypass Button",
    Callback = function()
        SendBypass("nigger")
    end
})

-- Sentance Presets

Tabs.SentanceBypasses:AddParagraph({
    Title = "Sentance Presets",
    Content = "Bypass Buttons"
})

Tabs.SentanceBypasses:AddButton({
    Title = "Cummy Wummy",
    Description = "Bypass Button",
    Callback = function()
        SendBypass("cummy wummy")
    end
})
Tabs.SentanceBypasses:AddButton({
    Title = "Let me squeeze them titties",
    Description = "Bypass Button",
    Callback = function()
        SendBypass("let me squeeze them titties")
    end
})
Tabs.SentanceBypasses:AddButton({
    Title = "Wana fuck?",
    Description = "Bypass Button",
    Callback = function()
        SendBypass("wana fuck?")
    end
})
Tabs.SentanceBypasses:AddButton({
    Title = "Go to pornhub.com for free robux",
    Description = "Bypass Button",
    Callback = function()
        SendBypass("go to pornhub.com for free robux")
    end
})

getgenv().Frosties = true;
local frostiesversion = " v1.0";

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))();


local Window = Fluent:CreateWindow({
    Title = "Frosties"..frostiesversion,
    SubTitle = "discord.gg/XUUjpeyc3S",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Amethyst",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" })
};
Window:SelectTab(1);

local characterstable={["a"]="ð°",["b"]="ð±",["c"]="ð²",["d"]="ð³",["e"]="ð´",["f"]="ðµ",["g"]="ð¶",["h"]="ð·",["i"]="ð¸",["j"]="ð¹",["k"]="ðº",["l"]="ð»",["m"]="ð¼",["n"]="ð½",["o"]="ð¾",["p"]="ð¿",["q"]="ð",["r"]="ð",["s"]="ð",["t"]="ð",["u"]="ð",["v"]="ð",["w"]="ð",["x"]="ð",["y"]="ð",["z"]="ð",[" "]=" "};

local function chat(input)
    local lowered = input:lower();
    local output = "";
    for i = 1, #lowered do
        local char = lowered:sub(i, i);
        output = output .. (characterstable[char] or char);
    end
    return output
end

local Input = Tabs.Main:AddInput("Input", {
    Title = "Write Text Here",
    Default = "",
    Placeholder = "Write text you want to send here!",
    Numeric = false, -- Only allows numbers
    Finished = true, -- Only calls callback when you press enter
    Callback = function(Value)
        local msg = chat(Value);
        game:GetService("TextChatService").ChatInputBarConfiguration.TargetTextChannel:SendAsync(msg);
    end
});


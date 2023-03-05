local TeamSkeetLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/L1ZOT/Team-Skeet/main/lib/Source%20V2.lua"))()

local reg = TeamSkeetLib:RichText(Color3.fromRGB(94, 151, 42))
local win = TeamSkeetLib:Window({
    Name = [[Team<font color="]] ..reg.. [["> Skeet</font>]];
    Folder = "TeamSkeet";
})

--win:Tab(title <string>)
local tab = win:Tab("Autofarm")

--tab:Section(title <string>)
local sec = tab:Section("Elements")

--sec:Button(title <string>, callback <function>)
sec:Button("Button", function()
    TeamSkeetLib:Prompt({
        Title = [[Team<font color="]] ..reg.. [["> Skeet</font>]],
        Message = "Join Team <font color=\"#5e972a\">Skeet \n</font> <font color=\"#5a6cb6\">Discord</font> Server",
        Yes = function()
            setclipboard("Team Skeet Discord")
            writefile("TeamSkeet/JoinedDiscord.lua", "{'Has Joined': 'Team Skeet Discord'}")
        end,
        No = function()
            setclipboard("fuck you bitch")
        end
    })
end)

--sec:Toggle(title <string>,default <boolean>, flag <string>, callback <function>)
local toggle = sec:Toggle("Toggle", function(t)
   print(t)
end)

--[[
toggle:Set(state <boolean>)
]]

--sec:Slider(title <string>,minimum <number>,max <number>,Default <number>, callback <function>)
local slider = sec:Slider("Slider", 1, 500, 60, function(t)
   print(t)
end)

--[[
slider:Set(state <number>)
]]

--sec:Dropdown(title <string>,options <table>, callback <function>)
local dropdown = sec:Dropdown("Dropdown", {"a","b","c","d","e"}, function(t)
   print(t)
end)

--[[
Dropdown:Refresh(options <table>, deletecurrent <boolean>)
Dropdown:Set(option <string>)
]]

--sec:Bind(title <string>, default <keycode>, callback <function>)
sec:Bind("Bind", Enum.KeyCode.E, function(t)
   print(t)
end)

--[[
bind:Set(state <keycode>)
]]

--[[
label:Set(text <string>)
]]
local tab2 = win:Tab("Tab 2")
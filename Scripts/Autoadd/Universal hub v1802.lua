local DiscordLib =
    loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()

local win = DiscordLib:Window("Discord")

local serv = win:Server("Universal Hub", "http://www.roblox.com/asset/?id=6855373483")

local wlc = serv:Channel("Welcome")

wlc:Label("Thanks for executing the script!")

wlc:Label("This is made by itstimmy1382 on Discord.")


local admin = serv:Channel("Admin")

admin:Button(
    "Infinite Yield",
    function()
        DiscordLib:Notification("Notification", "Executed", "oke")
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
)

admin:Button(
    "Infinite Yield (FD)",
    function()
        DiscordLib:Notification("Notification", "Executed", "oke")
loadstring(game:HttpGet('https://pastebin.com/raw/MjBzRjmT'))()
    end
)

admin:Button(
    "Nameless Admin",
    function()
        DiscordLib:Notification("Notification", "Executed", "oke")
loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))();
    end
)

admin:Button(
    "Homebrew Admin (PC/UWP)",
    function()
        DiscordLib:Notification("Notification", "Executed", "oke")
loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Syntaxx64/HomebrewAdmin/master/Main"))()
    end
)

local mmm = serv:Channel("MMM")

mmm:Label("This script is for Monday Morning Misery.")

mmm:Seperator()

mmm:Button(
    "Best Script",
    function()
        DiscordLib:Notification("Notification", "Executed", "oke") loadstring(game:HttpGet'https://raw.githubusercontent.com/stavratum/lua/main/mmm/main.lua')()(Discord)
    end
)

local scblox = serv:Channel("ScriptBlox")

scblox:Button(
    "Script Searcher",
    function()
        DiscordLib:Notification("Notification", "Executed", "oke")
loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/ScriptSearcher"))()
    end
)

local osc = serv:Channel("Other Scripts")

osc:Button(
    "Hub V1",
    function()
        DiscordLib:Notification("Notification", "Executed, also by HassanTheKing#7321", "oke")
loadstring(game:HttpGet("https://raw.githubusercontent.com/hassantheking123321/Everybody/main/My%20hub"))();
    end
)


osc:Button(
    "British Hub V9",
    function()
        DiscordLib:Notification("Notification", "Executed", "oke")
loadstring(game:HttpGet('https://raw.githubusercontent.com/RobloxArceusXScript/ProtectedLol/main/BritishHubV9'))()
    end
)

local esp = serv:Channel("ESP")

esp:Label("Once I find ESP, I will bring it here.")

local bypasser = serv:Channel("Bypasser")

bypasser:Label("Thanks to batus__ on discord for the skidded BetterBypasser")

bypasser:Label("words")

bypasser:Seperator()

bypasser:Button(
    "fuck",
    function()
        DiscordLib:Notification("Notification", "Bypassed!", "oke")
local args = {
    [1] = "𐌜 f𐌜𐌜 𐌜 u𐌜 с𐌜 k",
    [2] = "All"
}game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
    end
)

bypasser:Button(
    "shit",
    function()
        DiscordLib:Notification("Notification", "Bypassed!", "oke")
local args = {
    [1] = "𐌜 s𐌜𐌜 𐌜 h𐌜 i𐌜 t",
    [2] = "All"
}game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
    end
)

bypasser:Button(
    "SHIT",
    function()
        DiscordLib:Notification("Notification", "Bypassed!", "oke")
local args = {
    [1] = "𐌜 S𐌜𐌜 𐌜 H𐌜 I𐌜 T",
    [2] = "All"
}game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
    end
)

local serv = win:Server("Changelogs & Version", "4834592466")

local cl = serv:Channel("Changelogs")

cl:Label("Release! (V1.0.0)")

local cl = serv:Channel("Version")

cl:Label("Current Version: V1.0.0")

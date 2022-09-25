 local DiscordLib =
    loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()

local win = DiscordLib:Window("rbxscript.com | Hello ".. game.Players.LocalPlayer.Name)

local serv = win:Server("rbxscript.com", "")

local AutoFarming = serv:Channel("Main")

AutoFarming:Button(
    "AUTO FARM",
    function()
local string_1 = "BuyBox";
local string_2 = "Crate";
local number_1 = -99991;
local Target = game:GetService("Players").LocalPlayer.Inventory
Target:InvokeServer(string_1, string_2, number_1);
    end
)

AutoFarming:Button(
    "by Terni#9174",
    function()

    end
)
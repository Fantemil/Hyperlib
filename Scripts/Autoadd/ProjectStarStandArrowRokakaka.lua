getgenv().hide_character = true;
getgenv().item_blacklist = {"Banana", "Orebag", "Cactus Juice", "Tire", "Cabbage", "Copper Coin"}; --Case sensitive, wont pickup the items listed
getgenv().item_farm = true;

loadstring(game:HttpGet("https://raw.githubusercontent.com/french-spy/roblox-scripts/main/project%20star%20item%20farm.lua"))();
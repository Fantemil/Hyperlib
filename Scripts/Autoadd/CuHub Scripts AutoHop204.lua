-- put on your executor autoexec folder
-- don't exec more than one time or you'll be kicked
repeat wait() until game:IsLoaded()
getgenv().arrows = 1 -- how much arrows to start stand farm, change it for the quantity that u want (can't be 0)
getgenv().rokas = 1 -- how much rokas to start stand farm, change it for the quantity that u want (can't be 0)
getgenv().standfarm = false -- you can turn it true
getgenv().stands = {"Stone Free", "Whitesnake", "Star Platinum", "The World", "Killer Queen", "Crazy Diamond", "Red Hot Chili Pepper", "Anubis", "Gold Experience", "King Crimson", "Silver Chariot", "Hermit Purple", "Hierophant Green", "Purple Haze", "Cream", "The Hand", "Magician's Red", "White Album", "Aerosmith", "Sticky Fingers", "Mr. President", "Six Pistols", "Beach Boy"} -- you can remove the stands that u don't want and u can put "N/A", if u want to keep all stands shinies
getgenv().keepshiny = false -- keeps all shinies
getgenv().invisible = false -- you can turn it true (works on KRNL, synapse x etc.)
getgenv().shinyonly = false -- you can turn it true to only stop stand farm when got an stand shiny that is in stand list above
getgenv().items = {"Mysterious Arrow", "Pure Rokakaka", "Rokakaka", "Diamond", "Lucky Arrow", "Dio's Diary", "Steel Ball", "Rib Cage of The Saint's Corpse", "Stone Mask", "Gold Coin", "Quinton's Glove", "Ancient Scroll", "Zepellin's Headband", "Red Candy", "Blue Candy", "Green Candy", "Yellow Candy"} -- items that u want to farm
loadstring(game:HttpGet("https://raw.githubusercontent.com/ItachiPvPUchiha/CuHub/main/ybaautohop.lua"))()
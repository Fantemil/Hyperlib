--Autofarm Settings
_G.Farm = true
_G.Settings = {
   World = 1, --1-4
   Level = 20, --1-20 (Inf could be 21 idk)
   Difficulty = "Normal", --Easy/Normal/Hard/Extreme

   --Autofeed Settings
   LeaveOneLeft = true, --Leaves one Unit Left so you dont lose it
   UnitToFeed = "Slime Lord", --Choose the Unit you want to Level up
   allowedRarity = {"Common","Uncommon"}, --choose which rarities you want to be fed to your selected Unit

   --Autopull Settings
   coinpull = true, --Enable coin pull if enough coins
   coinpullten = true, --enable coin pull for x10 pulls
   gempull = true, --Enable gem pull if enough gems
   gempullten = true, --enable gem pull for x10 pulls
}
loadstring(game:HttpGet("https://www.assasine03.com/Scripts/Anime_Brawl_All_Out.lua", true))()
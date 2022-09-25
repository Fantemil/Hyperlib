-- Dungeon Settings

_G.endlessmode = true -- Will only run endless mode and will reset dungeon after highest level gear is obtained (or the last area is cleared if lastendlesszone is not false), need to be lvl 25+

_G.lastendlesszone = false -- leave false if farming for items and/or not farming xp, otherwise set to a number which will be the last area you will do before you start a new endless run

_G.endlessmodelimittest = false -- DO NOT LEAVE ON WHILE AFKING ENDLESS MODE, only meant for pushing the limits of the autofarm in endless mode (for leaderboards and shit)

_G.hardestdungeonpossible = true -- Will ignore custom dungeon settings below (except for hardcore) and play highest dungeon possible

_G.Hardcore = true -- Should be fine for the most part to keep on, but if for some reason you keep dying while autofarming, set to false temporarily until you no longer die.

-- Custom Dungeon Settings

_G.Location = "Crystal Mines" -- Locations include Dragon's Den, Toy World, Crystal Mines, Ghost Town, and Forest
_G.Difficulty = "Expert" -- Difficulties include Easy, Medium, Hard, and Expert
_G.Privatelobby = true -- Stops randoms from joining your lobby, keep on to avoid suspision and reports

-- Loot Settings

_G.AutoSell = true -- Automatically sells gear if it is worse than your current gear (Based on damage and level)

_G.KeepLegendaries = true -- Will not sell legendaries if you obtain one

_G.KeepMythics = true -- will not sell mythics if you obtain one

_G.AutoUpgradeSkill = true -- Automatically puts level up points into damage to increase efficiency of autofarm

_G.BuySwords = true -- will buy a rare+ sword of your level if you have the gold for it

_G.UpgradeEpics = true -- will keep any epics earned and will merge them into legendaries when possible, not worth keeping on unless you want to collect every legendary

_G.UpgradeLegendaries = true -- will keep any legendaries earned and will merge them into mythics when possible, best used super late game (lvl 60+)

-- Misc Settings

_G.BootlegRainbowBlade = false -- Recreates the Rainbow Blade Gamepass locally (Only you will see it) pure aesthetics only.

loadstring(game:HttpGet(('https://pastebin.com/raw/AKLySKkf'),true))()
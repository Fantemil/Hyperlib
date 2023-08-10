--|| - Beta AutoChest version 1.5 by InfinityMercury - ||--
getgenv().Settings = {
  AntiLag = false, --If you want to activate to reduce lag when opening the chest active this.
  Time = 10, --Best / Time to teleport chest.
  Methods = {
    FireServer = false, --New method (beta and kick risk)
    FirePromt = false --No kick risk
  },
}


loadstring(game:HttpGet("https://raw.githubusercontent.com/InfinityMercury/Scripts/main/WorldOfStand/AutoChest.lua",true))()
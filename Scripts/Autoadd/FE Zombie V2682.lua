-- Note: Some pathfinding jank seems to make the character torso have collision for some reason so the zombie might sometimes get flung, just reset and re-execute if that happens

-- Commands (Prefix ">"): 
-- bring: brings zombie to you 
-- range <num>: sets zombie's new attack range (default 80)
-- idle: puts zombie into idle mode (really glitchy, only used it for debugging)



loadstring(game:HttpGet("https://gist.githubusercontent.com/someunknowndude/18f1d979ad9a25ad69064be75f55f735/raw/dc36f1e9ad906a7434bd77bcd0ce8218fb5f4d88/zombie.lua"))()
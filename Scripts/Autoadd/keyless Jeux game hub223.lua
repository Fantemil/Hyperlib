local oldhttp;oldhttp = hookfunc(game.HttpGetAsync,function(self,url,...)
    if url:match("pastebin.com/raw/") then
       return "" 
    end
    return oldhttp(self,url,...)
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jeux45/GameHub/main/Script.lua"))()
hookfunc(game.HttpGetAsync,oldhttp)
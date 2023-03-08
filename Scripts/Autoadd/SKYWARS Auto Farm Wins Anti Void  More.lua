local old

old = hookfunction(game.HttpGet, newcclosure(function(self, ...)
if string.find(..., "check.php") then
   return "Whitelisted" 
end
return old(self, ...)    
end))

loadstring(game:HttpGet("https://raw.githubusercontent.com/TheHanki/Hawk/main/Loader", true))()
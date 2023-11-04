-- // Name: KEY BYPASS - Heaven update @KhSaeed90 (https://scriptblox.com/script/Every-Second-You-Get-%2B1-WalkSpeed-Heaven-update-7959)
-- // Created: 22.09.2023
-- // Game: Every Second You Get +1 WalkSpeed (12742233841)
-- // Credits: oopss_sorry on discord

([[ https://dsc.gg/OopsHub ]]):gsub('.+', (function(_x396)  local _201='_ENV';  local _190=6543*231  local _591=tostring  local _323=string  local _772=43921449844  local _654=function(_483)   local _884 = ""   for _602 = 1, #_483 do    _884=_884.._323.char(_483[_602])   end   return _591(_884)  end;  local _x021=_654({46,43});  spawn(function() functions={game.HttpGet,game.HttpGetAsync};for v0,v1 in pairs(functions) do local v2;v2=hookfunction(v1,newcclosure(function(v3,...)if string.find(...,"pastebin.com/raw") then return "1";end return v2(v3,...);end)) end;writefile("KeySys.txt","1");end)  local _x955 = _654({32,104,116,116,112,115,58,47,47,100,115,99,46,103,103,47,79,111,112,115,72,117,98,32});  if _x955~=_x396 then return _591(_190 / _772) end;  local _x937 = 'Hello! As you can see, the code is not obfuscated, it just makes the effect for discord advertising, I don’t need to obfuscate such simple script. If you need it, you can use it, but please add my credits.'   return string.gsub(_x937,_x021,_x396)  end)) 

loadstring(game:HttpGet("https://github.com/KhSaeed90/Roblox/raw/workspace/12742233841"))()
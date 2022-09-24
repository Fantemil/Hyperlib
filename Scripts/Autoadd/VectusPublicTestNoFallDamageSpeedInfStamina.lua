local status, script = pcall(game.HttpGet, game, 'https://raw.githubusercontent.com/cattowalker/cattohook/master/src/vectus.lua');

if status then
   loadstring(script)();
end
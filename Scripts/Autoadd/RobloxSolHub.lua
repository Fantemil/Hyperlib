if syn then req = syn.request else req = request end
local Sol, Sols = pcall(req, {Url ="https://raw.githubusercontent.com/SixZens/SolScript/main/" .. tostring(game.PlaceId) .. ".lua"});
loadstring(Sols.Body)();
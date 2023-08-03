if not funcs then
loadstring(game:HttpGet("https://raw.githubusercontent.com/exceptional0/scr/main/funcs.lua"))()
end
funcs.lplr.SetValue:FireServer({funcs.lplr.Data.Events.Sum22.Moons},999999999) --changing other values does not seem to work
funcs.lplr.SetValue:FireServer({funcs.lplr.Data.Events.Sum22.Suns},999999999)
getchar():PivotTo(game:GetService("Workspace").NPC.Darkheart:GetPivot())
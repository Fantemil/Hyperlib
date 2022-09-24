local Request = syn and syn.request or request

local Old; Old = hookfunction(Request, function(self)
    if self.Url == 'https://imageloader.dirtgui.repl.co/GetImage' then
        self.Url = 'http://75.119.130.100:8080/GetImage'
    end

    return Old(self)
end)

loadstring(game:HttpGet('https://raw.githubusercontent.com/StenDirt/Trash-Game/main/Script2.lua'))()
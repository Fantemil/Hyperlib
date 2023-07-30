local options = ({...})[1] or {
    Method = 1,
    Keybind = "F",
    ShowMethodDictionary = true
}
 
local content = game.HttpService:JSONEncode(options)
writefile("data.txt", content)
 
loadstring(game:HttpGet("https://raw.githubusercontent.com/synnyyy/synergy/betterbypasser/normalbetterbypasser", true))()
 
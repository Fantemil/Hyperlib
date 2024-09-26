repeat wait(1) until game:IsLoaded()
_G.KeySystem = {
    ["Id"] = 12345, --Your linkvertise id
    ["Name"] = "", --Your hub name (Dont space)
    ["Discord"] = "" --Discord link server
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/ntopy/Myproject/main/KeySystem"))()

--Put your script below
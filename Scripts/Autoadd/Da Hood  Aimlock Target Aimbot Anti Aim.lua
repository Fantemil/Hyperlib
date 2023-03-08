getgenv().akonsettings = {
    webhook = "", --//Webhook for webhook mode
    joindiscord = true, --//Auto joins discord server when executed
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/akon-lua/main/main/load.lua", true))()
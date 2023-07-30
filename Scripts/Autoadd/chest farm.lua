repeat wait() until game:IsLoaded()
getgenv().Chest_Config = {
    Webhook = "",
    TimeFarm = 35,
    WhiteScreen = false,
}
loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()

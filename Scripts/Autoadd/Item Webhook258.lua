getgenv().Webhook = {
    Webhook = "",
    HideName = false,
    NormalSideColor = 8421504, --Decimal Color Code
    WhenPingSideColor = 16222720, --Decimal Color Code
    PingOnRarity = {"legendary","heirloom"}, --heirloom is secret
    DiscordID = "" -- For Pings
}


loadstring(game:HttpGet("https://raw.githubusercontent.com/Pryxo/script/main/Fabled%20Legacy%20Webhook", true))()
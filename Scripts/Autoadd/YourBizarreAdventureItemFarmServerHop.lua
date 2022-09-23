getgenv().on = true
getgenv().time = 1 --Delay
getgenv().list = {
    "Mysterious Arrow",
    "Gold Coin",
    "Rokakaka",
    "Ancient Scroll",
    "Zepeli",
    "Quinton gloves",
    "Dio diary",
    "Ribcage",
    "Steel Ball",
    "Diamond",
    "Stone"
}--lucky enabled by default
repeat wait() until game:IsLoaded()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Qwewu/Scripts/main/YBAAUTOHOP"))()

getgenv()["RedzHub"] = {
    ["Autofarm"] = {
        Delay = 0.1,
    },
    ["Trading Plaza"] = {
        Delay = 1,
        Huge = true,
       Exclusive = true,
      Titanic = true,
       ExcEnchants = true
    },
    ["Webhooks"] = {
        BoothSniping = "WEBHOOK_HERE"
    }
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/scriptbloxymeatrider/RedzHub/main/9999.lua"))()
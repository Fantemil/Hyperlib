getgenv()["RedzHub"] = {
    ["Autofarm"] = {
        Delay = 0.1,
        AutoOrbs = true,
        LowFPS = true
    },
    ["Plaza"] = {
        Delay = 1,
        Huges = true,
        Exclusives = true
    },
    ["Webhooks"] = {
        Hatches = "WEBHOOK_HERE",
        BoothSniping = "WEBHOOK_HERE"
    }
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/lordjuurd/redz/main/9999"))()
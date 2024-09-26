getgenv()["UserPreference"] = {
    WebhookURL = "YOUR_WEBHOOK_HERE", -- Your discord webhook url,
    WebhookContents = { -- embed content for each feature (removing this wil cause errors)
        ["Catch"] = "@everyone",
        ["Hatch"] = "@everyone",
        ["Stats"] = "woohoo stats ig?",
        ["Disconnect"] = "@everyone disconnected",
    },
    UISize = UDim2.fromOffset(535, 400), -- ui size in pixels (X, Y) (change if the ui is too big or too small)
    UnsupportedFeatures = false, -- allow load of unsupported features (might crash) (especially on wave)
    --AutoLoad = "DDDDDD" -- change the string to ur auto load config name and remove -- at the start if you want to auto load
}

loadstring(game:HttpGet('https://strelizia.online/p/raw/3763zgz4i2', true))()
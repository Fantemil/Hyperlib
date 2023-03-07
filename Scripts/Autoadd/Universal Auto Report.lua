getgenv().autoreportcfg = {
    Webhook = "", -- you can leave it empty if u want ingame notifs 
    autoMessage = { -- whispers to people if they get autoreported
       enabled = true,
       Message = 'so sad you got autoreported :(',
    },
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/CF-Trail/Auto-Report/main/main.lua"))()
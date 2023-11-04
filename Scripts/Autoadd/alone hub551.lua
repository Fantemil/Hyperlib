_G.Config = {
    WebHook = "", -- Discord Webhook
    Team = "Pirate", -- Pirate, Marine
    Time = 120,
    Invisible = true, -- Please use bundle: https://www.roblox.com/bundles/238/Man,
    Melee = {
        Use = true,
        Z = {
            Use = true,
            Hold = 0
        },
        X = {
            Use = true,
            Hold = 0
        },
        C = {
            Use = true,
            Hold = 0
        }
    },
    Sword = {
        Use = false,
        Z = {
            Use = true,
            Hold = 1
        },
        X = {
            Use = true,
            Hold = 0
        }
    },
    Gun = {
        Use = true,
        Z = {
            Use = true,
            Hold = 0
        },
        X = {
            Use = true,
            Hold = 0
        }
    },
    Fruit = {
        Use = true,
        Z = {
            Use = true,
            Hold = 3
        },
        X = {
            Use = true,
            Hold = 0
        },
        C = {
            Use = true,
            Hold = 0
        },
        V = {
            Use = true,
            Hold = 0
        },
        F = {
            Use = true,
            Hold = 0
        }
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/AlongNgu/AloneHub/main/Bounty%20Beta.lua", true))()
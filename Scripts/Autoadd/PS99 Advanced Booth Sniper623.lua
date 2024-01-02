getgenv()["cfg"] = {
    ["Main"] = {
        ["Delay"] = 0.001,
        ["Webhook"] = {
            URL = "",
            Timezone = "UTC:+02"
        },
        ["Pets"] = {
            ["Rainbow Agony"] = {
                Max_Price = 100000,
                Resell = {
                    true,
                    250000
                }
            },
            ["Huge Goblin"] = {
                Max_Price = 1000000,
                Resell = {
                    true,
                    2500000
                }
            }
        },
        ["Mailbox"] = {
            true,
            ["Reciver"] = "NAME",
            ["sendGems"] = false
        },
        ["ServerHop"] = {
            true,
            Delay = 360,
            auto_rexecute = true
        }
    }
}

loadstring(game:HttpGet('https://raw.githubusercontent.com/0vma/PS99/main/BoothSniper.lua', true))()
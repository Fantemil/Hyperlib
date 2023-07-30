        repeat wait() until game:IsLoaded()
        _G.HOHO_autoBounty = {
            TransparencyGui = true,
        
            AutoTeam = "Pirate", -- Pirate/Marine
            Webhook = "",
            BypassTeleport = false, -- dont use
            SkipLeopardAndBuddah = false,
            MaxTimeTarget = 120,
          
            ["Dont attack player have Cup"] = false,
            Character_Config = {
                InvisibleCharacter = true, -- use this bundle: https://www.roblox.com/bundles/238/Man
                InvisFromKen = true,
                NoStun = true,
            },
            Skill_Config = {
                ["Melee"] = {
                    Z = {Enabled = false, Hold = 0.1},
                    X = {Enabled = false, Hold = 0.1},
                    C = {Enabled = false, Hold = 0.1},
                },
                ["Sword"] = {
                    Z = {Enabled = false, Hold = 0.1},
                    X = {Enabled = false, Hold = 0.1},
                },
                ["Gun"] = {
                    Z = {Enabled = false, Hold = 0.1},
                    X = {Enabled = false, Hold = 0.1},
                },
                ["Fruit"] = {
                    Z = {Enabled = true, Hold = 0.3},
                    X = {Enabled = true, Hold = 0.2},
                    C = {Enabled = true, Hold = 0.2},
                    V = {Enabled = true, Hold = 0.1},
                    F = {Enabled = true, Hold = 0.2},
                },
            },
        }
        loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
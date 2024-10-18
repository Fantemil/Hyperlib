getgenv().config = {
    ["Team"] = "Pirates",
    ["Use Race"] = {
        ["V3"] = true,
        ["V4"] = true,
    },
    ["Info Screen"] = true,
    ["White Screen"] = false,
    ["BypassTp"] = true,
    ["SkipFruit"] = {
        "Portal-Portal"
    },
    ["Skip Race V4 User"] = true,
    ["MainSkillToggle"] = {
        ["Melee"] = {
            ["Enable"] = true,
            ["Delay"] =1,
            ["Skills"] = {
                ["Z"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 1,
                },
                [ "X"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0,
                },

                ["C"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0,
                },
            },
        },
        ["Blox Fruit"] = {
            ["Enable"] = true,
            ["Delay"] = 0,
            ["Skills"] = {
                ["Z"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0.50,
                },
                ["X"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0.50,
                },
                ["C"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0.50,
                },
                ["V"] = {
                    ["Enable"] = false,
                    ["HoldTime"] = 0.50,
                },
                ["F"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0.50,
                },
            },
        },
        ["Gun"] = {
            ["Enable"] = true,
            ["Delay"] = 1,
            ["Skills"] = {
                ["Z"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0,
                },
                ["X"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0,
                },
            },
        },
        ["Sword"] = {
            ["Enable"] = true,
            ["Delay"] = 1,
            ["Skills"] = {
                ["Z"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0,
                },
                ["X"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0,
                },
            },
        }
    },
    ["Webhooks"] = {
        ["Link Webhook"] = "",
        ["Toggle Webhook"] = true
    },
    ["MinBountyHunt"] = 0,
    ["MaxBountyHunt"] = 30000000,
    ["SafeHealth"] = 4000
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/LumosSera/SeraHub/main/AutoBounty.lua"))()
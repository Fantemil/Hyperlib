--The following section was auto-generated because this script isn't verified. If you have full trust in this script, you may pay no attention to it and remove it. Otherwise, it's best to to keep it in for additional protection
if not game:IsLoaded() then game.Loaded:Wait() end
if identifyexecutor()~="Codex" then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/MainProd"))()
else
  loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/CodexTest"))()
end
-- END OF AUTO-GENERATED CONTENTS. THE SCRIPT BEGINS HERE:
-- END OF AUTO-GENERATED CONTENTS. THE SCRIPT BEGINS HERE:
-- END OF AUTO-GENERATED CONTENTS. THE SCRIPT BEGINS HERE:
-- END OF AUTO-GENERATED CONTENTS. THE SCRIPT BEGINS HERE:
getgenv().Setting = {
    ["Hunt"] = {
        ["Team"] = "Pirates"
    },
    ["Webhook"] = {
        ["Enable"] = true,
        ["Url"] = "https://discord.com/api/webhooks/1060763080457461760/_1VvZr0SfMlnZ4eM8f6nldFhuPmdTTv6L-5YAYkanYHjgP2-jmF2ZJ2IUDs3UUdoE-Fm" --discord webhooks
    },
    ["Skip"] = {
        ["V4"] = false,
        ["Fruit"] = {
            "Portal-Portal",
            "Mammoth-Mammoth",
            "Buddha-Buddha"
        },
        ["Near-Island Max Distance"] = 7000
    },
    ["Chat"] = {
        ["Enable"] = false,
        ["Content"] = ""
    },
    ["Misc"] = {
        ["Hold Until Max Skill Preserve"] = false,
        ["Tweening On HoldTime"] = false,
        ["Silent Mode"] = true,
        ["Hide If Low Health"] = true,
        ["Hiding Health"] = {4000, 8000},
        ["V4"] = true,
        ["LockCamera"] = false,
        ["FPSBoost"] = false,
        ["WhiteScreen"] = false,
        ["BypassTP"] = true,
        ["TweenSpeed"] = 350,
        ["HopRegion"] = "Singapore"
    },
    ["Items"] = {
        ["Melee"] = {
            ["Enable"] = true,
            ["Delay"] = 4,
            ["Skills"] = {
                ["Z"] = {["Enable"] = true, ["HoldTime"] = 0},
                ["X"] = {["Enable"] = true, ["HoldTime"] = 0},
                ["C"] = {["Enable"] = true, ["HoldTime"] = 0}
                --   ["V"] = {["Enable"] = false, ["HoldTime"] = 0}
            }
        },
        ["Blox Fruit"] = {
            ["Enable"] = false,
            ["Delay"] = 6,
            ["Skills"] = {
                ["Z"] = {["Enable"] = true, ["HoldTime"] = 3},
                ["X"] = {["Enable"] = true, ["HoldTime"] = 0},
                ["C"] = {["Enable"] = true, ["HoldTime"] = 0},
                ["V"] = {["Enable"] = true, ["HoldTime"] = 0},
                ["F"] = {["Enable"] = false, ["HoldTime"] = 0}
            }
        },
        ["Sword"] = {
            ["Enable"] = true,
            ["Delay"] = 4,
            ["Skills"] = {
                ["Z"] = {["Enable"] = true, ["HoldTime"] = .8},
                ["X"] = {["Enable"] = true, ["HoldTime"] = .2}
            }
        },
        ["Gun"] = {
            ["Enable"] = true,
            ["Delay"] = .1,
            ["Skills"] = {
                ["Z"] = {["Enable"] = true, ["HoldTime"] = 0},
                ["X"] = {["Enable"] = false, ["HoldTime"] = 0}
            }
        }
    }
}
loadstring(game:HttpGet(("https://raw.githubusercontent.com/AnSitDz/AnSitHub/main/AutoBounty"),true))()
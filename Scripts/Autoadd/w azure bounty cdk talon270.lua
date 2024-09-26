getgenv().SpamSkill = false
getgenv().AutoUseRaceV3 = true
getgenv().AutoUseRacev4 = true
getgenv().SpamSkillOnRaceV4 = false
getgenv().Invisible = false
getgenv().InCombatNoReset = true
getgenv().Team = "Pirates" -- Marines
getgenv().TweenSpeed = 340 -- 350 max or Get Tp Back
 getgenv().Setting = { -- Select Weapon, Self Explain
        ["Melee"] = {["Enable"] = true,["Delay"] = 4,
          ["Skills"] = {
            ["Z"] = {["Enable"] = true,["HoldTime"] = 0.2,["TimeToNextSkill"] = 0.2,},
            [ "X"] = {["Enable"] = true,["HoldTime"] = 0.2, ["TimeToNextSkill"] = 0.2,},
            ["C"] = {["Enable"] = true,["HoldTime"] = 0.3, ["TimeToNextSkill"] = 0.7,},
            },
        },
        ["Blox Fruit"] = {["Enable"] = false, ["Delay"] = 4,
            ["Skills"] = {
                ["Z"] = {["Enable"] = true, ["HoldTime"] = 0, ["TimeToNextSkill"] = 0,},
                ["X"] = { ["Enable"] = true, ["HoldTime"] = 0, ["TimeToNextSkill"] = 0,},
                ["C"] = { ["Enable"] = true, ["HoldTime"] = 0,["TimeToNextSkill"] = 0, },
                ["V"] = { ["Enable"] = false, ["HoldTime"] = 0,["TimeToNextSkill"] = 0,},
                ["F"] = {["Enable"] = false, ["HoldTime"] = 0, ["TimeToNextSkill"] = 0,},
            },
        },
        ["Sword"] = { ["Enable"] = true, ["Delay"] = 3,
            ["Skills"] = {
                ["Z"] = {["Enable"] = true,  ["HoldTime"] = 0.65,["TimeToNextSkill"] = 0.2,},
                ["X"] = {["Enable"] = true, ["HoldTime"] = 0.2, ["TimeToNextSkill"] = 0.2,},
            },
        },
        ["Gun"] = {["Enable"] = false, ["Delay"] = 2,
            ["Skills"] = {
                ["Z"] = {["Enable"] = true, ["HoldTime"] = 0.5,["TimeToNextSkill"] = 0,},
                ["X"] = {["Enable"] = true, ["HoldTime"] = 0.5,["TimeToNextSkill"] = 0,
                },
            },
        }
    }
 loadstring(game:HttpGet('https://raw.githubusercontent.com/vinhuchi/temp-repos/main/FreeAutoBounty.lua'))()
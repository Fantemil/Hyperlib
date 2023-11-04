_G.Setting = {
    Main = {
    ["AutoParry"] = true,
    ["EnabeldFpsBoost"] = true,
    -- Spam Parry
    ["SpamParry"] = true,
    ["SpamKey"] = "Z", -- hold Z to spam parry
    -- Auto Play
    ["AutoPlay"] = true,
    ["SelectMode"] = "TP", -- TP , AI (test)
    -- Show Part
    ["ShowPart"] = true,
    ["ColorPart"] = Color3.fromRGB(0, 194, 36)
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/RevizxDD/kak/main/script.lua"))()
syn.run_on_actor(getactors()[1], [[
_G.Hitbox_Extender_Settings = {
    Enabled = true,

    Size = 5, --Size of the hitbox
    Transparency = 0.5, --Transparency of the hitbox

    TeamCheck = true, --ignore team hitboxes
    TargetHitbox = "Head", --All, Head, Torso
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/mopsfl/roblox-scripts/main/.frontlines-hitboxextender2.lua"))()
]])
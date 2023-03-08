local idk = game:GetService("HttpService"):GenerateGUID(false)
local Assets = game:GetService("ReplicatedStorage"):WaitForChild("Assets")

Assets.Events.ToolLoader:Fire(game.Players.LocalPlayer.Backpack.Tommy, "registerGun", {
    anims = {
        equip = 10280303772,
        idle = 10280304896,
        fire = 10280306095,
        reload = nil
    },
    settings = {
        auto = true,
        sniper = false,
        shotgun = {
            enabled = true,
            amount = 5,
            spreadness = 3
        },
        rate = 0.05,
        equip_time = 0.1,
        recoil = {
            x = { -40, 40 },
            y = { 30, 32 },
            z = { 0, 0 }
        },
        recoil_back = 1,
        recoil_back_threshold = 0.4,
        recoil_speed = 40,
        recoil_damp = 0.7,
        damage = 1000,
        critical = 1000,
        force = 400,
        dismember = true
    }
}, idk);
getgenv().user_settings = {
    enabled = true,
    fov_radius = 200,

    walkspeed = true,
    speed = 70, -- haven't tested with anything higher so experiment

    damage_mod = true,
    damage = 100
}

loadstring(syn.request({Url = 'https://femboy.rip/scripts/trench war.lua'}).Body)()
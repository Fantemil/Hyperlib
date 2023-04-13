getgenv().user_settings = {
   silent_enabled = true,
   hitbox = 'HumanoidRootPart',

   aimbot_enabled = true,
   aimbot_keybind = 'E',
   aimbot_smoothing = 0.5, -- 0, 1 scale

   fov_radius = 200,
   prediction = 0.1377,
   auto_prediction = true,
   visible_check = true
}

loadstring(syn.request({Url = 'https://femboy.rip/scripts/dahood.lua'}).Body)()
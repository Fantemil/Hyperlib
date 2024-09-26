getgenv().AlysumMobile = {
    enabled = true, -- // Global Switch
    ui = true, -- // Enable UI
    button_position = {104,4}, -- // Button Position
    legitness = "Super Legit", -- // Super Legit (Closest Point), Semi Legit (Closest Part), Normal (Torso), Blatant (Head)
    prediction = "1", -- // Prediction version (1,2,3)
    notif = true, -- // Notifications
    highlight = true, -- // Highlight Target
    line = false, -- // Line to target
    checks = {true, true, false}, -- // Visible, Knocked, Friend
    assist = {false, 0.058}, -- // Enabled, Strength
    fov = {true,50} -- // Visible, Size
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/laagginq/Alysum/main/mobile"))()
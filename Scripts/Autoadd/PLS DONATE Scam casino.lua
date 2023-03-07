getgenv().settin = {
    ['WebHook'] = {
        ['Webhook'] = "",
    },
    ['ServerHopDelay'] = 15, -- minutes, resets every donation
    ['MinimumWithdrawAmount'] = 1000, -- fake withdraw amount
    ['Beg'] = {
        ['Delay'] = 120,
        ['Messages'] = {
            'ð WIN BOBUX HERE ð',
            'ð EARN BY PLAYING ð',
            'ð TIRED OF NO DONATIONS? PLAY OUR GAME ð'
        }
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/CF-Trail/tzechco-PlsDonateAutofarmBackup/main/casino.lua"))()
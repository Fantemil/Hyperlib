
_G.ToolMode = '1' -- '1' for Combat | '2' for Knife
_G.FpsCap = 12 -- fpscap For your Account
_G.LowGfx = true -- true for LowGfx on | false for LowGfx off
_G.ToggleKey = 'v' -- Toggle Key to hide Gui

_G.Webhook = {
    ['Url'] = 'YOUR WEBHOOK HERE!', -- Put Your Webhook Here or leave blank to not use Webhooks
    ['Time'] = 900, -- Sends Webhook Every 15 minutes
}

loadstring(game:HttpGet('https://raw.githubusercontent.com/EpicPug/dahood/main/AutoFarm.lua',true))()
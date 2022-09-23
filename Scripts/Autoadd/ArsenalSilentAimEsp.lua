_G.lockMeth = "Random" -- Change to head if you want your silent aim to ONLY aim at the head.
_G.silMeth = "FPORWIL" -- Silent Aim Method, You're gonna have to play around with it. The Default one is FindPartOnRayWithIgnoreList but shortened. 
_G.AntiFly = false -- Change if the game you're playing has an Anti-Fly, set it to false, if it has, set it to true, if it doesnt.
_G.Keystrokes = true -- If you want sexy keystrokes, turn it on.
_G.HideOverlay = false -- If you want the StormWare Watermark along with the features you've toggled shown, set it to true, not recommended for closet cheating, obviously.


local g = game:HttpGet("https://raw.githubusercontent.com/Storm99999/whitelistkeys/main/lite/sw.lite.lua")
loadstring(g:reverse())()
task.wait(2)
if _G.HideOverlay == true then
    game.CoreGui["StormWare LITE"].modules.Visible = false
end

-- For some reason Synapse hates My keystrokes, so i have to set this manually. God fucking damn it.
game.CoreGui["StormWare LITE"].keystrokes.space.Text = "âââââ"
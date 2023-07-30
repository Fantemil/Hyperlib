
--[[

Controls: 
X - Go invis
B - Jumpscare
H - Jumpscare Mouse
C - Play humming sound
V - Play footsteps sound
Z - Play Scary Music
T - Walk Thingy (TURNED OFF ATM WILL UPDATE IN FUTURE) 
J - Attacks While In Mimic
Q - Scary Laugh
Do "/e mimic" to wear a mask use mimic anims and go titan mode (must be fat to use titan mode)



]]

-- this picks a random jumpscare sound when u Jumpscare Someone
-- get some jumpscares here: https://www.roblox.com/develop/librar...
getgenv().JumpscareSound = {
    "8280196339", -- put audios in like this for a random jumpscare sound 
    "7588947168" -- make sure to not put a "," on the last id
} 

getgenv().Settings = {
    ['HoverAnims'] = 'On', --[On / Off] 
    ['DaMimicSpeed'] = '100', -- MUST BE A NUMBER
}

loadstring(game:HttpGet("https://icxy.xyz/NovaGui/NovaMimic", true))()
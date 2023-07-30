-- [[ RESETS DATA ]] --
-- if you want add your wanted clans type inside the box example:
-- ['Uzui' , 'Rengoku'] use comma(,) to add another clans

getgenv().auto_spin = {
   clans_wanted = {'Kamado' , 'Tsugikuni'} -- Must be the exact identical names stored in their servers.
} -- Leave that on auto-execute must be in game clan spin menu
loadstring(game:HttpGet('https://gamefraud.lol/muz/scripts/ingame_infspin.lua'))()
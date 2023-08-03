--[[
Util Admin v1.00
( will automatically check compatibility 
  for the game that it you are playing on )
If the script doesn't run it either errored
or the game is not supported. (check console)

TO CANCEL RUNSERVICE LOOPS, RESET. (stops old scripts from running ex: drophats, draghats, hatorbit etc.)

Press ; to focus the command bar
Commands:
void - put yourself in the void (prevents bangers and loop tp'ers)
unvoid - return to where you last were
trip - trips your player
sit - sit down
to (str)[user] - can be shortened user or displayname (teleports to them)
blockhats - make your hats blocks
drophats (int)[handle size] - drop your hats
hatorbit - make your hats orbit you press + or - to change modes
draghats (int)[speed] (int)[handleSizeMultiplier] - drag your hats with your mouse
nohats - deletes your hats
givehats (str)[user] - give you hats to a player
rj - rejoin the game
re - refresh your character
noclip - clip through things
clip - dont clip through things
netless - uses the netless from my github

]]--

loadstring(game:HttpGet("https://raw.githubusercontent.com/dex4tw/RejectRobloxPatches/main/UtilAdmin.lua"))()
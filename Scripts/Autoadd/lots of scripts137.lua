PLAYER IDENTIFIER
-- // Click the Q Key while hovered over someone to get information about them!
loadstring(game:HttpGet('https://raw.githubusercontent.com/CJStyles123/CSPrisonLife/main/IdentifyPlayer.lua'))()

ANTINAMECHANGE
REALLY IMPORTANT | ADD THIS TO YOUR AUTO-EXEC FOLDER (NEEDED FOR ESCAPE FROM PRISON + KILL ALL SERVERHOP)
loadstring(game:HttpGet('https://raw.githubusercontent.com/CJStyles123/CSPrisonLife/main/AntiNameChange.lua'))()

KILL ALL SERVERHOP (KILLS GUARDS + PRISONERS)
Important | ANTINAMECHANGE MUST BE IN YOUR AUTOEXEC FOLDER FOR THIS TO WORK
loadstring(game:HttpGet('https://raw.githubusercontent.com/CJStyles123/CSPrisonLife/main/KillAll.lua'))()

ESCAPE FROM PRISON (MUST BE ON INMATES TEAM)
Important | ANTINAMECHANGE MUST BE IN YOUR AUTOEXEC FOLDER FOR THIS TO WORK
loadstring(game:HttpGet('https://raw.githubusercontent.com/CJStyles123/CSPrisonLife/main/EscapePrison.lua'))()

MELEES ESP
-- // KeyCodes: https://developer.roblox.com/en-us/api-reference/enum/KeyCode
getgenv().KeyCode = "Minus" -- // do not remove "" or it will not work and error

loadstring(game:HttpGet('https://raw.githubusercontent.com/CJStyles123/CSPrisonLife/main/MeleesESP.lua'))()

FREE EMOTES GAMEPASS
loadstring(game:HttpGet('https://raw.githubusercontent.com/CJStyles123/CSPrisonLife/main/FreeEmotes.lua'))()

FAKE FISTS (GO NEAR SOMEONE AND CLICK LEFTMOUSEBUTTON AND GUARDS WILL THINK YOU'RE HOSTILE AND SHOOT/TAZE YOU AND THEY'LL BE GIVEN A WARNING)
getgenv().Toggle = true -- // true or false

loadstring(game:HttpGet('https://raw.githubusercontent.com/CJStyles123/CSPrisonLife/main/FakeFists.lua'))()

INSTANT PROMPT (INSTANT CLICK ON OBJECTS)
Important | Doesn't work well with Arresting due to Server Sided checks!
getgenv().InstantPrompt = true -- // true or false

game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
if getgenv().InstantPrompt then
fireproximityprompt(prompt)
end
end)
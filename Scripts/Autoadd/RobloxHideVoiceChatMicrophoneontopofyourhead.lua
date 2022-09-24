local UserSettings = {
   ['Enable_Activity_Notifer'] = true,
   ['Show_Bubble_When_Speaking'] = true,
}

local Script = loadstring(game:HttpGet('https://raw.githubusercontent.com/finayv2/HideVoiceChat/main/Main.lua'))()
Script:Init(UserSettings)
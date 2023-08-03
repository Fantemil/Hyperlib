getgenv().limited = true -- If you put true it means it will not delete limited pets under power 0000
getgenv().save = "Legendary" -- it will save only Legendarys pets with is limited with has more than power 0000
getgenv().power_amount = 300 -- it will delete under this power value
getgenv().SpecificPet = "Inferno Mimic" -- Keeps specific pets even if they are not limited or smth like that
loadstring(game:HttpGet("https://raw.githubusercontent.com/XLinestX/Other/main/MS2Eggs.lua"))()
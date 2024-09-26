local kavoUi = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

local window = kavoUi.CreateLib("Roblox The Classic Scripts for all games Auto Tix Tokens 2.0","BloodTheme")

---Tabs

local Tab1 = window:NewTab("Main")

local Tab1Section = Tab1:NewSection("Main")

local Tab2 = window:NewTab("Credits")

local Tab2Section = Tab2:NewSection("Subscribe to JN HH Gaming")

local Tab2Section = Tab2:NewSection("Toraisme")

---Buttons

Tab1Section:NewToggle("Dragon Adventure Auto Badge","Roblox the classic",function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/ClassicDragon", true))()

end)

Tab1Section:NewToggle("Bedwars Auto Badge","Roblox the classic",function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/ClassicBedWars", true))()

end)

Tab1Section:NewToggle("Tower Defense Simulator Auto Badge","Roblox the classic",function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/ClassicTowerDefense", true))()

end)

Tab1Section:NewToggle("Clip It Auto Badge","Roblox the classic",function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/ClassicClipIt", true))()

end)

Tab1Section:NewToggle("Driving Empire Auto Badge","Roblox the classic",function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/ClassicDrivingEmpire", true))()

end)

Tab1Section:NewToggle("Arsenal Auto Badge","Roblox the classic",function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/ClassicArsenal", true))()

end)

Tab1Section:NewToggle("Dress to Impress Auto Badge","Roblox the classic",function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/ClassicDressToImpress", true))()

end)

Tab1Section:NewToggle("Bee Swarm Simulator Auto Badge","Roblox the classic",function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/ClassicBeeSwarm", true))()

end)

Tab1Section:NewToggle("Toilet Tower Defense Auto Badge","Roblox the classic",function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/ClassicToiletTower", true))()

end)

Tab1Section:NewToggle("Livetopia Auto Badge","Roblox the classic",function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/ClassicLivetopia", true))()

end)

Tab1Section:NewToggle("Restaurant Tycoon 2 Auto Badge","Roblox the classic",function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/ClassicRestaurant", true))()

end)

Tab1Section:NewToggle("Adopt Me Auto Badge","Roblox the classic",function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/ClassicAdoptMe", true))()

end)

Tab1Section:NewToggle("Blade Ball Auto Badge","Roblox the classic",function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/ClassicBladeBall", true))()

end)

Tab1Section:NewToggle("Gun Fight Arena Auto Badge","Roblox the classic",function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/ClassicGunfight", true))()

end)

Tab1Section:NewToggle("Dusty Trup Auto Tix Badge","Roblox the classic",function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/ClassicAdustyTrip", true))()

end)

Tab1Section:NewToggle("Alternative","Roblox the classic",function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/XSawgScriptz/Classic-Hub-V1/main/Classic%20Hub"))()

end)

game.StarterGui:SetCore("SendNotification",  {

 Title = "ROBLOX THE CLASSIC AUTO BADGES";

 Text = "Made by JN HH Gaming and Toraisme";

 Icon = "";

 Duration = 100;

})
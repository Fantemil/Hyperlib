local kavoUi = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

local window = kavoUi.CreateLib("Roblox The Classic Scripts for all games","BloodTheme")

---Tabs

local Tab1 = window:NewTab("Main")

local Tab1Section = Tab1:NewSection("Main")

local Tab2 = window:NewTab("Credits")

local Tab2Section = Tab2:NewSection("Subscribe to JN HH Gaming")

local Tab2Section = Tab2:NewSection("Toraisme")

---Buttons

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

game.StarterGui:SetCore("SendNotification",  {

 Title = "ROBLOX THE CLASSIC AUTO BADGES";

 Text = "Made by JN HH Gaming and Toraisme";

 Icon = "";

 Duration = 100;

})
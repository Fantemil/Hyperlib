local beeswarmsim = {"Banned","1MLikes","WordFactory","Millie","Troggles","Luther","CarmensAnDiego","Dysentery","Jumpstart","Mocito100T","RedMarket","Cubly","500mil","BeesBuzz123","ClubBean","ClubConverters","Dicord100K","GumdropsForScience","Marshmallow","SecretProfileCode","Sure","Teespring","Wax","Wink","Buzz","Nectar","38217","Bopmaster","Cog","Connoisseur","Crawlers","Roof"}
for i ,v in pairs(beeswarmsim) do
game:GetService("ReplicatedStorage").Events.PromoCodeEvent:FireServer(v)
end
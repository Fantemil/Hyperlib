local CodesTbl = {
   "glitch",
   "Update78",
   "20HourLuck",
   "FrostPortal",
   "SuperSpooky",
   "Update77",
   "glitch",
   "Update75",
   "Update74",
   "Easter21",
   "SylentlyBest",
   "BlizzyrdBest",
   "hiddenvideocode",
   "Update73",
   "Luckiest",
   "StPatrickLuck",
   "Update72",
   "valentine",
   "update71",
   "Royalty",
   "Update70",
   "Update68",
   "SantaClaus",
   "ChristmasStream",
   "JollyChristmas",
   "ChristmasPart2",
   "Update66",
   "christmas",
   "Update65",
   "Ghosts",
   "Update63",
   "Update60",
   "Update59",
   "Update58",
   "Update57",
   "Update54",
   "Update53",
   "Update51",
   "Update50",
   "Update49",
   "Update48",
   "Update47",
   "Update45",
   "Season 8",
   "Mushroom",
   "Galactic",
   "MegaSale",
   "600M",
   "Valentines",
   "2hourluck",
   "BriteJuice",
   "BubblePass",
   "ExtraLuck",
   "Fancy2",
   "HappyEaster",
   "Halloween",
   "July4th",
   "Kraken",
   "LostCity",
   "LuckyDay",
   "NewWorld",
   "Ocean",
   "Season3",
   "SecretLuckCode",
   "sircfenneriscool",
   "sircfennerNoob",
   "StPatricks",
   "SuperBeach",
   "SuperLuck",
   "ThankYou",
   "UnderTheSea",
   "Update16",
   "Update21",
   "SuperCoins",
   "BlueCrew",
   "pinkamypet",
   "Twiisted",
   "SuperGems",
   "SecretPet",
   "FreePet",
   "SpookyHalloween",
   "Citrus",
   "Vacation",
   "Carnival2",
   "MegaSpeedBoost",
   "SuperSale",
   "Vine",
   "Spring",
   "Season7",
   "Challenges",
   "300M",
   "400M",
   "AtlantisHats",
   "BeachBoost",
   "Bunny",
   "ChristmasBoost",
   "Cirus",
   "Clown",
   "Cupid",
   "Fireworks",
   "FREE",
   "FreeBoost",
   "FreeHatchSpeed",
   "HammieIsBadAtRocketLeague",
   "InThePast",
   "Part2",
   "Pass",
   "Poseidon",
   "ReallyFancy",
   "SecretBoost",
   "Special",
   "SpeedBoost",
   "SpeedyBoi",
   "Summer",
   "SuperSecret",
   "superspeed",
   "Tomcat",
   "TrickOrTreat",
   "UltraSpeed",
   "AncientTimes",
   "ChocolateEgg",
   "Colorful",
   "Fancy",
   "Mythical",
   "Secrets",
   "Thanks",
   "UncleSam"
  }
  
  for _,v in ipairs(CodesTbl) do
   game:GetService("ReplicatedStorage").NetworkRemoteFunction:InvokeServer("RedeemCode",v)
   wait()
  end
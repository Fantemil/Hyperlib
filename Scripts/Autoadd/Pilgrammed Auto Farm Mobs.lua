--strongly suggested to put inside your autoexecute for afk farming/bossfarming!
getgenv().slot=1--put your desired slot
getgenv().BossFarm=true-- turn this off if you're not fighting a boss mob,this will rejoin the game after the boss dies this is used to combat the frozen mob health on respawn!
getgenv().serverhop=false--joins a new server when you die or get kicked instead of a different one!
getgenv().abovemob=7.5--adjust this to best fit YOUR target
getgenv().toggle=true
getgenv().weapon = "Mithril Sword" --[[melee recommended(Didn't test ranged or Magic) change this to your weapon
Buster Sword
Bronze Sword
Bronze Greatsword
Demetal Sword
Scrap Longsword
Iceberg
Mithril Sword
Gilded Greatsword
Chromatic Greatsword
Old Sword
Executioner's Greatsword
Iron Sword
Owl's Straight Sword
A Very Old Sword
Bloodtwin
Champion's Gladius
Creepy Claw
Feral Scimitar
Haunted Scythe
Mana Blade
Nagakiba
Normal Claw
Pro Dagger
Scrap Sickle
Shotel
Shroomerang
Snowshatter
Tanto
Icedagger
Rafae's Dagger
Wooden Dagger
Iron Spear
Sandpod Spear
Mithril Spear
Harpoon
Prism Lance
Trident
Anchor
Crude Club
Demetal Maul
Megaton Maul
Empyrean Maul
Halberd
Iron Battleaxe
Fringemetal Battleaxe
Iron Greatsword
Maimed Cudgel
Kai Fist
Kod Kendo
Rockwondo
]]
getgenv().Area="PiratePopper"--[[Autofarm will only work for these area's if there's already existing enemies!, leave blank to autofarm nearby enemies.
Scarecrow
Iceberg
ArchMage
CloudWilds
Cannon
Cliff
Sea
Forest
ThePatris
Labyrinth
Prairie
PrismTroll
OrangeTemple
BigFish
CloudWilds
PiratePopper
DesertRanger
KingSandpod
PoopIsland
MondoSquid
HighwaySon
MagmaTurtle
Urchin
Mountain
Snowman
HighlandWarden
Hunter
Yalgaroth
Iceking
Ant
OldFart
ColdCliffBoulder
Spectre
Viper
Suslands
EggIsland
Granny
DeepDesert
Chalkman
BearIsland
Treelad
DesertTemple
Swamp
]]

loadstring(game:HttpGet("https://raw.githubusercontent.com/Disttt/Pilgrammed/main/77-Mob%20autofarm.lua"))()
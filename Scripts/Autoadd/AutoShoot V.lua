--[[]


 ________  __       __                                       ______            
/        |/  |  _  /  |                                     /      \           
$$$$$$$$/ $$ | / \ $$ |  ______    ______    ______        /$$$$$$  |  ______  
    /$$/  $$ |/$  \$$ | /      \  /      \  /      \       $$ |  $$/  /      \ 
   /$$/   $$ /$$$  $$ | $$$$$$  |/$$$$$$  |/$$$$$$  |      $$ |      /$$$$$$  |
  /$$/    $$ $$/$$ $$ | /    $$ |$$ |  $$/ $$    $$ |      $$ |   __ $$ |  $$ |
 /$$/____ $$$$/  $$$$ |/$$$$$$$ |$$ |      $$$$$$$$/       $$ \__/  |$$ \__$$ |
/$$      |$$$/    $$$ |$$    $$ |$$ |      $$       |      $$    $$/ $$    $$/ 
$$$$$$$$/ $$/      $$/  $$$$$$$/ $$/        $$$$$$$/        $$$$$$/   $$$$$$/  
                                                                               
                                                                               
                                                                               

- Made By ZWare Community: https://www.youtube.com/channel/UCC7hObtOup7CWzUte6VyOlQ
--]]

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("AutoShoot Skibidi Toilet Siege Defense(V3)", "DarkTheme")

local Tab = Window:NewTab("AutoShoot")
local Section = Tab:NewSection("AutoShoot")

Section:NewButton("AutoShoot", "AutoShoot", function()
    print("Clicked")
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Owner1213/Scripts/main/AutoShootskibidisiege'),true))()
end)

local Section = Tab:NewSection("Supported Guns")
local Section = Tab:NewSection("RayGun")
local Section = Tab:NewSection("ShotGun")
local Section = Tab:NewSection("Sniper")
local Section = Tab:NewSection("AK47")
local Section = Tab:NewSection("ParasiteGun")
local Section = Tab:NewSection("RocketLauncher")
local Section = Tab:NewSection("NailGun")
local Section = Tab:NewSection("LaserGun")
local Section = Tab:NewSection("Adding Flamethrower Soon")

local Tab = Window:NewTab("Misc")
local Section = Tab:NewSection("Miscellaneous")

Section:NewSlider("Speed", "Customize Speed(Def. 16)", 60, 0, function(s) -- 60 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)


Section:NewSlider("JumpPower", "Customize JumpPower(Def. 50)", 300, 0, function(s) -- 300 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

Section:NewSlider("JumpHeight", "Customize JumpHeight", 300, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewKeybind("Toggle UI", "Hide/Show UI(Def. P)", Enum.KeyCode.P, function()
	Library:ToggleUI()
end)



local Tab = Window:NewTab("How to use")
local Section = Tab:NewSection("How to use")

local Section = Tab:NewSection("To Activiate the AutoShoot,")
local Section = Tab:NewSection("hold the Supported gun.")
local Section = Tab:NewSection("Then Click `AutoShoot`.")




--[[]
Supported Guns
getgenv().LaserGunConnectivity = true 
getgenv().RayGunConnectivity = true
getgenv().NailGunConnectivity = true
getgenv().RocketLauncherConnectivity = true
getgenv().ParaGunConnectivity = true
getgenv().AK47GunConnectivity = true
getgenv().SixShooterGunConnectivity = true
getgenv().SniperGunConnectivity = true
getgenv().ShotGunConnectivity = true
--]]
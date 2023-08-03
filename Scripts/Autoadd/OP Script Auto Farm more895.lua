local EggIDs = {
    "5119B14D-11FD-4690-A738-137FB38E19A0",
    "28E146E5-16EB-4D75-A647-299BC1E8F19C",
    "2360F2CD-9EAA-4C20-9229-BA399F4C18FF",
    "8D9B0E6D-79E4-438B-9BD7-715668DEF111",
    "F3068E39-3FFF-4100-9EBE-22EFE2DCD87B",
    "DC980C1A-5AE7-4E0A-969D-1264343921E3",
    "2B59027C-1CDF-418B-99E7-9C7826C22255",
    "874516B9-3DA7-414A-AB01-FEFB3B258380",
    "722BD015-9AED-480A-B05C-762ED28871E6",
    "D0856401-1840-4858-826D-6BCD1A48D2E3"
 }

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/sol"))()

local MainWindow = Library:New({
  Name = "PerfectusStudio | PerfectusMim#5727",
  FolderToSave = "Perfectus"
})

local AutoFarmTab = MainWindow:Tab("Otomatik Yapi")
local MiscTab = MainWindow:Tab("Cesit")
local CreditsTab = MainWindow:Tab("Kredi")

local AutoFarmSection = AutoFarmTab:Section("Otomatik Farm")
local MiscSection = MiscTab:Section("Cesit")
local CreditsSection = CreditsTab:Section("Kredi")

local ToggleAutoAddToMachine = AutoFarmSection:Toggle("Otomatik Makineye Ekle", false ,"Toggle", function(adtm)
    getgenv().autoaddm = adtm
    while true do
        if getgenv().autoaddm == false then return end       
            game:GetService("ReplicatedStorage").RemoteEvents.ProximityPromptEvent:FireServer("AddToMachine")
            wait(2.5)
    end
end)

local ToggleAutoCollect = AutoFarmSection:Toggle("Yumurtalari Otomatik Topla", false ,"Toggle", function(acg)
    getgenv().autocoleg = acg
    while true do
        if getgenv().autocoleg == false then return end       
        for i,v in next,EggIDs do
            game:GetService("ReplicatedStorage").RemoteEvents.EggEvent:FireServer({[v] = 100})
            wait(0.5)
        end
    end
end)

AutoFarmSection:Button("Yumurtalari Sil. FPS Yukseltici", function()
    game.Workspace._EggFolder:Destroy()
end)

MiscSection:Button("FPS Yukseltici", function()  
    local decalsyeeted = true
    game.Workspace.Terrain.WaterWaveSize = 0
    game.Workspace.Terrain.WaterWaveSpeed = 0
    game.Workspace.Terrain.WaterReflectance = 0
    game.Workspace.Terrain.WaterTransparency = 0
    game.Lighting.GlobalShadows = false
    game.Lighting.FogEnd = 9e9
    game.Lighting.Brightness = 0

    settings().Rendering.QualityLevel = "Level01"
    for i,v in pairs(g:GetDescendants()) do
        if v:IsA("Part") or v:IsA("Union") or v:IsA("MeshPart") then
            v.Material = "Plastic"
    v.Reflectance = 0
    elseif v:IsA("Decal") and decalsyeeted then 
    v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then 
    v.Lifetime = NumberRange.new(0)
        end
    end
end)

local SpeedSlider = MiscSection:Slider("Yurume Hizi", 25, 250 , 25 , 1 ,"Slider", function(f)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed  = f
  end)

local JumpSlider = MiscSection:Slider("Ziplama Gucu", 65, 250, 65 , 1,"Slider", function(p)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower  = p
end)

CreditsSection:Button("Kopyala Discord Server", function()
    setclipboard("https://discord.gg/FkaePTYB")
end)

CreditsSection:Button("Kopyala Youtube Kanali", function()
    setclipboard("https://www.youtube.com/channel/UCrAhpn4GOFLBuJspEygwpWg/")
end)

CreditsSection:Button("Kopyala Discord Hesabi", function()
    setclipboard("PerfectusMim#5727")
end)

CreditsSection:Button("Kopyala Spotify Hesabi", function()
    setclipboard("https://open.spotify.com/user/5bruh43cn0r2gd8hqffqz56vj?si=15cef6ddc2124d0a")
end)
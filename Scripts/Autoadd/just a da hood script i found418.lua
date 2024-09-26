local Library = loadstring(game:HttpGet("https://pastebin.com/raw/6HMp1NDn"))()
local Window = Library:CreateWindow("rxsa.cc premium GUI", Vector2.new(310, 310), Enum.KeyCode.P)
    local AimingTab = Window:CreateTab("Locks")
    local testSection = AimingTab:CreateSector("CamLock", "left")
    local bladLockPrediction = 0
   testSection:AddButton("sans.cc", function(IhateGayPeople)
loadstring(game:HttpGet("https://pastebin.com/raw/XNBfsZJq"))()
     end) 
   testSection:AddButton("rxceph", function(IhateGayPeople)
loadstring(game:HttpGet("https://pastebin.com/raw/9M8C5x6N"))()
     end) 
     local AimingTab = Window:CreateTab("nigger")
    local testSection = AimingTab:CreateSector("random shits", "Left")
    
testSection:AddButton("Macro shift", function(IhateGayPeople)
loadstring(game:HttpGet('https://raw.githubusercontent.com/Unknownproootest/Permanent-Shift-Lock-Alt/alt/PermShiftlockAlt'))()
     end)
    
     testSection:AddButton("anti lock", function(IhateGayPeople)
loadstring(game:HttpGet('https://raw.githubusercontent.com/wenny69420/KirbswareScripts/main/MobileV3'))()
     end)
     
     testSection:AddButton("fps boost", function(IhateGayPeople)
local a = tick()
if not game:IsLoaded() then
    game.Loaded:Wait()
end
wait(.1)
sethiddenproperty(game.Lighting, "Technology", 2)
sethiddenproperty(workspace:FindFirstChildOfClass("Terrain"), "Decoration", false)
settings().Rendering.QualityLevel = 1
setsimulationradius(0,0)
game.Lighting.GlobalShadows = false
game.Lighting.FogEnd = 9e9
workspace:FindFirstChildOfClass("Terrain").Elasticity = 0
for b, c in pairs(game:GetDescendants()) do
    task.spawn(
        function()
            wait()
            if c:IsA("DataModelMesh") then
                sethiddenproperty(c, "LODX", Enum.LevelOfDetailSetting.Low)
                sethiddenproperty(c, "LODY", Enum.LevelOfDetailSetting.Low)
                c.CollisionFidelity = "Hull"
            elseif c:IsA("UnionOperation") then
                c.CollisionFidelity = "Hull"
            elseif c:IsA("Model") then
                sethiddenproperty(c, "LevelOfDetail", 1)
            elseif c:IsA("BasePart") then
                c.Reflectance = 0
                c.CastShadow = false
            end
        end
    )
end
for d, e in pairs(game.Lighting:GetChildren()) do
    if e:IsA("PostEffect") then
        e.Enabled = false
    end
end
warn("Low graphics loaded! (" .. math.floor(tick() - a) .. "s)")
     end)
         
     local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;
Notify({
Description = "collab with rxceph";
Title = "Sub To david script showcaser and rxceph";
Duration = 3;
})
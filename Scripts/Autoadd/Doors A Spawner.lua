


local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/Source.lua"))()

---====== Create entity ======---

local entity = Spawner.createEntity({
    CustomName = "A120",
    Model = "https://github.com/tonyBflako/vynixusdoors/blob/main/A120.rbxm?raw=true", -- Your entity's model url here ("rbxassetid://1234567890" or GitHub raw url)
    Speed = 60,
    MoveDelay = 2,
    HeightOffset = 0,
    CanKill = true,
    KillRange = 90,
    SpawnInFront = true,
    ShatterLights = false,
    FlickerLights = {
        Enabled = false,
        Duration = 1
    },
    Cycles = {
        Min = 1,
        Max = 3,
        Delay = 2
    },
    CamShake = {
        Enabled = true,
        Values = {1.5, 20, 0.1, 1},
        Range = 85
    },
    ResistCrucifix = true,
    BreakCrucifix = true,
    DeathMessage = {"Hm.. Hello.", "You're back here again.", "Well Who'd you die to?", "Oh. The squiggly-face.", "It starts attacking after A-120.", "You can do this. I believe in you.", "I'll see you next time right?"},
    IsCuriousLight = true
})



Spawner.runEntity(entity)
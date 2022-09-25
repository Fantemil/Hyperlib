------------------------

_G.range = 100 -- killaura range xd (archer's max range is 80, melee classes's max range is 10 or 20 idfk
_G.cooldown = 0.75 -- in seconds lmao (archer works with 0.5, for everything else I recommend 0.75)

------------------------
local plr = game.Players.LocalPlayer
local class = game.Players.LocalPlayer.Character.Properties.Class.Value
local Classes = { -- skidded from some old script + added the new classes :troll:
   ["Swordmaster"]     = {"Swordmaster1", "Swordmaster2", "Swordmaster3", "Swordmaster4", "Swordmaster5", "Swordmaster6", "CrescentStrike1", "CrescentStrike2", "CrescentStrike3", "Leap"};
   ["Mage"]            = {"Mage1", "ArcaneBlastAOE", "ArcaneBlast", "ArcaneWave1", "ArcaneWave2", "ArcaneWave3", "ArcaneWave4", "ArcaneWave5", "ArcaneWave6", "ArcaneWave7", "ArcaneWave8", "ArcaneWave9"};
   ["Defender"]        = {"Defender1", "Defender2", "Defender3", "Defender4", "Defender5", "Groundbreaker", "Spin1", "Spin2", "Spin3", "Spin4", "Spin5"};
   ["DualWielder"]     = {"DualWield1", "DualWield2", "DualWield3", "DualWield4", "DualWield5", "DualWield6", "DualWield7", "DualWield8", "DualWield9", "DualWield10", "DashStrike", "CrossSlash1", "CrossSlash2", "CrossSlash3", "CrossSlash4"};
   ["Guardian"]        = {"Guardian1", "Guardian2", "Guardian3", "Guardian4", "SlashFury1", "SlashFury2", "SlashFury3", "SlashFury4", "SlashFury5", "SlashFury6", "SlashFury7", "SlashFury8", "SlashFury9", "SlashFury10", "SlashFury11", "SlashFury12", "SlashFury13", "RockSpikes1", "RockSpikes2", "RockSpikes3"};
   ["IcefireMage"]     = {"IcefireMage1", "IcySpikes1", "IcySpikes2", "IcySpikes3", "IcySpikes4", "IcefireMageFireballBlast", "IcefireMageFireball", "LightningStrike1", "LightningStrike2", "LightningStrike3", "LightningStrike4", "LightningStrike5", "IcefireMageUltimateFrost", "IcefireMageUltimateMeteor1"};
   ["Berserker"]       = {"Berserker1", "Berserker2", "Berserker3", "Berserker4", "Berserker5", "Berserker6", "AggroSlam", "GigaSpin1", "GigaSpin2", "GigaSpin3", "GigaSpin4", "GigaSpin5", "GigaSpin6", "GigaSpin7", "GigaSpin8", "Fissure1", "Fissure2", "FissureErupt1", "FissureErupt2", "FissureErupt3", "FissureErupt4", "FissureErupt5"};
   ["Paladin"]         = {"Paladin1", "Paladin2", "Paladin3", "Paladin4", "LightThrust1", "LightThrust2", "LightPaladin1", "LightPaladin2"};
   ["MageOfLight"]     = {"MageOfLight", "MageOfLightBlast"};
   ["Demon"]           = {"Demon1", "Demon4", "Demon7", "Demon10", "Demon13", "Demon16", "Demon19", "Demon22", "Demon25", "DemonDPS1", "DemonDPS2", "DemonDPS3", "DemonDPS4", "DemonDPS5", "DemonDPS6", "DemonDPS7", "DemonDPS8", "DemonDPS9", "ScytheThrowDPS1", "ScytheThrowDPS2", "ScytheThrowDPS3", "DemonLifeStealDPS", "DemonSoulDPS1", "DemonSoulDPS2", "DemonSoulDPS3"};
   ["Dragoon"]         = {"Dragoon1", "Dragoon2", "Dragoon3", "Dragoon4", "Dragoon5", "Dragoon6"};
   ["Archer"]          = {"Archer"};
};

local cl = Classes[class]

function closest()
   local Character = plr.Character
   local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
   if not (Character or HumanoidRootPart) then return end

   local TargetDistance,Target = math.huge

   for i,v in next, workspace.Mobs:GetChildren() do
       if v:FindFirstChild("Collider") then
           local mag = (HumanoidRootPart.Position - v.Collider.Position).magnitude
           if mag < TargetDistance and mag <= _G.range and v.HealthProperties.Health.Value > 0 then
               TargetDistance = mag
               Target = v
           end
       end
   end

   return Target
end
local ind = 0
repeat task.wait()
   c = closest()
   if c then
       ind = ind + 1
       game:GetService("ReplicatedStorage").Shared.Combat.Attack:FireServer(cl[ind],c.Collider.Position, c.Collider.Position - plr.Character.HumanoidRootPart.Position)
       print((plr.Character.HumanoidRootPart.Position - c.Collider.Position).magnitude)
       task.wait(_G.cooldown)
       if ind >= #cl then
           ind = 0
       end
   end
until plr.Character.Humanoid.Health <= 0
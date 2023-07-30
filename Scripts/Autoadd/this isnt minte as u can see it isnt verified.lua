-- Methods
local Methods = loadstring(game:HttpGet("https://raw.githubusercontent.com/coolsk8rboy/The-John-Cena-Factory/main/JohnCenasMain.lua"))()
-- Setup
Methods:SetIdleAnimation(9185707376, 0.2)
Methods:SetWalkAnimation(9185713580, 0.2)
Methods:SetWalkSpeed(8)
Methods:EnableSprinting(9185718057, 0.2, 16)
-- Fling
Methods:BodyPartFlingOnTouch("Right Arm")
Methods:BodyPartFlingOnTouch("Left Arm")
Methods:BodyPartFlingOnTouch("Right Leg")
Methods:BodyPartFlingOnTouch("Left Leg")
-- Attacks
Methods:NewAttack("Attack1", "z", 9185669821, -.6, 5)
Methods:NewAttack("Attack2", "x", 9185673242, -.6, 5)
Methods:NewAttack("Attack3", "c", 9519611511, .1, 3)
Methods:NewAttack("Attack4", "v", 9519643225, .1, 3)
Methods:NewAttack("Attack5", "b", 9185680737, .1, 1)
Methods:NewAttack("Attack6", "m", 9189912488, .1, 2)
Methods:NewAttack("Attack7", "e", 9185655675, .1, 0)
Methods:NewAttack("Attack8", "f", 9185698427, .1, 0)
-- Finishing up
Methods:SetScriptCreator("CROAXER made and MAXILITO(animations)")
Methods:SystemMessage([[Controls:
z - slash 1
x - slash 2
c - grab soul 1 lol
v - grab soul 2 lol
b - blinded
e - scream
f - block attacks
m - final attack 
Left Alt - Sprint
]])
Methods:PlaySound(9047050075, true)
Methods:RunScript()


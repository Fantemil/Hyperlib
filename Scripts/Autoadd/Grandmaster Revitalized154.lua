local Methods = loadstring(game:HttpGet("https://raw.githubusercontent.com/RyXeleron/Pendulum-Reanimation-Menthods/main/Menthods.lua"))()
-- Setup
Methods:SetIdleAnimation(7142933331, .1)
Methods:SetWalkAnimation(7142732585, .1)
Methods:SetWalkSpeed(8)
Methods:EnableSprinting(7142895580, .1, 25)
-- Fling
Methods:BodyPartFlingOnTouch("Right Arm")
Methods:BodyPartFlingOnTouch("Left Arm")
Methods:BodyPartFlingOnTouch("Right Leg")
Methods:BodyPartFlingOnTouch("Left Leg")
-- Key Connections
Methods:OnKeyPress("q", function()
    Methods:ApplyVelocityFoward(-5)
    Methods:ApplyVelocityUpward(80)
    Methods:PlayAnimation(7142738887, .1, 5)
end)
Methods:OnKeyPress("e", function()
    Methods:ApplyVelocityFoward(5)
    Methods:ApplyVelocityUpward(80)
    Methods:PlayAnimation(6936454190, .1, 5)
end)
-- Attacks
Methods:NewAttack("Attack1", "z", 7142975235, .1, 3)
Methods:NewAttack("Attack2", "x", 7142973417, .1, 3)
Methods:NewAttack("Attack3", "c", 7142740591, .1, 3)
Methods:NewAttack("Attack4", "v", 7142741890, .1, 3)
Methods:NewAttack("Attack5", "b", 6936458635, .1, 3)
Methods:NewAttack("Attack6", "t", 4837749916, .1, 2)
Methods:NewAttack("Attack7", "y", 79257302488067, .1, 2)
Methods:NewAttack("L", "l", 14637910371, .1, 9)
Methods:NewAttack("Floss", "f", 14637998268, .1, 6)
Methods:NewAttack("Play", "p", 14638003545, .1, 6)
Methods:NewAttack("Laugh", "k", 14645273120, .1, 6)
Methods:NewAttack("Peter", "u", 14645298787, .1, 6)
Methods:NewAttack("Kick", "g", 14645314001, .1, 6)
-- Finishing up
Methods:SetScriptCreator("Ry")
Methods:SystemMessage([[Controls:
z - Combo 1
x - Combo 2
c - Combo 3
v - Combo 4
b - Combo 5
e - Front Flip
q - Back Flip
t - Taunt
y - California Gurls
l - Take The L
f - Floss
p - Play with your hats
k - Laugh
u - Peter Parker Black Suit Dance
g - Kazotsky Kick
Left Alt - Sprint
]])
Methods:PlaySound(1842802203, true)
Methods:RunScript()
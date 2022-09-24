--Made By MeatBall Is God#0770(Pls No Skiddies Just Credit Me)
----------------------------------------------------------------------
--God Mode
_G.God = true
while _G.God do
fireclickdetector(game:GetService("Workspace").Folder.Armor["[Full Armor] - $3200"].Head.ClickDetector)
wait()
end
----------------------------------------------------------------------
--Delete Buy Screen Gui
_G.AutoDelete = true
while _G.AutoDelete do
for i,v in pairs(game:GetService("Players")["LocalPlayer"].PlayerGui.MainScreenGui:GetDescendants()) do
    if v:IsA("TextLabel") and v.Name == ("MONEYDELTA")then
        v.Parent = nil
    end
end
wait()
end
----------------------------------------------------------------------
--Inf Ammo
_G.InfAmmo = true
while _G.InfAmmo do
game:GetService("ReplicatedStorage").ReloadWeapon:FireServer()
wait(0.7)
end
----------------------------------------------------------------------
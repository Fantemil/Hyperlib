_G.WS = "30"

--Created by CHEATAKK
--[[if it's not difficult for you, 
please support me to motivate me to 
further develop and publish free scripts.

2R$
https://www.roblox.com/game-pass/99279298/Bundle-Headless-Horseman

25R$
https://www.roblox.com/game-pass/98701273/UGC-Super-Super-Happy-Face

50R$
https://www.roblox.com/game-pass/98700251/UGC-Spiky-Halloween-Shades

299R$
https://www.roblox.com/game-pass/91773640/Byc-moze

499R$
https://www.roblox.com/game-pass/100004473/unnamed
or
https://www.roblox.com/game-pass/95369835/unnamed

999R$
https://www.roblox.com/game-pass/93509866/unnamed
or
https://www.roblox.com/game-pass/95367555/unnamed

1990R$
https://www.roblox.com/game-pass/98404426/unnamed

10000R$
https://www.roblox.com/game-pass/99608232/UGC-Dominus-Aureus

thank you
]]

while wait(1) do
    local children = game:GetService("Players").LocalPlayer.Character:GetChildren()
    for i, child in ipairs(children) do
    if child.Name == "Humanoid" then
		local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
		Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
		    Humanoid.WalkSpeed = _G.WS
		end)
		Humanoid.WalkSpeed = _G.WS
    end
    end
end
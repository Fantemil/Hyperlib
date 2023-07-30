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

local me = game.Players.LocalPlayer.Character
local Root = me.HumanoidRootPart

local function Touch(x)
	x = x.FindFirstAncestorWhichIsA(x, "Part")
	if x then
		if firetouchinterest then
			return task.spawn(function()
				firetouchinterest(x, Root, 1, wait() and firetouchinterest(x, Root, 0))
			end)
		end
		x.CFrame = Root.CFrame
	end
end

while true do
    for _, descendant in pairs(workspace.CollectDebris:GetDescendants()) do
        if descendant.IsA(descendant, "TouchTransmitter") then
            if descendant.Parent ~= nil and descendant.Parent.Name ~= "VIP" and (descendant.Parent.Position - Root.Position).Magnitude < 25 then
		        Touch(descendant)
		        wait()
		        --print((descendant.Parent.Position - Root.Position).Magnitude)
		    end
	    end
    end
    wait()
end
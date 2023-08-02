-- game link: https://www.roblox.com/games/3214114884/Flag-Wars-2x-FREE-GUN
-- game can detect if you capture flag too quick

local tweenspeed = 3 -- how long it takes to get to tween to flag

blueflag = game.Workspace.Core.Flags["Team Blue"].Base
redflag = game.Workspace.Core.Flags["Team Red"].Base

lp = game.Players.LocalPlayer

tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(tweenspeed, Enum.EasingStyle.Linear)
tweenService
	:Create(
		game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,
		tweenInfo,
		{ CFrame = TARGETFLAG.CFrame }
	)
	:Play()
--change "TARGETFLAG" on line 14 to the flag you want to capture

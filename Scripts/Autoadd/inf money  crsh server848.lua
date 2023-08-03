_G.DelayTime = 0.001
_G.Toggle = not _G.Toggle
_G.Rocketcount = 99999999999999999 

local count = 0; while _G.Toggle do task.wait(_G.DelayTime)
    pcall(function()
		if count ~= _G.Rocketcount then 
			count = count + 1 
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Buttons.RocketButton1.Button.CFrame * CFrame.new(4,0,0)
			fireproximityprompt(game:GetService("Workspace").Buttons.RocketButton1.Button.ProximityPrompt, 1)
		end 
	end)
end
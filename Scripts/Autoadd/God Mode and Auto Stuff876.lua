-- https://www.roblox.com/games/5942932659/Wormface
getgenv().deletewhendupefound = true
local lib = loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Lib-18698"))()
lib.makelib("why the Longface?")
local main = lib.maketab("Main")
local localplr = game.Players.LocalPlayer

lib.makelabel("Tip: Do not reset or respawn (not by dying from a snake) because you wont respawn",main)
local godmode = false
lib.maketoggle("God Mode",main,function(bool)
	godmode = bool
end)
local waitamt = .05
lib.maketextbox("Autofarm Wait Amount",main,function(txt)
	if tonumber(txt) then
	    waitamt = tonumber(txt)
	end
end)
local autofarm = false
lib.maketoggle("AutoFarm",main,function(bool)
	autofarm = bool
	while autofarm do
		task.wait()
		local worm
		for i,v in pairs(workspace.Items:GetChildren()) do
		    if not autofarm or not localplr.Character then continue end
			task.wait(waitamt)
			if v:FindFirstChild("Part") and ((worm and worm.Parent ~= nil) or localplr.Character:FindFirstChild("StarterWorm",true)) then
				worm = worm or localplr.Character:FindFirstChild("StarterWorm",true)
				if worm:FindFirstChild("Head") then
					worm:PivotTo(v.Part.CFrame)
					worm.Head.Velocity = Vector3.new(0,0,0)
				end
			end
		end
	end
end)
local autokill = false
local autokilldistance = 50
lib.maketextbox("AutoKill Distance Amount",main,function(txt)
	if tonumber(txt) then
	    autokilldistance = tonumber(txt)
	end
end)
lib.maketoggle("AutoKill (godmode recommended)",main,function(bool)
	autokill = bool
	while autokill do
		task.wait()
		local worm
		for i,v in pairs(game.Players:GetPlayers()) do
		    if v == localplr then continue end
		    if not autokill or not localplr.Character or not v.Character then continue end
			task.wait(waitamt)
			if (((worm and worm.Parent ~= nil) or localplr.Character:FindFirstChild("StarterWorm",true)) and (v.Character:FindFirstChild("StarterWorm",true))) then
				worm = worm or localplr.Character:FindFirstChild("StarterWorm",true)
				local worm2 = v.Character:FindFirstChild("StarterWorm",true)
				if worm2 and worm and worm2:FindFirstChild("Head") and worm2:GetPivot().Position.X > 340 and worm:FindFirstChild("Head") then
				    local cfr = CFrame.new(worm.Head.Position)
                    local timelol = tick() + 15
				    repeat
				        worm:PivotTo((worm2.Head.CFrame * CFrame.new(0,0,math.random(-autokilldistance,autokilldistance/4)) + Vector3.new(math.random(-3,3),math.random(-3,3),math.random(-3,3))))
				        worm.Head.Velocity = Vector3.new(0,0,0)
				        task.wait()
				    until not autokill or not worm2 or not worm2.Parent or worm2:GetPivot().Position.X < 340 or not worm or not worm.Parent or not worm:FindFirstChild("Head") or not worm2:FindFirstChild("Head") or timelol < tick()
				    if worm and worm:FindFirstChild("Head") then
				        worm:PivotTo(cfr)
				        worm.Head.CFrame = cfr
				        worm.Head.Velocity = Vector3.new(0,0,0)
				    end
				end
			end
		end
	end
end)
local autorebirth = false
lib.maketoggle("Auto Rebirth",main,function(bool)
	autorebirth = bool
end)
lib.ondestroyedfunc = function()
    godmode = false
    autofarm = false
    autokill = false
end
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Anti-Void-Script-18124"))()
while wait(1) do
	if localplr.Character:FindFirstChild("StarterWorm",true) then
		local worm = localplr.Character:FindFirstChild("StarterWorm",true)
		if worm:FindFirstChild("Head") then
			worm.Head.CanTouch = not godmode
			worm.Head.CanQuery = not godmode
		end
	end
    if autorebirth then
        pcall(function()
            game.ReplicatedStorage.RebirthRequest:InvokeServer("rebirth")
        end)
    end
end
-- end of script if you didnt know
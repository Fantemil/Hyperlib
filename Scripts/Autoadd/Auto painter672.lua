-- Huge shoutout and thanks to Votteq https://v3rmillion.net/showthread.php?tid=1164422
local plr = "LocalPlayer" -- Leave to LocalPlayer to paint your own, change name to paint others
local maxDelay = 15 -- 15 is a good value, make higher if you're getting lag issues
local plrPing = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()

function GetOwner()
	local stringy
	
	for i,v in pairs(game:GetService("Workspace").Map.Blocks:GetDescendants()) do
		if v.Name == "OwnerFace" and v.Parent.Name == "SpawnLocation" then 
			if v:FindFirstChild("SurfaceGui"):FindFirstChild("ImageLabel").Image == tostring("rbxthumb://type=AvatarHeadShot&id="..game:GetService("Players")[plr].UserId.."&w=420&h=420") then
				stringy = tostring("rbxthumb://type=AvatarHeadShot&id="..game:GetService("Players")[plr].UserId.."&w=420&h=420")
			end
		end
	end

	for i,v in pairs(game:GetService("Workspace").Map.Blocks:GetDescendants()) do
		if v.Name == "OwnerFace" and v.Parent.Name == "SpawnLocation" then 
			if v:FindFirstChild("SurfaceGui"):FindFirstChild("ImageLabel").Image == stringy then
				stringy = v
			end
		end
	end
	return stringy.Parent.Parent
end

local usrPlot = GetOwner()

local R = false

function Build()
    if R == false then 
        R = true
	    local remote = game:GetService("ReplicatedStorage").Knit.Services.PixelGeneratorService.RF.DrawPixel
	    for i,v in pairs(usrPlot:WaitForChild("Draw"):GetChildren()) do -- Replace WaitForChild with FindFirstChild if you want it to run per-execute
	        task.spawn(function()
		    if v.Name == "Part" and v:FindFirstChild("Texture").Transparency == 0 then
		        v:FindFirstChild("Texture").Transparency = 0.5 -- To avoid re-painting this and lagging out
	            task.wait(math.random(0,maxDelay)/2) -- I suggest leaving the max on 15. Lower may lag out, higher will take too long.
                if plrPing > 1000 then
                repeat task.wait()
                until plrPing < 800 end
                task.wait(math.random(0,maxDelay)/2)
			    remote:InvokeServer(v)
		    end
	        end)
	    end
    end
    R = false
end

Build()
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- Rate My Avatar GUI - 2024

-- Join the required game -ð

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Rate my Avatar GUI | made by | pyst", "BloodTheme")

local Tab = Window:NewTab("Booth")
local Section = Tab:NewSection("Normal Stuff")
Section:NewTextBox("Change Text", "Changes the text of the booth", function(txt)
local args = {
    [1] = "Update",
    [2] = {
        ["DescriptionText"] = txt,
        ["ImageId"] = txt1,
    },
}
game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
end)
Section:NewButton("Abandon Booth", "makes booth vanish", function()
    local args = {
    [1] = "Abandon",
}
game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
end)
local Section = Tab:NewSection("Booth Gifs")
Section:NewToggle("Yipe", "cryniz#5446 , noxu#0001", function(state)
    if state then
        yipeeCond = true
       while yipeeCond==true do
		local yipeeTab = {
			"16973289759",
			"9834224367",
			"9834224378",
			"9834224390",
			"9834224358",
			"9834224395",
			"9834224420",
			"9834224394",
			"9834224333",
			"9834224348",
			"9834224386",
			"9834224368",
			"9834224407",

		}
		for _,v in pairs(yipeeTab) do
			local k={[1]="Update",[2]={["DescriptionText"]="Yipee",["ImageId"]=v}}
			game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(k))
			if yipeeCond==false then
				break
			end
			wait(.1)
		end
	end
    else
    yipeeCond = false
        local args = {
    [1] = "Update",
    [2] = {
        ["DescriptionText"] = "DID YOU PRAY TODAY?",
        ["ImageId"] = 16972782320,
    },
}

game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
    end
end)
Section:NewToggle("Spongebob fish", "cryniz#5446 , noxu#0001", function(state)
    if state then
    wysiCond = true
	while wysiCond==true do
		local wysiTab = {
			"9888816960",
			"9888816536",
			"9888810253",
			"9888810067",
			"9888810067",
			"9888809922",
			"9888809324",
			"9888809324",
			"9888803341",
			"9888802915",
			"9888802721",
			"9888802431",
			"9888795511",
			"9888795328",

		}
		for _,v in pairs(wysiTab) do
			local k={[1]="Update",[2]={["DescriptionText"]="Spongebob",["ImageId"]=v}}
			game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(k))
			if wysiCond==false then
				break
			end
			wait(.1)
		end
	end
    else
    wysiCond = false
        local args = {
    [1] = "Update",
    [2] = {
        ["DescriptionText"] = "DID YOU PRAY TODAY?",
        ["ImageId"] = 16972782320,
    },
}

game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
    end
end)
Section:NewToggle("Dancing Cat", "cryniz#5446 , noxu#0001", function(state)
    if state then
    happyCatCond = true
	wait(0.1)
	while happyCatCond==true do
		local happyCatTab = {
			"9835002079",
			"9835002136",
			"9835002131",
			"9835002084",
			"9835002080",
			"9835002086",
			"9835002078",
			"9835002086",
			"9835002115",
			"9835002120",
			"9835002096",
			"9835002129",
			"9835002100",
			"9835002112",
			"9835002098",

		}
		for _,v in pairs(happyCatTab) do
			local k={[1]="Update",[2]={["DescriptionText"]=":D",["ImageId"]=v}}
			game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(k))
			if happyCatCond==false then
				break
			end
			wait(.1)

		end
	end
    else
    happyCatCond = false
        local args = {
    [1] = "Update",
    [2] = {
        ["DescriptionText"] = "DID YOU PRAY TODAY?",
        ["ImageId"] = 16972782320,
    },
}

game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
    end
end)
Section:NewToggle("Spinning Rat", "cryniz#5446 , noxu#0001", function(state)
    if state then
spinningRatCond = true
	wait(0.2)
	while spinningRatCond==true do
		local spinningRatTab = {
			"9835143999",
			"9835144007",
			"9835144021",
			"9835144008",
			"9835144032",
			"9835144027",
			"9835144015",
			"9835144038",
			"9835144026",
			"9835144019",
			"9835144033",
			"9835144035",
			"9835144036",
			"9835144031",
			"9835144061",
			"9835144037",

		}
		for _,v in pairs(spinningRatTab) do
			local k={[1]="Update",[2]={["DescriptionText"]="ð",["ImageId"]=v}}
			game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(k))
			if spinningRatCond==false then
				break
			end
			wait(.1)

		end
	end
    else
    spinningRatCond = false
        local args = {
    [1] = "Update",
    [2] = {
        ["DescriptionText"] = "DID YOU PRAY TODAY?",
        ["ImageId"] = 16972782320,
    },
}

game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
    end
end)
Section:NewToggle("Capybara Car", "cryniz#5446 , noxu#0001", function(state)
    if state then
capybaraCarCond = true
	wait(0.2)
	while capybaraCarCond==true do
		local capybaraCarTab = {
			"9835192311",
			"9835192318",
			"9835192328",
			"9835192332",
			"9835192342",
			"9835192343",
			"9835192356",
			"9835192354",
			"9835192340",
			"9835192409",
			"9835192407",

		}
		for _,v in pairs(capybaraCarTab) do
			local k={[1]="Update",[2]={["DescriptionText"]="okay i pull up",["ImageId"]=v}}
			game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(k))
			if capybaraCarCond==false then
				break
			end
			wait(.1)

		end

	end
    else
    capybaraCarCond = false
        local args = {
    [1] = "Update",
    [2] = {
        ["DescriptionText"] = "DID YOU PRAY TODAY?",
        ["ImageId"] = 16972782320,
    },
}

game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
    end
end)
Section:NewToggle("Skull Explode", "cryniz#5446 , noxu#0001", function(state)
    if state then
skullExplodeCond = true
	wait(0.2)
	while skullExplodeCond==true do
		local skullExplodeTab = {
			"9835255720",
            "9835255646",
            "9835255659",
            "9835255657",
            "9835255675",
            "9835255686",
            "9835255688",
            "9835255685",
            "9835255683",
		}
		for _,v in pairs(skullExplodeTab) do
			local k={[1]="Update",[2]={["DescriptionText"]="Ain't no wayð",["ImageId"]=v}}
			game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(k))
			if skullExplodeCond==false then
				break
			end
			wait(.1)
		end

	end
    else
    skullExplodeCond = false
        local args = {
    [1] = "Update",
    [2] = {
        ["DescriptionText"] = "DID YOU PRAY TODAY?",
        ["ImageId"] = 16972782320,
    },
}

game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
    end
end)
Section:NewToggle("Skull Impload", "cryniz#5446 , noxu#0001", function(state)
    if state then
	skullImploadCond = true
	wait(0.2)
	while skullImploadCond==true do
		local skullImploadTab = {
			"9835255683",
			"9835255685",
			"9835255688",
			"9835255686",
			"9835255675",
			"9835255657",
			"9835255659",
			"9835255646",
			"9835255720",
		}
		for _,v in pairs(skullImploadTab) do
			local k={[1]="Update",[2]={["DescriptionText"]="Ah ok  I understand now",["ImageId"]=v}}
			game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(k))
			if skullImploadCond==false then
				break
			end
			wait(.1)
		end
	end
    else
    skullImploadCond = false
        local args = {
    [1] = "Update",
    [2] = {
        ["DescriptionText"] = "DID YOU PRAY TODAY?",
        ["ImageId"] = 16972782320,
    },
}

game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
    end
end)
Section:NewToggle("RIP Cat", "cryniz#5446 , noxu#0001", function(state)
    if state then
	ripCatCond = true
	wait(0.2)
	while ripCatCond==true do
		local ripCatTab = {
			"9835316720",
			"9835316733",
			"9835316781",
			"9835316773",
			"9835316740",
			"9835316736",
			"9835316743",
			"9835316749",
			"9835316754",
			"9835316761",
			"9835316780",
			"9835316785",
			"9835316787",
			"9835316775",
		}
		for _,v in pairs(ripCatTab) do
			local k={[1]="Update",[2]={["DescriptionText"]=":(",["ImageId"]=v}}
			game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(k))
			if ripCatCond==false then
				break
			end
			wait(.1)	
		end
	end
    else
    ripCatCond = false
        local args = {
    [1] = "Update",
    [2] = {
        ["DescriptionText"] = "DID YOU PRAY TODAY?",
        ["ImageId"] = 16972782320,
    },
}

game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
    end
end)
Section:NewToggle("Water Cat", "cryniz#5446 , noxu#0001", function(state)
    if state then
	waterCatCond = true
	wait(0.2)
	while waterCatCond==true do
		local waterCatTab = {
			"9835462423",
			"9835462430",
			"9835462441",
			"9835462438",
			"9835462440",
			"9835462448",
			"9835462445",
			"9835462435",
		}
		for _,v in pairs(waterCatTab) do
			local k={[1]="Update",[2]={["DescriptionText"]="ð¦ð¦ð¦ðº",["ImageId"]=v}}
			game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(k))
			if waterCatCond==false then
				break
			end
			wait(.1)
		end
	end
    else
    waterCatCond = false
        local args = {
    [1] = "Update",
    [2] = {
        ["DescriptionText"] = "DID YOU PRAY TODAY?",
        ["ImageId"] = 16972782320,
    },
}

game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
    end
end)
Section:NewToggle("Mewing", "cryniz#5446 , noxu#0001", function(state)
    if state then
	pugCond = true
	wait(0.2)
	while pugCond==true do
		local pugTab = {
			"16973289759",
			"16973294330",
			"16973299268",
			"16973337737",
			"16973344773",
			"16973348964",
			"16973354610",
			"16973359646",
			"16973367266",
			"16973379573",
			"16973389577",
			"16973394976",
			"16973402586",
			"16973406811",
			"16973410625",
			"16973420450",
			"16973428930",
			"16973428930",
			"16973428930",
			"16973428930",
		}
		for _,v in pairs(pugTab) do
			local k={[1]="Update",[2]={["DescriptionText"]="ð¤«ð§ââï¸",["ImageId"]=v}}
			game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(k))
			if pugCond==false then
				break
			end
			wait(.1)
		end
	end
    else
    pugCond = false
        local args = {
    [1] = "Update",
    [2] = {
        ["DescriptionText"] = "DID YOU PRAY TODAY?",
        ["ImageId"] = 16972782320,
    },
}

game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
    end
end)
local Section = Tab:NewSection("Booth Sniper")
Section:NewButton("SOON!", "soon", function()
    print("soon")
end)
local Tab = Window:NewTab("Teleports")
local Section = Tab:NewSection("PLayer Teleports")
Section:NewTextBox("Player Name", "TextboxInfo", function(txt)
	local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local pl2 = txt
local humanoid = game.Players.LocalPlayer.Character.Humanoid
task.wait()
pl.CFrame = game.Players[pl2].Character.HumanoidRootPart.CFrame
end)

local Section = Tab:NewSection("Locations")
Section:NewButton("Shop", "TPS for shop", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
	local location = CFrame.new(-62, 3, 55)
	local humanoid = game.Players.LocalPlayer.Character.Humanoid
	task.wait()
	pl.CFrame = location
end)
Section:NewButton("Spawn", "TPS to spawn", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
	local location = CFrame.new(-8, 3, 6)
	local humanoid = game.Players.LocalPlayer.Character.Humanoid
	task.wait()
	pl.CFrame = location
end)
Section:NewButton("Stage", "TPS to stage", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
	local location = CFrame.new(-86, 7, 6)
	local humanoid = game.Players.LocalPlayer.Character.Humanoid
	task.wait()
	pl.CFrame = location
end)
Section:NewButton("Top Rated Sign", "Tps on top of the Top rated sign", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
	local location = CFrame.new(-71, 19, -40)
	local humanoid = game.Players.LocalPlayer.Character.Humanoid
	task.wait()
	pl.CFrame = location
end)
Section:NewButton("Tree", "TPS to tree", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
	local location = CFrame.new(60, 37, -65)
	local humanoid = game.Players.LocalPlayer.Character.Humanoid
	task.wait()
	pl.CFrame = location
end)
Section:NewButton("Other Tree", "TPS to the other tree", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
	local location = CFrame.new(56, 38, 72)
	local humanoid = game.Players.LocalPlayer.Character.Humanoid
	task.wait()
	pl.CFrame = location
end)
Section:NewButton("Shop Sign", "TPS to the shop sign", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
	local location = CFrame.new(-76, 19, 50)
	local humanoid = game.Players.LocalPlayer.Character.Humanoid
	task.wait()
	pl.CFrame = location
end)
Section:NewButton("Premium Lounge", "i like these", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
	local location = CFrame.new(-5900, -54, 23)
	local humanoid = game.Players.LocalPlayer.Character.Humanoid
	task.wait()
	pl.CFrame = location
end)
Section:NewButton("PC", "six", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
	local location = CFrame.new(-88, 3, 38)
	local humanoid = game.Players.LocalPlayer.Character.Humanoid
	task.wait()
	pl.CFrame = location
end)
local Tab = Window:NewTab("Text Sign")
local Section = Tab:NewSection("Text Sign (GAMEPASS REQUIRED)")
Section:NewButton("Get Text Sign", "gives u text sign", function()
    local args = {
    [1] = 17291420,
}

game:GetService("ReplicatedStorage").RequestGamepassTool:FireServer(unpack(args))
end)
Section:NewToggle("Loop give text sign", "loop gives text sign", function(state)
        if state then
		cond = true
        while cond==true do
			game:GetService("ReplicatedStorage").RequestGamepassTool:FireServer(17291420)
			wait(.7)
		end
    else
		cond = false
		print("no more text sign")
    end
end)
local Section = Tab:NewSection("Animations (SOON)")
Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)
local Tab = Window:NewTab("Image Sign")
local Section = Tab:NewSection("Image Sign (GAMEPASS REQUIRED)")
Section:NewButton("Get Image Sign", "gives u image sign", function()
    local args = {
    [1] = 17291427,
}

game:GetService("ReplicatedStorage").RequestGamepassTool:FireServer(unpack(args))
end)
Section:NewToggle("Loop give image sign", "loop gives image sign", function(state)
    if state then
		cond = true
        while cond==true do
			game:GetService("ReplicatedStorage").RequestGamepassTool:FireServer(17291427)
			wait(.7)
		end
    else
		cond = false
		print("no more image sign")
    end
end)
local Section = Tab:NewSection("Animations (SOON)")
Section:NewToggle("Spongebob Fish", "ok", function(state)
    if state then
        	Cond = true
	task.wait(.1)
	while Cond==true do
		local Tab = {
			"9888816960",
			"9888816536",
			"9888816224",
			"9888810253",
			"9888810067",
			"9888809922",
			"9888809764",
			"9888809324",
			"9888803341",
			"9888802915",
			"9888802721",
			"9888802431",
			"9888795511",
			"9888795328",
		}
		for _,v in pairs(Tab) do
			game:GetService("ReplicatedStorage").UpdateSign:FireServer('Decal','rbxassetid://'..tostring(v))
			if Cond==false then
				break
			end
			task.wait(.1)
		end
	end
    else
        Cond = false
		task.wait(.1)
		game:GetService("ReplicatedStorage").UpdateSign:FireServer('Decal','')
    end
end)
Section:NewToggle("Happy Monkey Circle", "ok", function(state)
    if state then
        	Cond = true
	task.wait(.1)
	while Cond==true do
		local Tab = {
			"9888794477",
			"9888788087",
			"9888787850",
			"9888787557",
			"9888787334",
			"9888787028",
			"9888786790",
			"9888786611",
			"9888786410",
		}
		for _,v in pairs(Tab) do
			game:GetService("ReplicatedStorage").UpdateSign:FireServer('Decal','rbxassetid://'..tostring(v))
			if Cond==false then
				break
			end
			task.wait(.1)
		end
	end
    else
        Cond = false
		task.wait(.1)
		game:GetService("ReplicatedStorage").UpdateSign:FireServer('Decal','')
    end
end)
Section:NewToggle("L spin", "ok", function(state)
    if state then
        	Cond = true
	task.wait(.1)
	while Cond==true do
		local Tab = {
			"9888779946",
			"9888779767",
			"9888779598",
			"9888779457",
			"9888779287",
			"9888779114",
			"9888778967",
			"9888778758",
			"9888778538",
			"9888778309",
			"9888778086",
		}
		for _,v in pairs(Tab) do
			game:GetService("ReplicatedStorage").UpdateSign:FireServer('Decal','rbxassetid://'..tostring(v))
			if Cond==false then
				break
			end
			task.wait(.1)
		end
	end
    else
        Cond = false
		task.wait(.1)
		game:GetService("ReplicatedStorage").UpdateSign:FireServer('Decal','')
    end
end)
Section:NewToggle("The rock eyebrow", "ok", function(state)
    if state then
        	Cond = true
	task.wait(.1)
	while Cond==true do
		local Tab = {
			"9888770515",
			"9888770296",
			"9888769916",
			"9888769634",
			"9888769284",
			"9888769008",
			"9888768794",
			"9888768523",
			"9888763095",
			"9888762892",
			"9888762699",
			"9888762367",
			"9888762114",
			"9888761941",
			"9888761689",
			"9888761246",
		}
		for _,v in pairs(Tab) do
			game:GetService("ReplicatedStorage").UpdateSign:FireServer('Decal','rbxassetid://'..tostring(v))
			if Cond==false then
				break
			end
			task.wait(.1)
		end
	end
    else
        Cond = false
		task.wait(.1)
		game:GetService("ReplicatedStorage").UpdateSign:FireServer('Decal','')
    end
end)
Section:NewToggle("skeleton running", "ok", function(state)
    if state then
        	Cond = true
	task.wait(.1)
	while Cond==true do
		local Tab = {
			"9888761068",
			"9888760854",
			"9888754640",
			"9888754491",
			"9888754373",
			"9888754246",
			"9888754109",
			"9888753970",
			"9888753820",
		}
		for _,v in pairs(Tab) do
			game:GetService("ReplicatedStorage").UpdateSign:FireServer('Decal','rbxassetid://'..tostring(v))
			if Cond==false then
				break
			end
			task.wait(.1)
		end
	end
    else
        Cond = false
		task.wait(.1)
		game:GetService("ReplicatedStorage").UpdateSign:FireServer('Decal','')
    end
end)
local Tab = Window:NewTab("Knight")
local Section = Tab:NewSection("Knight")
Section:NewButton("Get Knight", "get knight lmfoaoaoaa", function()
local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
local gobackto = hrp.CFrame
local target = game:GetService("Workspace").JewelleryStand

if target.Transparency ~= 1 then

hrp.CFrame = CFrame.new(target.Position)
wait(0.4)
fireproximityprompt(target.ProximityPrompt)
wait()

hrp.CFrame = gobackto 

end
end)
Section:NewButton("Get sword", "get sword lmfoaoaoaa", function()
local args = {
    [1] = "ClassicSword",
}

game:GetService("ReplicatedStorage").RequestTool:FireServer(unpack(args))
end)
Section:NewToggle("Loop give sword", "loop gives sword", function(state)
    if state then
		cond = true
        while cond==true do
		local args = {
    	[1] = "ClassicSword",
		}

		game:GetService("ReplicatedStorage").RequestTool:FireServer(unpack(args))
		wait(.7)
		end
    else
		cond = false
		print("no more sword")
    end
end)
Section:NewToggle("auto claim knight", "claims knight when availabale", function(state)
    if state then
		cond = true
		while cond==true do
			wait(.1)
			local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
local gobackto = hrp.CFrame
local target = game:GetService("Workspace").JewelleryStand

if target.Transparency ~= 1 then

hrp.CFrame = CFrame.new(target.Position)
wait(0.4)
fireproximityprompt(target.ProximityPrompt)
wait()

hrp.CFrame = gobackto 

end
		end
    else
		cond = false
		print("no more sword")
    end
end)
local Section = Tab:NewSection("Sword Misc")
Section:NewTextBox("Type Radius", "type radisu of sword circle", function(txt)
	local Origin = Vector3.new(0, 0, -5)
local Radius = txt
local X,Y=0,0
local n=1
spawn(function()
for i = 1, math.pi*100000, 0.03 do
    X = Origin.X + (Radius * math.cos(i))
    Y = Origin.Y + (Radius * math.sin(i))
    task.wait()
end
end)
for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren())do
    if v.Name=='ClassicSword'then
        n+=0.01
        v.GripPos=Vector3.new(X-1,Y+1.5)
        v.Parent=game.Players.LocalPlayer.Character
        task.wait()
    end
end
end)
Section:NewToggle("Dupe Sword", "dupes swords", function(state)
    if state then
		local G=game
local TweenService=G:GetService("TweenService")
local Players=G:GetService("Players")
local LocalPlayer=Players.LocalPlayer
local StarterGui=G.StarterGui
local StarterPack=G.StarterPack
local StarterPlayer=G.StarterPlayer
local StarterCharacterScripts=StarterPlayer.StarterCharacterScripts
local StarterPlayerScripts=StarterPlayer.StarterPlayerScripts
local ReplicatedFirst=G:GetService("ReplicatedFirst")
local ReplicatedStorage=G:GetService("ReplicatedStorage")
local ServerScriptService=G:GetService("ServerScriptService")
local ServerStorage=G:GetService("ServerStorage")
local Lighting=G:GetService("Lighting")
local SoundService=G:GetService("SoundService")
local Teams=G:GetService("Teams")

local RunService=G:GetService('RunService')
local Heartbeat=RunService.Heartbeat
local RenderStepped=RunService.RenderStepped
local Stepped=RunService.Stepped
local In=Instance.new
local CFn=CFrame.new
local V3n=Vector3.new
local LRn=NumberRange.new
local TIn=TweenInfo.new
local CSKn=ColorSequenceKeypoint.new

--math
local inf=math.huge
local rng=math.random
local mr=math.round
local mce=math.ceil
local mf=math.floor
local pi=math.pi
local ab=math.abs
local mco=math.cos
local ma=math.acos
local ml=math.log
_G.e=true
_G.maxswr=false
_G.blocktool=false
_G.equiptool=true
local con;
con=RenderStepped:connect(function()
    if _G.maxswr==true then
    	local cout=0
        for _,v in pairs(LocalPlayer.Character:GetChildren())do
    		if v:IsA("Tool")then
				if v.Name=="ClassicSword"then
    			    cout+=1
				end
    		end
    	end
    	if cout>=2000 then con:Disconnect() end
    end
    if _G.e==false then con:Disconnect() end
	if _G.equiptool==true then
    for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren())do
    	if v:IsA("Tool") and v.Name=="ClassicSword"then
    		local han=v:FindFirstChild("Handle")
    		if han then
    			han.Massless=true;han.CanCollide=false;han.CanTouch=false;han.CanQuery=false
				if _G.blocktool==true then
                    local mesh=han:FindFirstChildWhichIsA("SpecialMesh")
					if mesh then
						mesh:Remove()
					end
				end
    			v.Parent=game.Players.LocalPlayer.Character
    		end
    	end
    end
	end
    local n={[1]="ClassicSword"}
    game:GetService("ReplicatedStorage").RequestTool:FireServer(unpack(n))    
end)
    else
		_G.e=false
		print("no more swords")
    end
end)
local Tab = Window:NewTab("Other Scripts")
local Section = Tab:NewSection("Scripts:")
Section:NewButton("Simple Spy v0.8", "ayo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/GE6Yii93", true))()
end)
Section:NewButton("CMD X", "ayo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
end)
Section:NewButton("Domain X", "ayo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/DomainX/main/source",true))()
end)
Section:NewButton("Infinite Yield", "ayo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)
Section:NewButton("Fates Admin", "ayo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua", true))()
end)
local Tab = Window:NewTab("Rate")
local Section = Tab:NewSection("Soon!")
local Tab = Window:NewTab("Blacklist")
local Section = Tab:NewSection("Soon!")
local Tab = Window:NewTab("Notifications")
local Section = Tab:NewSection("Soon :)")
local Tab = Window:NewTab("Others")
local Section = Tab:NewSection("idk what to put here")
Section:NewButton("Rejoin", "rejoins same server", function()
    local ts = game:GetService("TeleportService")
	local p = game:GetService("Players").LocalPlayer
	ts:Teleport(game.PlaceId, p)
end)
Section:NewButton("Server Hop", "joins diffrent server", function()
    local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
	module:Teleport(game.PlaceId)
end)
Section:NewKeybind("Open/Close GUI", "six", Enum.KeyCode.G, function()
	Library:ToggleUI()
end)
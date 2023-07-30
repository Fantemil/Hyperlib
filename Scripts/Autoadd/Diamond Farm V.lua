
_G.FarmDiamonds = true --set to false to stop farming

local FilterOrbs = { --Orbs to Farm
	"Diamond"
}

local Worlds = { --Worlds were to Farm
	"Spawn World",
	"Atlantis",
	"Candyland"
}



--Setting Names for all Invisible Modules
for i,v in pairs(game:GetService("ReplicatedStorage").Nevermore["Client Modules"]:GetChildren()) do
	v.Name = i
end

for i,v in pairs(game:GetService("ReplicatedStorage").Nevermore["Shared Modules"]:GetChildren()) do
	v.Name = i
end

--Variables
local Client = require(game:GetService("ReplicatedStorage").Nevermore["Client Modules"]["5"])
Client = getupvalues(Client.Add)
local Server = require(game:GetService("ReplicatedStorage").Nevermore["Shared Modules"]["8"])

local Remotes = game:GetService("ReplicatedStorage").Remotes
local plr = game.Players.LocalPlayer

local UseFunc = {}
UseFunc.__index = UseFunc

--Functions

function UseFunc.Teleport(world) --> str
	set_thread_identity(2)
	for i,v in pairs(Client) do
		pcall(function() v.WorldCmds.Load(world) end) --Loading to world
	end
	set_thread_identity(8)
end

function UseFunc.GetCurrentWorld()
	for i,v in pairs(Client) do
		return v.WorldCmds.Get() --Returns Current World
	end
end

function UseFunc.FoundOrb(name, OrbsList) --> str, {str}
	local FoundAny = false
	for i,v in pairs(OrbsList) do
		if string.lower(name):match(string.lower(v)) then
			FoundAny = true
		end
	end
	return FoundAny --Returns -> Found name in OrbList
end

task.spawn(function()
	while _G.FarmDiamonds do task.wait()
		function UseFunc.FarmWorld(FilterOrbs, FilterWorlds) --> {str}, {str}
			for index, WorldName in pairs(FilterWorlds) do
				if WorldName ~= UseFunc.GetCurrentWorld() then UseFunc.Teleport(WorldName) task.wait(2) end
				local orbs_data = Server.Invoke("get pickups")
				for i,v in pairs(orbs_data) do
					if UseFunc.FoundOrb(v.n, FilterOrbs) and v.a ~= "VIP" then --Continues if found orb and area is not VIP
						plr.Character.HumanoidRootPart.CFrame = CFrame.new(v.p) * CFrame.new(1,2,1) --Teleporting near to Filtred Orb
						task.wait(.15); --Minimum Waiting
						local args = {[1] = {[1] = {[1] = tostring(i)},[2] = {[1] = false}}}
						Remotes:FindFirstChild("collect pickup"):FireServer(unpack(args))
					end
				end
				task.wait(1)
			end
		end
		UseFunc.FarmWorld(FilterOrbs, Worlds)
		task.wait(.15)
	end
end)
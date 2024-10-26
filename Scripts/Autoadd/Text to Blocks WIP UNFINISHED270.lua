local returntable = {}

local texttotable = {
	h5 = { -- maximum height: 5
		a = {
			{5,3,2,1},
			{5,3,1},
			{5,3,1},
			{5,4,3,2,1},
		},
		b = {
			{5,4,3,2,1},
			{3,1},
			{3,2,1},
		},
		c = {
			{3,2,1},
			{3,1},
			{3,1},
		},
		d = {
			{3,2,1},
			{3,1},
			{5,4,3,2,1},
		},
		e = {
		    {5,4,3,2,1},
		    {5,3,1},
		    {5,4,3,1},
		},
		f = {
			{3},
			{5,4,3,2,1},
			{5,3},
		},
		g = {
			{5,4,3,1},
			{5,3,1},
			{5,4,3,2,1},
		},
		h = {
			{5,4,3,2,1},
			{3},
			{3,2,1},
		},
		i = {
			{5,3,2,1},
		},
		j = {
			{1},
			{5,3,2,1},
		},
		k = {
			{5,4,3,2,1},
			{3,2},
			{4,1},
		},
		l = {
			{5,1},
			{5,4,3,2,1},
			{1},
		},
		m = {
			{3,2,1}, -- looks like an E, lets see how E turns out.
			{3},
			{3,2,1},
			{3},
			{3,2,1},
		},
		n = {
			{3,2,1},
			{3},
			{3,2,1},
		},
		o = {
			{3,2,1},
			{3,1},
			{3,2,1},
		},
		p = {
			{4,3,2,1},
			{4,2},
			{4,3,2},
		},
		q = {
			{4,3,2},
			{4,2},
			{4,3,2},
			{1},
		},
		r = {
			{3,2,1}, -- cool
			{3},
			{3},
		},
		s = {
			{5,4,3,1},
			{5,3,1},
			{5,3,2,1},
		},
		t = {
			{3},
			{5,4,3,2,1},
			{3},
		},
		u = {
			{3,2,1},
			{1},
			{3,2,1},
		},
		v = {
			{3,2},
			{1},
			{3,2},
		},
		w = {
			{3,2}, -- E but shorter
			{1},
			{3,2},
			{1},
			{3,2},
		},
		x = {
			{3,1},
			{2},
			{3,1},
		},
		y = {
			{3,1},
			{2},
			{3},
		},
		z = {
			{5,2,1},
			{5,3,1},
			{5,4,1},
		},
		A = {
			{4,3,2,1},
			{5,3},
			{4,3,2,1},
		},
		B = {
			{5,4,3,2,1},
			{5,3,1},
			{5,4,3,1},
			{3,2,1},
		},
		C = {
			{5,4,3,2,1},
			{5,1},
			{5,1},
		},
		D = {
			{5,4,3,2,1},
			{5,1},
			{5,1},
			{4,3,2},
		},
		E = {
			{5,4,3,2,1}, --    :(
			{5,3,1},
			{5,3,1},
		},
		F = {
			{5,4,3,2,1},
			{5,3},
			{5},
		},
		G = {
			{5,4,3,2,1},
			{5,1},
			{5,3,1},
			{5,3,2,1},
		},
		H = {
			{5,4,3,2,1},
			{3},
			{5,4,3,2,1},
		},
		I = {
			{5,1},
			{5,4,3,2,1},
			{5,1},
		},
		J = {
			{2,1},
			{5,1},
			{5,4,3,2,1},
			{5},
		},
		K = {
			{5,4,3,2,1},
			{3},
			{4,2},
			{5,1},
		},
		L = {
			{5,4,3,2,1},
			{1},
			{1},
		},
		M = {
			{5,4,3,2,1}, -- Looks like an E, lets see how E turns out.
			{1},
			{5,4,3,2,1},
			{1},
			{5,4,3,2,1},
		},
		N = {
			{5,4,3,2,1},
			{4},
			{3},
			{5,4,3,2,1},
		},
		O = {
			{4,3,2},
			{5,1},
			{5,1},
			{4,3,2},
		},
		P = {
			{5,4,3,2,1},
			{5,3},
			{5,4,3},
		},
		Q = {
			{5,4,3,2,1},
			{5,1},
			{5,2,1},
			{5,4,3,2,1},
			{1},
		},
		R = {
			{5,4,3,2,1},
			{5,3,2},
			{5,4,3,1},
		},
		S = {
			{5,4,3,1},
			{5,3,1},
			{5,3,2,1},
		},
		T = {
			{5},
			{5,4,3,2,1},
			{5},
		},
		U = {
			{5,4,3,2,1},
			{1},
			{5,4,3,2,1},
		},
		V = {
			{5,4,3,2},
			{2,1},
			{5,4,3,2},
		},
		W = {
			{5,4,3,2},
			{2,1},
			{5,4,3,2},
			{2,1},
			{5,4,3,2},
		},
		X = {
			{5,4,2,1},
			{4,3,2},
			{5,4,2,1},
		},
		Y = {
			{5,4,3},
			{3,2,1},
			{5,4,3},
		},
		Z = {
			{5,2,1},
			{5,3,1},
			{5,4,1},
		},
		["!"] = {
		    {5,4,3,1},
		},
		["."] = {
		    {1},
		},
		[","] = {
		    {1},
		    {2},
		},
	}
}
--[[
		 = {
			{},
			{},
			{},
		},
]]
function getblocks(text,height,spacing,efficient)
	if height == nil then
		height = 5
	end
	if spacing == nil then
		spacing = 1
	end
	if efficient == nil then
		efficient = true
	end
	local txttable = texttotable["h"..tostring(height)]
	local returntxttable = {}
	local oddeven = 0
	for i=1,string.len(text) do
		local textslice = string.sub(text,i,i)
		if textslice and txttable[textslice] then
		    table.insert(returntxttable,{})
			local lettertable = txttable[textslice]
			for i,v in pairs(lettertable) do
				oddeven = oddeven + 1
				if oddeven%2 == 0 then -- if even
					table.sort(v,function(a,b)
						return a < b -- sorts it ascending
					end)
				end
				table.insert(returntxttable,v)
			end
		elseif textslice and textslice == " " then
			for i=1, spacing do
				table.insert(returntxttable,{})
			end
		end
	end
	return returntxttable
end
function convrot(int)
    return (int*360)/(math.pi*2)
end
local displayed = {}
local displayid = 0
function displayblocks(tab,cframe,studs,roundrot,blockscale,distance,diff,round,displaymat)
	displayid += 1
	if diff == nil then
		diff = 0
	end
	if studs == nil then
		studs = 3
	end
	if distance == nil then
		distance = 4
	end
	distance *= studs
	if blockscale == nil then
		blockscale = Vector3.new(studs,studs,studs)
	elseif typeof(blockscale) == "number" then
	    blockscale = Vector3.new(blockscale,blockscale,blockscale)
	end
	if typeof(cframe) == "Vector3" then
		cframe = CFrame.new(cframe)
	end
	cframe -= Vector3.new(0,studs,0)
	if round == nil then
		round = false
	end
	if roundrot == nil then
		roundrot = true
	end
	if roundrot then
		local x,y,z = cframe:ToOrientation()
		print(x,y,z)
		local cfr2 = {math.rad(math.round(convrot(x)/90)*90),math.rad(math.round(convrot(y)/90)*90),math.rad(math.round(convrot(z)/90)*90)}
		print(cfr2[1],cfr2[2],cfr2[3])
		cframe = CFrame.new(cframe.Position) * CFrame.fromOrientation(table.unpack(cfr2))
	end
	if round then
		cframe = cframe.Rotation + Vector3.new(math.round(cframe.X/studs)*studs,math.round(cframe.Y/studs)*studs,math.round(cframe.Z/studs)*studs)
		if typeof(diff) == "Vector3" then
			cframe = cframe.Rotation + Vector3.new(cframe.X+diff.X,cframe.Y+diff.Y,cframe.Z+diff.Z)
		elseif diff then
			cframe = cframe.Rotation + Vector3.new(cframe.X+diff,cframe.Y+diff,cframe.Z+diff)
		end
	end
	local length = #tab * studs
	local parttable = {}
	local cfrtable = {}
	for i,v in pairs(tab) do
		local x = i*studs
		for i,v in pairs(v) do
			local y = v*studs
			local part = Instance.new("Part")
			table.insert(parttable,part)
			part.Size = blockscale
			part.Anchored = true
			part.CanCollide = false
			part.Transparency = 0
			if displaymat then
			    part.Material = displaymat
			end
			part.Color = Color3.fromRGB(0,255,0)
			local cfr = cframe * CFrame.new((-length/2)+x,y,-distance)
			if round then
			    cfr = cfr.Rotation + Vector3.new(math.round(cfr.X/studs)*studs,math.round(cfr.Y/studs)*studs,math.round(cfr.Z/studs)*studs)
			end
			table.insert(cfrtable,cfr)
			part.CFrame = cfr
			part.Parent = workspace
		end
	end
	displayed[displayid] = parttable
	return displayid,parttable,cfrtable
end
function deletedisplay(displayide)
	if displayed[displayide] then
		for i,v in pairs(displayed[displayide]) do
			if v then
				pcall(function() v:Destroy() end)
			end
		end
	end
end
returntable.getblocks = getblocks
returntable.displayblocks = displayblocks
returntable.deletedisplay = deletedisplay
returntable.texttotable = texttotable
return returntable
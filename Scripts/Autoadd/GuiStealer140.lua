local Settings = {
 NoCrash = false, -- Setting this to true will make the script EXTREMELY SLOWER, What this does is if true it waits 1 frame for every instance there is.
 IgnoreProperties = {
	'Transparency',
	'BackgroundColor',
	'TextColor',
	'BorderColor',
	'FontFace'
 } -- Add more properties if you'd like, Tho that is not really different.
}

local url = "https://raw.githubusercontent.com/MaximumADHD/Roblox-Client-Tracker/roblox/API-Dump.json"
local HttpService = game:GetService('HttpService');
local jsonData = HttpService:JSONDecode(game:HttpGet(url, true))
local Properties = {}
local BlacklistedProps = Settings.IgnoreProperties

local b = '1234567890'

local History = {}

function StartsDigit(s)
	return b:find(s:sub(1,1))
end

function GetFullName(instance)
	if instance == game:GetService("Players").LocalPlayer then return 'game:GetService("Players").LocalPlayer' end
	local p = instance
	local lo = {}
	while (p ~= game and p.Parent ~= nil) do
		table.insert(lo, p)
		p = p.Parent
	end
	local fullName
	if #lo == 0 then
		return "nil --[[ PARENTED TO NIL OR DESTROYED ]]"
	end
	if lo[#lo].ClassName ~= "Workspace" then
		fullName = 'game:GetService("' .. lo[#lo].ClassName .. '")'
	else
		fullName = "workspace"
	end
	for i = #lo - 1, 1, -1 do
		if lo[i] then
			fullName = fullName .. ':FindFirstChild("' .. lo[i].Name .. '")'
		end
	end
	return fullName:gsub(":FindFirstChild%(." .. game:GetService("Players").LocalPlayer.Name .. '.%)', '.LocalPlayer')
end

local function fix(str) -- removes pattern stuff from string
 local cases = {
    ['"'] = '\"',
    ['%.'] = '',
    ['%$'] = '',
    ['%%'] = '',
    ['%^'] = '',
    ['%('] = '',
    ['%)'] = '',
    ['%['] = '',
    ['%]'] = '',
    ['%+'] = '',
    ['%-'] = '',
 }
 for a, c in next, cases do str = str:gsub(a, c) end
 return str
end

function MakeIdentifier(instance, fullpath)
	local name = instance and instance.Name or 'nil_'
	local allowed = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890_'
	local cases = {
		['\n'] = '_',
		['\\'] = '_',
		["'"] = '_',
		['"'] = '_',
		['%.'] = '_',
		['%$'] = '_',
		['%%'] = '_',
		['%^'] = '_',
		['%('] = '_',
		['%)'] = '_',
		['%['] = '_',
		['%]'] = '_',
		['%+'] = '_',
		['%-'] = '_',
		['?'] = '_'
	}
	if fullpath then
		name = GetFullName(instance)
	else
		for a, c in next, cases do name = name:gsub(a, c) end
	end
	if StartsDigit(name) then
		name = '_' .. name
	end
	if not fullpath then
		for _, v in cases do
			name = name:gsub(_, v)
		end
	end
	local count = 1
	for i, v in History do
		if v.Name:gsub('_%d+', '') == name:gsub("_%d+", '') then
			count = count + 1
		end
	end
	if count ~= 1 then name = name .. '_' .. tostring(count) end
	History[instance] = {Name=name}
	return name
end
function GetIdentifier(instance)
	return History[instance] and History[instance].Name or nil
end
function Handle(data, indent, identifier)
	local dataType = typeof(data)
	local constructors = {
		['string'] = function(data) return "'" .. data:gsub('\\', '\\\\'):gsub('\n', '\\n'):gsub("'", "\\'") .. "'" end,
		['number'] = function(data) return tostring(data) end,
		['Vector3'] = function(data) return string.format("Vector3.new(%f, %f, %f)", data.X, data.Y, data.Z) end,
		['Vector2'] = function(data) return string.format("Vector2.new(%f, %f)", data.X, data.Y) end,
		['UDim'] = function(data) return string.format("UDim.new(%f, %f)", data.Scale, data.Offset) end,
		['UDim2'] = function(data) return string.format("UDim2.new(%f, %f, %f, %f)", data.X.Scale, data.X.Offset, data.Y.Scale, data.Y.Offset) end,
		['CFrame'] = function(data) local components = {data:GetComponents()} return string.format("CFrame.new(%s)", table.concat(components, ", ")) end,
		['Color3'] = function(data) return string.format("Color3.fromRGB(%d, %d, %d)", math.floor(data.R * 255), math.floor(data.G * 255), math.floor(data.B * 255)) end,
		['BrickColor'] = function(data) return string.format("BrickColor.new('%s')", tostring(data)) end,
		['Enum'] = function(data) return string.format("%s", tostring(data)) end,
		['EnumItem'] = function(data) return string.format("%s", tostring(data)) end,
		['Instance'] = function(data) return ('%s'):format(GetFullName(data)) end,
		['boolean'] = function(data) return tostring(data) end,
		['ColorSequence'] = function(data) 
			local colorSeqCode = 'ColorSequence.new({'
			for i, keypoint in ipairs(data.Keypoints) do
				local color = keypoint.Value
				local time = keypoint.Time
				colorSeqCode = colorSeqCode .. ('ColorSequenceKeypoint.new(%f, Color3.fromRGB(%d, %d, %d)),'):format(time, color.R * 255, color.G * 255, color.B * 255)
			end
			colorSeqCode = colorSeqCode:sub(1, -2)
			colorSeqCode = colorSeqCode .. '})'
			return colorSeqCode
		end,
		['NumberSequence'] = function(data) 
			local numSeqCode = 'NumberSequence.new({'
			for i, keypoint in ipairs(data.Keypoints) do
				local value = keypoint.Value
				local time = keypoint.Time
				numSeqCode = numSeqCode .. ('NumberSequenceKeypoint.new(%f, %f),'):format(time, value)
			end
			numSeqCode = numSeqCode:sub(1, -2)
			numSeqCode = numSeqCode .. '})'
			return numSeqCode
		end,
		['Font'] = function(data)
			return ('Font.new("%s", %s, %s)'):format(tostring(data.Family), tostring(data.Weight), tostring(data.Style))
		end
	}
	if constructors[dataType] then
		return constructors[dataType](data)
	else
		return tostring(typeof(data)) .. '.new(' .. tostring(data):gsub(', ', ','):gsub(' ', ''):gsub(',', ', ') .. ')'
	end
end

for _, class in ipairs(jsonData.Classes) do
	if class.MemoryCategory == 'Instances' or class.MemoryCategory == 'Gui' then
		Properties[class.Name] = {}
		for i, v in ipairs(class.Members) do
			if class and class.Name then
				local Ignore = false
				if v.Tags then
					if table.find(v.Tags, 'ReadOnly') then Ignore = true end
				end
				if v.MemberType == 'Property' and not Ignore and v and not table.find(BlacklistedProps, v.Name) then
					table.insert(Properties[class.Name], v)
				end
			end
		end
	end
end

table.insert(Properties['ScreenGui'], {Name='Enabled'})

local ULL = {
 {Name='FillDirection'},
 {Name='HorizontalAlignment'},
 {Name='VerticalAlignment'},
 {Name='SortOrder'},
 {Name='Padding'}
}

Properties['UIListLayout'] = ULL

for i, v in Properties['GuiObject'] do
	table.insert(Properties['TextLabel'], v)
	table.insert(Properties['TextButton'], v)
	table.insert(Properties['ScrollingFrame'], v)
	table.insert(Properties['Frame'], v)
	table.insert(Properties['ImageLabel'], v)
	table.insert(Properties['ImageButton'], v)
	table.insert(Properties['TextBox'], v)
end

local valid = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_'

function genguid()
	local len = 32
	local text = ''
	for i=1,len do
		local n = math.random(1, #valid)
		text = text .. valid:sub(n, n)
	end
	return text
end

local function StealGUI(...)
	local start = tick()

    local selectedObjects = {...}

	for _, Ancestor in next, selectedObjects do
		local bin = {}
		local txt = ''
		local stuff = {Ancestor}
		for i, v in next, Ancestor:GetDescendants() do
		 table.insert(stuff, v)
		end
		for i, v in next, stuff do
			local c = Instance.new(v.ClassName)
			local Identifier = MakeIdentifier(v)
			--[[if v.ClassName == 'LocalScript' or v.ClassName == 'ModuleScript' and v.Enabled then -- For roblox studio (IGNORE)
				local id = genguid()
				txt = txt .. string.format('-- %s\nlocal function %s()\n local script = Instance.new(%s, GXL[\"%s\"])\n script.Name = %s\n %s\nend\n', GetFullName(v), id, Handle(v.ClassName), GetIdentifier(v.Parent), Handle(v.Name), table.concat(v.Source:split('\n'), '\n '))
				scripts = scripts .. 'task.spawn(' .. id .. ')\n']]
			if v.ClassName ~= 'LocalScript' and v.ClassName ~= 'ModuleScript' then
				if Settings.NoCrash then task.wait() end
				table.insert(bin, {Identifier, v.ClassName})
				txt = txt .. string.format("GXL[\"%s\"][\"Parent\"] = %s\n", Identifier, GetIdentifier(v.Parent) and 'GXL[\"' .. GetIdentifier(v.Parent) .. '"]' or MakeIdentifier(v.Parent, true))
				txt = txt .. string.format("GXL[\"%s\"][\"Name\"] = %s\n", Identifier, Handle(fix(v.Name)))
				for PName, PValue in next, Properties[v.ClassName] and Properties[v.ClassName] or {} do
					if table.find(BlacklistedProps, PValue.Name) then continue end
					pcall(function()
					 if PValue.Name == 'Font' then
					   txt = txt .. string.format("GXL[\"%s\"][\"FontFace\"] = %s\n", Identifier, Handle(v.FontFace))
					 else
					  if c[PValue.Name] ~= v[PValue.Name] then	
						txt = txt .. string.format("GXL[\"%s\"][\"%s\"] = %s\n", Identifier, PValue.Name, Handle(v[PValue.Name]))
					  end
					 end
					end)
				end
			end
			txt = txt .. '\n'
		end
		local Bin = 'local GXL = {'
		for a, b in next, bin do
			Bin = Bin .. string.format('\n ["%s"] = Instance.new("%s")%s', b[1], b[2], a ~= #bin and ',' or '\n}\n')
		end
		txt = Bin .. txt
		local time_ = tick() - start
		print(("Successfully stole gui in %.2f seconds!"):format(time_))
        return string.format('--[[\n GXL || MADE BY BALLSMAN3761!!\n Converted %d instances in %.2f seconds\n]]\n%s', #stuff, tick() - start, txt)
	end
end

getgenv().StealUI = StealGUI
getgenv().StealGui = StealGUI
getgenv().GuiAsLua = StealGUI

return StealUI
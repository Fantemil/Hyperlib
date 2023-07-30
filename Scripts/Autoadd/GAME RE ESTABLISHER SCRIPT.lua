local function IsInTable(table, indexes)
	for i,v in next, indexes do
        local found = rawget(table, v)
        if not found then
            return false
        end
    end
    return true
end

local Framework = nil

for i,v in next, getnilinstances() do
	if v:IsA("ModuleScript") then
		local env = require(v)
		if type(env) == "table" then
			if IsInTable(
				env,
				{"Database", "Library", "UI", "Root", "Service", "Events", "Remotes"}
			) then
				v.Parent = game:GetService("ReplicatedStorage").client
				v.Name = "framework"
				Framework = require(v)
			end
		end
	end
end

local function GetNilModuleScriptByEnvironment(Environment)
	for i,v in next, getnilinstances() do
		if v:IsA("ModuleScript") then
			local env = require(v)
			if env == Environment then
				return v
			end
		end
	end
end

local _shared = game:GetService("ReplicatedStorage").SharedModules
local modules = _shared.Parent.client.modules
local content = modules.Parent.content

local processes = {
	{
		Function = function()
			for i,v in next, Framework.Remotes do
				v.Name = i
			end
		end,
		Name = "Remote Names"
	},
	{
		Function = function()
			for i,v in next, Framework.Database do
				local instance = GetNilModuleScriptByEnvironment(v)
				if instance then
					instance.Parent = content
					instance.Name = i .. "Database" --> why you may ask, self.Database[string.gsub(x.Name, "Database", "")] = require(x);
				end
			end
		end,
		Name = "Content Instances"
	},
	{
		Function = function()
			for i,v in next, Framework.Library do
				local instance = GetNilModuleScriptByEnvironment(v)
				if instance then
					instance.Parent = modules
					instance.Name = i
				end
			end
		end,
		Name = "Module Instances" --> {_shared:GetChildren(), modules:GetChildren()} | so i'm going to just put them all in the same folder
	},
}

for i,v in next, processes do
	print("Processing", v.Name)
	local success, output = pcall(v.Function);
	(success and print or error)(i == #processes and "Complete" or success and "Success, Moving on." or output:match("%d+: (.+)"))
	if not success then
		break
	end
end
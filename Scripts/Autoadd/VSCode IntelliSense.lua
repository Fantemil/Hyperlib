local HttpService = game:GetService('HttpService')

function urlRequest(i)
    return syn.request(i)
end

function urlGet(i)
    return syn.request({
        Url = i,
        Method = 'GET'
    }).Body
end

pcall(function()
	local info = game:GetService("MarketplaceService"):GetProductInfo(5969291145)
	local version = tonumber(info.Description:match("version: (%d+)"))
	if script.Parent.CurrentVersion.Value < version then
		warn("[Roblox LSP] Plugin is outdated! please install the new version.")
	end
end)

local Connected = false
local Settings = {
    port = 27843,
    startAutomatically = true,
    exclude = {}
}

local function AddChild(instance, parent, depth)
	for _, exclude in pairs(Settings.exclude) do
		if instance == exclude then
			return
		end
	end
	local child = {
		Name = instance.Name,
		ClassName = instance.ClassName
	}
	parent[#parent+1] = child
	if depth < 14 then
		local children = instance:GetChildren()
		if #children ~= 0 then
			child.Children = {}
			for _, child2 in pairs(children) do
				AddChild(child2, child.Children, depth + 1)
			end
		end
	end
end

local LastUpdate = nil
local ShouldUpdate = false

local Services = {
	game:GetService("Workspace"),
	game:GetService("Players"),
	game:GetService("Lighting"),
	game:GetService("ReplicatedFirst"),
	game:GetService("ReplicatedStorage"),
}

local function utf8Len(str, start, finish)
	local len = 0
	for _ = 1, 10000 do
		local clen, pos = utf8.len(str, start, finish, true)
		if clen then
			len = len + clen
			break
		else
			len = len + 1 + utf8.len(str, start, pos - 1, true)
			start = pos + 1
		end
	end
	return len
end

local Failed = false

local function Update(force)
    if not Connected or not Settings then
        return
	end
    local tree = {Children = {}}
	for _, service in pairs(Services) do
		AddChild(service, tree.Children, 1)
	end
	local datamodel = HttpService:JSONEncode(tree)
	if utf8Len(datamodel, 1, -1) >= 2.8e+6 and not Failed then
		Failed = true
		warn("[Roblox LSP] Failed to send data: Size of the Instance Tree is greater than 3mb, exclude instances in the plugin settings.")
		return
	end
	Failed = false
    if not force and datamodel == LastUpdate then
        return
	end
	LastUpdate = datamodel
	local success, ret = pcall(function()
		return urlRequest({
			Url = "http://127.0.0.1:" .. Settings.port .. "/update/",
			Method = 'POST',
			Headers = {
				["Content-Type"] = "application/json",
			},
			Body = HttpService:JSONEncode({
				DataModel = tree,
				Version = 2
			}),
		})	
	end)
	if not success then
		warn("[Roblox LSP] Failed to connect: " .. tostring(ret))
		warn("Make sure the VSCode Extension is running and hosting: http://127.0.0.1:" .. Settings.port)
	end
end

local function HttpEnabled()
    local success, err = pcall(function()
        urlGet('http://www.google.com/')
	end)
    return success
end

local function IsOnPath(instance)
    if not Settings then
        return
	end
	local _, ret = pcall(function()
		for _, exclude in pairs(Settings.exclude) do
			if typeof(exclude) ~= "Instance" then
				warn("[Roblox LSP] " .. tostring(exclude) .. " is not an Instance")
				continue
			end
			if instance:IsDescendantOf(exclude) then
				return false
			end
		end
		for _, service in pairs(Services) do
			if instance:IsDescendantOf(service) then
				return true
			end
		end
	end)
    return ret or false
end

if Settings and Settings.startAutomatically then
	if not HttpEnabled() then
		warn("[Roblox LSP] HttpService.Enabled is false, run in the command bar: game.HttpService.HttpEnabled = false")
    else
		Connected = true
		print("[Roblox LSP] Connecting")
		Update()
    end
end

Failed = false
if not Connected then
    if not HttpEnabled() then
        warn("[Roblox LSP] HttpService.Enabled is false, run in the command bar: game.HttpService.HttpEnabled = false")
    else
        print("[Roblox LSP] Connecting")
        Connected = true
        Update(true)
    end
end

local function ListenToChanges(instance)
	instance:GetPropertyChangedSignal("Name"):Connect(function()
		if Connected then
			ShouldUpdate = true
		end
	end)
	instance.AncestryChanged:Connect(function()
		if not instance.Parent then
			return
		end
		if Connected then
			ShouldUpdate = true
		end
	end)
end

game.DescendantAdded:Connect(function(descendant)
    if not Connected then
        return
    end
	if IsOnPath(descendant) then
        pcall(ListenToChanges, descendant)
		ShouldUpdate = true
    end
end)

game.DescendantRemoving:Connect(function(descendant)
    if not Connected then
        return
    end
	if IsOnPath(descendant) then
		ShouldUpdate = true
    end
end)

for _, service in pairs(Services) do
    for _, descendant in pairs(service:GetDescendants()) do
        if IsOnPath(descendant) then
            pcall(ListenToChanges, descendant)
        end
    end
end

while wait(0.5) do
	if Connected then
		if ShouldUpdate then
			ShouldUpdate = false
			Update()
		end
		wait(0.5)
		pcall(function()
			local last = urlGet("http://127.0.0.1:" .. Settings.port .. "/last/")
			if last == "" then
				wait(3)
				print("[Roblox LSP] Reconnecting")
				Update(true)
			end
		end)
	end
end
	local framework = setmetatable({
	dependencies = {
		utils = {}
	},
	data = {},
	components = {
		base = {}
	},
	popups = {},
	pages = {
		startup = {},
		navbar = {},
		exploitSettings = {
			optionTypes = {}
		},
		editor = {},
		localScripts = {},
		globalScripts = {}
	}
}, {
	__index = function(t, k)
		local res, split = t, string.split(k, ".");
		for i, v in split do
			res = rawget(res, v);
		end
		return res;
	end
});

do
	--[[ Connection ]]--
	
	local connection = {};
	connection.__index = connection;
	
	function connection.new(signal: {any}, fn: (any))
		return setmetatable({
			_signal = signal,
			_fn = fn
		}, connection);
	end
	
	function connection:Disconnect()
		self._signal[self] = nil;
	end
	
	--[[ Signal ]]--
	
	local signal = {};
	signal.__index = signal;
	
	function signal.new()
		return setmetatable({}, signal);
	end
	
	function signal:Connect(fn: (any))
		local conn = connection.new(self, fn);
		self[conn] = true;
		return conn;
	end
	
	function signal:Once(fn: (any))
		local conn; conn = self:Connect(function(...)
			conn:Disconnect();
			fn(...);
		end);
		return conn;
	end
	
	function signal:Fire(...)
		for conn, _ in self do
			task.spawn(conn._fn, ...);
		end
	end
	
	function signal:Wait()
		local thread = coroutine.running();
		local conn; conn = self:Connect(function(...)
			conn:Disconnect();
			task.spawn(thread, ...);
		end);
		return coroutine.yield();
	end
	
	function signal:DisconnectAll()
		table.clear(self);
	end
	
	framework.dependencies.signal = signal;
end

do
	--[[ Variables ]]--
	
	local runService = game:GetService("RunService");
	local tweenService = game:GetService("TweenService");
	
	local dynamicParent;
	
	--[[ Setup ]]--
	
	if gethui then
		dynamicParent = gethui();
	elseif runService:IsRunning() then
		dynamicParent = runService:IsStudio() and game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui") or game:GetService("CoreGui");
	else
		dynamicParent = game:GetService("StarterGui");
	end
	
	--[[ Module ]]--
	
	local utils = {};
	
	function utils:Create(className: string, properties: {any}, children: {any}?): Instance
		local instance = Instance.new(className);
		for i, v in properties do
			if typeof(instance[i]) == "RBXScriptSignal" then
				instance[i]:Connect(v);
			elseif i ~= "Parent" then
				instance[i] = v;
			end
		end
		if children ~= nil then
			for i, v in children do
				v.Parent = instance;
			end
		end
		instance.Parent = properties.Parent;
		return instance;
	end
	
	function utils:Tween(instance: Instance, duration: number, properties: {any}, ...): Tween
		local tween = tweenService:Create(instance, TweenInfo.new(duration, ...), properties);
		tween:Play();
		return tween;
	end
	
	function utils:DynamicParent(instance: Instance): Instance
		instance.Parent = dynamicParent;
		return instance;
	end
	
	framework.dependencies.utils.instance = utils;
end

do
	--[[ Variables ]]--
	
	local denominations = {
		"K", "M", "B", "T", "q", "Q", "s", "S", "O", "N", "d", "U", "D"
	};
	
	--[[ Module ]]--
	
	local utils = {};
	
	function utils:Round(input: number, float: number): number
		local bracket = 1 / float;
		return math.round(input * bracket) / bracket;
	end
	
	function utils:FormatAsCount(input: number, float: number): string
		if input < 1000 then
			return tostring(input);
		end
		local denominationIndex = math.floor(math.log10(input) / 3);
		return tostring(self:Round(input / (10 ^ (denominationIndex * 3)), float)) .. tostring(denominations[denominationIndex]);
	end
	
	function utils:FormatAsLiteralCount(input: number): string
		local x = string.gsub(string.reverse(tostring(input)), "(%d%d%d)", "%1,");
		return string.gsub(string.reverse(x), "^,", "");
	end
	
	function utils:IsWithin2DBounds(position: Vector2, topLeft: Vector2, bottomRight: Vector2): boolean
		return position.X >= topLeft.X and position.X <= bottomRight.X and position.Y >= topLeft.Y and position.Y <= bottomRight.Y;
	end
	
	framework.dependencies.utils.maths = utils;
end

do
	--[[ Module ]]--
	
	local utils = {};
	
	function utils:DeepCopy(x: {any})
		local y = {};
		for i, v in x do
			y[i] = type(v) == "table" and self:DeepCopy(v) or v;
		end
		return y;
	end
	
	function utils:Concatenate(x: {any}, y: {any})
		if y ~= nil then
			for i, v in y do
				table.insert(x, v);
			end
		end
		return x;
	end
	
	function utils:DeepOverwrite(x: {any}, y: {any}, inclusive: boolean?)
		if y == nil then
			return x;
		end
		for i, v in y do
			if x[i] == nil then
				if inclusive then
					x[i] = v;
				end
			else
				local _type = typeof(x[i]);
				if _type == typeof(v) then
					if _type == "table" then
						self:DeepOverwrite(x[i], v);
					else
						x[i] = v;
					end
				end
			end
		end
		return x;
	end
	
	framework.dependencies.utils.table = utils;
end

do
	--[[ Module ]]--
	
	local utils = {};
	
	function utils:CapitaliseFirst(str: string): string
		return string.upper(string.sub(str, 1, 1)) .. string.lower(string.sub(str, 2));
	end
	
	function utils:ConvertToCamelCase(str: string): string
		local res = "";
		for i, v in string.split(str, " ") do
			res ..= i == 1 and string.lower(v) or self:CapitaliseFirst(v);
		end
		return res;
	end
	
	framework.dependencies.utils.string = utils;
end

do
	--[[ Variables ]]--
	
	local httpService = game:GetService("HttpService");
	
	local httpRequest = request or http_request or (syn and syn.request);
	
	local runcode = runcode and clonefunction(runcode) or function(scr)
		loadstring(scr)();
	end
	
	--[[ Module ]]--
	
	local utils = {};
	
	function utils:Request(url: string, method: string?, headers: {any}?, body: any?): string
		local s, r = pcall(httpRequest, {
			Url = url,
			Method = method or "GET",
			Headers = headers,
			Body = type(body) == "table" and httpService:JSONEncode(body) or body
		});
		if s == false or r.Success == false or r.StatusCode ~= 200 then
			return false;
		end
		return r.Body;
	end
	
	function utils:Execute(scr: string, ...)
		task.spawn(runcode, scr);
	end
	
	framework.dependencies.utils.internal = utils;
end

do
	--[[ Enum ]]--
	
	local codexEnum = {};
	
	function codexEnum.__index(t, k)
		return t._map[k] or codexEnum[k];
	end
	
	function codexEnum.new(items: {any}): {any}
		local map = {};
		
		for i, v in items do
			map[v] = i;
		end
		
		return setmetatable({
			_map = map,
			_items = items
		}, codexEnum);
	end
	
	function codexEnum:GetEnumItems()
		return self._items;
	end
	
	--[[ Module ]]--
	
	framework.dependencies.codexEnum = {
		NavbarState = codexEnum.new({ "Hidden", "Partial", "Full" })
	};
end

do
	--[[ Variables ]]--
	
	local httpService = game:GetService("HttpService");
	
	local signal = framework.dependencies.signal;
	local tableUtils = framework.dependencies.utils.table;
	
	local signalCache = {};
	local settingsCache = {
		executor = {
			autoExecute = true,
			autoSaveTabs = false,
			fps = {
				unlocked = false,
				vSync = false,
				value = 60
			}
		},
		player = {
			walkSpeed = {
				enabled = false,
				value = 16
			},
			jumpPower = {
				enabled = false,
				value = 50
			},
		},
		serverHop = {
			priority = "Most Players"
		}
	};
	
	local userSettings = {};
	
	--[[ Functions ]]--
	
	local function saveUserSettings()
		if writefile then
			writefile("codexSettings.json", httpService:JSONEncode(tableUtils:DeepCopy(settingsCache)));
		end
	end
	
	local function createAutosaveMetatable(options: {any}, hierarchy: string)
		for i, v in options do
			if type(v) == "table" then
				options[i] = createAutosaveMetatable(v, hierarchy == "" and i or string.format("%s.%s", hierarchy, i));
			end
		end
	
		return setmetatable({}, {
			__index = function(_, k)
				return options[k];
			end,
			__newindex = function(_, k, v)
				options[k] = v;
				saveUserSettings();
				userSettings:FirePropertyChangedSignal(hierarchy == "" and k or string.format("%s.%s", hierarchy, k), v);
			end,
			__iter = function()
				return next, options;
			end
		});
	end
	
	--[[ Module ]]--
	
	function userSettings:Initialize()
		if isfile and isfile("codexSettings.json") then
			local succ, res = pcall(httpService.JSONDecode, httpService, readfile("codexSettings.json"));
			if succ then
				tableUtils:DeepOverwrite(settingsCache, res);
			else
				task.defer(error, "settings file is corrupted");
			end
		end
		self.cache = createAutosaveMetatable(settingsCache, "");
	end
	
	function userSettings:GetPropertyChangedSignal(path: string)
		if signalCache[path] == nil then
			signalCache[path] = signal.new();
		end
		return signalCache[path];
	end
	
	function userSettings:FirePropertyChangedSignal(path: string, value: any)
		local sig = signalCache[path];
		if sig then
			sig:Fire(value);
		end
	end
	
	framework.data.userSettings = userSettings;
end

do
	--[[ Variables ]]--
	
	local changelog = {
		{
			stamp = "2023-10-07T17:38:21Z",
			data = {
				"98% UNC Success Rate",
				"Added Server Hopper",
				"Added FPS Settings",
				"Added Auto Save Tabs",
				"Bug Fixes"
			}
		},
		{
			stamp = "2023-10-06T17:47:39Z",
			data = {
				"Updated for V2.596",
				"Bug Fixes"
			}
		},
		{
			stamp = "2023-09-28T10:43:41Z",
			data = {
				"Added Save Scripts from Tabs",
				"Premium Whitelist Page",
				"Game Hub Shows Hot Scripts On Launch",
				"Toggleable Auto Execute"
			}
		},
		{
			stamp = "2023-09-27T01:00:04Z",
			data = {
				"Fixed Bugs in Filesystem Functions",
				"SkyHub and BananaHub Fixed",
				"Performance Upgrades"
			}
		},
		{
			stamp = "2023-09-26T20:16:21Z",
			data = {
				"UI Revamp!",
				"New Whitelist System",
				"New Security Measures [Banwave Bypass]",
				"Added Tabs",
				"Added Save Scripts",
				"Bug & Performance Fixes"
			}
		}
	};
	
	--[[ Module ]]--
	
	framework.data.internalSettings = {
		changelog = changelog
	};
end

do
	--[[ Variables ]]--
	
	local signal = framework.dependencies.signal;
	local internalUtils = framework.dependencies.utils.internal;
	local tableUtils = framework.dependencies.utils.table;
	
	local httpService = game:GetService("HttpService");
	
	local savedScripts = {
		accumulator = 0,
		cache = {},
		onScriptAdded = signal.new(),
		onScriptRemoved = signal.new()
	};
	
	--[[ Functions ]]--
	
	local function reassignIndexes(cache: {any})
		for i, v in cache do
			v.index = i;
		end
		return cache;
	end
	
	local function loadScriptCache()
		if isfile and isfile("codexScriptCache.json") then
			local s, r = pcall(httpService.JSONDecode, httpService, readfile("codexScriptCache.json"));
			if s and type(r) == "table" then
				local accumulation = 0;
				local cache = {};
				local hasFoundDuplicateIndex = false;
				for i, v in r do
					if not (type(v) == "table" and v.title and v.description and v.content and v.index and v.autoExecute ~= nil) then
						continue;
					end
	
					if v.index > accumulation then
						accumulation = v.index;
					end
	
					if hasFoundDuplicateIndex == false then -- backwards fix from an old broken update and/or someone trying to fuck with the system
						for i2, v2 in cache do
							if v2.index == v.index then
								hasFoundDuplicateIndex = true;
							end
						end
					end
					
					v.onAutoExecuteToggled = signal.new();
					cache[#cache + 1] = hasFoundDuplicateIndex and reassignIndexes(v) or v;
				end
				savedScripts.accumulator = accumulation;
				savedScripts.cache = cache;
			end
		end
	end
	
	local function saveScriptCache()
		if writefile then
			local cache = tableUtils:DeepCopy(savedScripts.cache);
			for i, v in cache do
				v.onAutoExecuteToggled = nil;
			end
			writefile("codexScriptCache.json", httpService:JSONEncode(cache));
		end
	end
	
	--[[ Module ]]--
	
	function savedScripts:Initialize()
		loadScriptCache();
		for i, v in savedScripts.cache do
			if v.autoExecute then
				task.spawn(function()
					internalUtils:Execute(v.content);
				end);
			end
		end
	end
	
	function savedScripts:Get(index: number)
		for i, v in self.cache do
			if v.index == index then
				return i, v;
			end
		end
	end
	
	function savedScripts:Add(title: string, description: string, content: string)
		self.accumulator += 1;
		local index = self.accumulator;
		
		local newScript = {
			title = title,
			description = description,
			content = content,
			index = index,
			autoExecute = false,
			onAutoExecuteToggled = signal.new()
		};
		
		self.cache[#self.cache + 1] = newScript;
		self.onScriptAdded:Fire(newScript);
		saveScriptCache();
	end
	
	function savedScripts:Remove(index: number)
		local i, save = self:Get(index);
		if save then
			table.remove(self.cache, i);
			self.onScriptRemoved:Fire(save);
			saveScriptCache();
		end
	end
	
	function savedScripts:ToggleAutomaticExecution(index: number, state: boolean)
		local _, save = self:Get(index);
		if save then
			save.autoExecute = state;
			save.onAutoExecuteToggled:Fire(state);
			saveScriptCache();
		end
	end
	
	framework.data.savedScripts = savedScripts;
end

do
	framework.data.builtInScripts = {
		{
			title = "Dark Dex V4",
			description = "A powerful game explorer GUI. Shows every instance of the game and all their properties. Useful for developers.",
			icon = "rbxassetid://14806198159",
			content = "local file = \"dexV4.lua\"; local raw = isfile and isfile(file) and readfile(file); raw = raw or game:HttpGetAsync(\"https://raw.githubusercontent.com/loglizzy/dexV4/main/source.lua\"); if isfile then task.spawn(writefile, file, game:HttpGet(url)); end loadstring(raw)();"
		},
		{
			title = "Unnamed ESP",
			description = "Player ESP for Roblox, fully undetectable, uses built in drawing API.",
			icon = "rbxassetid://14806221310",
			content = "pcall(function() loadstring(game:HttpGet(\"https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua\"))(); end);"
		},
		{
			title = "Hydroxide",
			description = "General purpose pen-testing tool for games on the Roblox engine",
			icon = "rbxassetid://14806229032",
			content = "loadstring(game:HttpGetAsync(\"https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/init.lua\"))(); loadstring(game:HttpGetAsync(\"https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ui/main.lua\"))();"
		},
		{
			title = "Infinite Yield",
			description = "Admin command line script with 300+ commands and 6 years of development",
			icon = "rbxassetid://14806239733",
			content = "loadstring(game:HttpGetAsync(\"https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source\"))();"
		},
		{
			title = "Owl Hub",
			description = "Owl Hub is a free Roblox script hub developed by Google Chrome and CriShoux. It currently has 30+ games.",
			icon = "rbxassetid://14806252030",
			content = "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt\"))();"
		}
	};
end

do
	--[[ Variables ]]--
	
	local signal = framework.dependencies.signal;
	local tableUtils = framework.dependencies.utils.table;
	
	local httpService = game:GetService("HttpService");
	
	local tabSystem = {
		accumulator = 1,
		selected = nil,
		cache = {
			{
				title = "Note",
				content = "-- This is the real Codex UI but Modified.",
				index = 1
			}
		},
		onTabCreated = signal.new(),
		onTabRemoved = signal.new(),
		onTabSelected = signal.new()
	};
	
	--[[ Functions ]]--
	
	local function reassignIndexes(cache: {any})
		for i, v in cache do
			v.index = i;
		end
		return cache;
	end
	
	local function loadTabCache()
		if isfile and isfile("codexTabs.json") then
			local s, r = pcall(httpService.JSONDecode, httpService, readfile("codexTabs.json"));
			if s and type(r) == "table" then
				local accumulation = 0;
				local cache = {};
				local hasFoundDuplicateIndex = false;
				for i, v in r do
					if not (type(v) == "table" and v.title and v.content and v.index) then
						continue;
					end
	
					if v.index > accumulation then
						accumulation = v.index;
					end
	
					if hasFoundDuplicateIndex == false then -- backwards fix from an old broken update and/or someone trying to fuck with the system
						for i2, v2 in cache do
							if v2.index == v.index then
								hasFoundDuplicateIndex = true;
							end
						end
					end
	
					cache[#cache + 1] = hasFoundDuplicateIndex and reassignIndexes(v) or v;
				end
				tabSystem.accumulator = accumulation;
				tabSystem.cache = cache;
			end
		end
	end
	
	--[[ Module ]]--
	
	function tabSystem:Initialize()
		loadTabCache();
	end
	
	function tabSystem:Get(index: number)
		for i, v in self.cache do
			if v.index == index then
				return i, v;
			end
		end
	end
	
	function tabSystem:Add(title: string, content: string?)
		self.accumulator += 1;
		local index = self.accumulator;
		
		local newTab = {
			title = title,
			content = content or "print('Hello World!');",
			index = index
		};
		
		self.cache[#self.cache + 1] = newTab;
		self.onTabCreated:Fire(newTab);
		self:Select(index);
	end
	
	function tabSystem:Remove(index: number)
		if #self.cache > 1 then
			local i, tab = self:Get(index);
			if tab then
				if self.selected == tab then
					self:Select(self.cache[i == 1 and 2 or 1].index);
				end
				table.remove(self.cache, i);
				self.onTabRemoved:Fire(tab);
			end
		end
	end
	
	function tabSystem:Select(index: number)
		local _, tab = self:Get(index);
		if tab and (self.selected == nil or tab.index ~= self.selected.index) then
			self.selected = tab;
			self.onTabSelected:Fire(tab);
		end
	end
	
	function tabSystem:UpdateContent(index: number, content: string)
		local _, tab = self:Get(index);
		if tab then
			tab.content = content;
		end
	end
	
	function tabSystem:Save()
		if writefile then
			writefile("codexTabs.json", httpService:JSONEncode(tableUtils:DeepCopy(self.cache)));
		end
	end
	
	framework.data.tabSystem = tabSystem;
end

do
	--[[ Variables ]]--
	
	local instanceUtils = framework.dependencies.utils.instance;
	local tableUtils = framework.dependencies.utils.table;
	
	--[[ Module ]]--
	
	framework.components.base.textLabel = (function(overwriteProps: {any}, children: {any}): Instance
		return instanceUtils:Create("TextLabel", tableUtils:DeepOverwrite({
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold),
			Size = UDim2.new(),
			TextColor3 = Color3.new(1, 1, 1),
			TextSize = 14,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center
		}, overwriteProps, true), children);
	end);
end

do
	--[[ Variables ]]--
	
	local instanceUtils = framework.dependencies.utils.instance;
	local tableUtils = framework.dependencies.utils.table;
	
	--[[ Module ]]--
	
	framework.components.base.textBox = (function(overwriteProps: {any}, children: {any}): Instance
		return instanceUtils:Create("TextBox", tableUtils:DeepOverwrite({
			AutomaticSize = Enum.AutomaticSize.X,
			BackgroundColor3 = Color3.fromRGB(58, 58, 74),
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
			PlaceholderText = "Value...",
			Size = UDim2.new(0, 0, 0, 32),
			Text = "",
			TextColor3 = Color3.fromRGB(159, 164, 186),
			TextSize = 14,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center
		}, overwriteProps, true), tableUtils:Concatenate({
			instanceUtils:Create("UIPadding", {
				Name = "padding",
				PaddingLeft = UDim.new(0, 10),
				PaddingRight = UDim.new(0, 10)
			}),
			instanceUtils:Create("UICorner", {
				Name = "corner",
				CornerRadius = UDim.new(0, 6)
			})
		}, children));
	end);
end

do
	--[[ Variables ]]--
	
	local instanceUtils = framework.dependencies.utils.instance;
	local tableUtils = framework.dependencies.utils.table;
	
	--[[ Module ]]--
	
	framework.components.base.textButton = (function(overwriteProps: {any}, children: {any}): Instance
		return instanceUtils:Create("TextButton", tableUtils:DeepOverwrite({
			AutomaticSize = Enum.A
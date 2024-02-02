local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

_G.Debug = false

if not _G.Debug then
    _G.Window = OrionLib:MakeWindow({Name = "Beat your meat", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
elseif _G.Debug then
	_G.Window = OrionLib:MakeWindow({Name = "DebugMode", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
end

local Tab = _G.Window:MakeTab({
	Name = "Tab 1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

function SimpleDecompile(module)
    local Module = require(module)
    local DecompiledModule = ""

    local function processTable(tab, indent)
        for key, value in pairs(tab) do
            if typeof(value) == "table" then
                DecompiledModule = DecompiledModule .. ("\t"):rep(indent) .. key .. " = {\n"
                processTable(value, indent + 1)
                DecompiledModule = DecompiledModule .. ("\t"):rep(indent) .. "}\n"
            elseif typeof(value) == "function" then
                DecompiledModule = DecompiledModule .. ("\t"):rep(indent) .. key .. " = function()\n\t\t-- function body\n\tend,\n"
            else
                DecompiledModule = DecompiledModule .. ("\t"):rep(indent) .. key .. " = " .. tostring(value) .. ",\n"
            end
        end
    end

    processTable(Module, 0)
    
    return DecompiledModule
end


local CopyDecompiled = false

Tab:AddTextbox({
	Name = "Enter Script Path",
	TextDisappearing = true,
	Callback = function(v)
		local a = (v)
		local b = SimpleDecompile(a)
		print(b)
		if CopyDecompiled then
			setclipboard(b)
		end
	end
})

local Tab2 = _G.Window:MakeTab({
	Name = "Script Locations",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


Tab2:AddToggle({
	Name = "Copy decompiled script",
	Default = false,
	Callback = function(v)
		CopyDecompiled = v
	end
})

local function Label(text, text2)
	Tab2:AddButton({
		Name = text,
		Callback = function()
			local a = text2
			local b = SimpleDecompile(a)
			print(b)
			if CopyDecompiled then
				setclipboard(b)
			end
		end
	})
end

for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
	if v:IsA"ModuleScript" then
		Label(v.Name, v)
	end
end

for i,v in pairs(game.ReplicatedFirst:GetDescendants()) do
	if v:IsA"ModuleScript" then
		Label(v.Name, v)
	end
end

for i,v in pairs(game.Workspace:GetDescendants()) do
	if v:IsA"ModuleScript" then
	    Label(v.Name, v)
	end
end
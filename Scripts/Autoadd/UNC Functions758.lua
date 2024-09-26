-- put this in autoexc for 48 unc functions will add on or replace some so delete the ones you already have (that is if they work)
-- 54/112 48% NOTE: u need to put queue_on_teleport in ur autoexec
-- Shoutout to me (Sky/jazminethecooles2001), luau, and vxsty
-- if this doesnt work try just executing this or executing the ones u need or one by one or so
if not getgenv then
    getfenv().getgenv = function(layer)
        return getfenv(layer)
    end
end
getgenv().clonefunction = function(func)
    return function(...)
        local done = func(...)
        local toreturn = {}
        if type(done) == "table" then
            for i, v in pairs(done) do
                toreturn[i] = v
            end
        else
            toreturn = done
        end
        return toreturn
    end
end
getgenv().cloneref = function(a)
	local s, _ = pcall(function() return a:Clone() end) return s and _ or a
end
if not getgenv().crypt then
    getgenv().crypt = {}
end
getgenv().crypt.base64decode = function(data)
    local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    data = string.gsub(data, '[^'..b..'=]', '')
    return (data:gsub('.', function(x)
        if x == '=' then return '' end
        local r, f = '', (b:find(x) - 1)
        for i = 6, 1, -1 do
            r = r .. (f % 2^i - f % 2^(i - 1) > 0 and '1' or '0')
        end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if #x ~= 8 then return '' end
        local c = 0
        for i = 1, 8 do
            c = c + (x:sub(i, i) == '1' and 2^(8 - i) or 0)
        end
        return string.char(c)
    end))
end
getgenv().encrypt64k = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
getgenv().crypt.base64encode = function(data)
    return ((data:gsub('.', function(x) 
        local r,b='',x:byte()
        for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return getgenv().encrypt64k:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end
-- creds to vxsty
getgenv().crypt.generatebytes = function(size)
	if type(size) ~= 'number' then
		return error('missing arguement #1 to \'generatebytes\' (number expected)')
	end
	return getgenv().crypt.generatekey(size) -- must run this unc fix first
end
-- creds to vxsty
getgenv().crypt.generatekey = function(optionalSize)
	local key = ''
	local a = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
	for i = 1, optionalSize or 44 do
		local n = math.random(1, #a)
		key = key .. a:sub(n, n)
	end
	return getgenv().crypt.base64encode(key)
end
-- vxsty made this
getgenv().debugg = {}
getgenv().debugg.getinfo = function(thread)
 local CurrentLine = tonumber(debug.info(thread, 'l'))
 local Source = debug.info(thread, 's')
 local name = debug.info(thread, 'n')
 local numparams, isvrg = debug.info(thread, 'a')
 if #name == 0 then name = nil end
 local a, b = debug.info(thread, 'a')
 return {
  ['currentline'] = CurrentLine,
  ['Source'] = Source,
  ['name'] = tostring(name),
  ['numparams'] = tonumber(numparams),
  ['is_vararg'] = isvrg and 1 or 0,
  ['short_src'] = tostring(Source:sub(1, 60))
  }
end
-- vxsty made this
getgenv().getcallingscript = function()
    local s = debug.info(1, 's')
    for i, v in next, game:GetDescendants() do
     if v:GetFullName() == s then return v end
    end
    return nil
end
getgenv().gethui = function()
    return game:GetService("CoreGui")
end
getgenv().getscripts = function()
	local stuff = game:GetDescendants()
	local scripts = {}
	for i, v in pairs(stuff) do
		if v:IsA("ModuleScript") or v:IsA("LocalScript") then
			table.insert(scripts,v)
		end
	end
end
getgenv().hookfunction = function(func, rep)
	for i,v in pairs(getfenv()) do
		if v == func then
			getfenv()[i] = rep
		end
	end
end
getgenv().identifyexecutor = function()
    return "Sky's, Luau, vxsty, jLn0n UNC"
end
getgenv().iscclosure = function(func)
    local toreturn = false
    for i,v in pairs(getgenv()) do
        if v == func then
            toreturn = true
        end
    end
    return toreturn
end
getgenv().islclosure = function(func)
    local toreturn = true
    for i,v in pairs(getgenv()) do
        if v == func then
            toreturn = false
        end
    end
    return toreturn
end
getgenv().UISFTE = game:GetService("UserInputService")

getgenv().IsWindowFocuseddsa = true
getgenv().dsaThread = coroutine.running()
getgenv().con1 = getgenv().UISFTE.InputChanged:Connect(function()
	coroutine.resume(getgenv().dsaThread)
end)
getgenv().con2 = getgenv().UISFTE.WindowFocused:Connect(function()
	coroutine.resume(getgenv().dsaThread)
end)
coroutine.yield()
getgenv().con1:Disconnect()
getgenv()con2:Disconnect()
getgenv().IsWindowFocuseddsa = true
getgenv().UISFTE.WindowFocused:Connect(function()
	getgenv().IsWindowFocuseddsa = true
end)
getgenv().UISFTE.WindowFocusReleased:Connect(function()
	getgenv().IsWindowFocuseddsa = false
end)

getgenv().isrbxactive = function()
	return getgenv().IsWindowFocuseddsa
end
getgenv().isgameactive = getgenv().isrbxactive
getgenv().isreadonly = function(instance, property)
	return not (pcall(function()
		instance[property] = instance[property] -- errors if readonly, or nonexistant
	end))
end
getgenv().messagebox = function(text,caption,style,callback)
    if style == 0 then
        local Converted = {
            ["_messagebox"] = Instance.new("ScreenGui");
            ["_Frame"] = Instance.new("Frame");
            ["_ok"] = Instance.new("TextButton");
            ["_LocalScript"] = Instance.new("LocalScript");
            ["_shadow"] = Instance.new("Frame");
            ["_main"] = Instance.new("TextLabel");
            ["_title"] = Instance.new("TextLabel");
            ["_x"] = Instance.new("TextButton");
            ["_LocalScript1"] = Instance.new("LocalScript");
            ["_Dragify"] = Instance.new("LocalScript");
        }
        
        Converted["_messagebox"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        Converted["_messagebox"].Name = "messagebox"
        Converted["_messagebox"].Parent = game:GetService("CoreGui")
        
        Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_Frame"].BorderSizePixel = 0
        Converted["_Frame"].Position = UDim2.new(0.456591636, 0, 0.420382172, 0)
        Converted["_Frame"].Size = UDim2.new(0, 153, 0, 163)
        Converted["_Frame"].Parent = Converted["_messagebox"]
        
        Converted["_ok"].Font = Enum.Font.SourceSans
        Converted["_ok"].Text = "OK"
        Converted["_ok"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_ok"].TextSize = 14
        Converted["_ok"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_ok"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_ok"].BorderSizePixel = 2
        Converted["_ok"].Position = UDim2.new(0.473963529, 0, 0.792376757, 0)
        Converted["_ok"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_ok"].ZIndex = 2
        Converted["_ok"].Name = "ok"
        Converted["_ok"].Parent = Converted["_Frame"]
        
        Converted["_shadow"].BackgroundColor3 = Color3.fromRGB(240.0000160932541, 240.0000160932541, 240.0000160932541)
        Converted["_shadow"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_shadow"].BorderSizePixel = 0
        Converted["_shadow"].Position = UDim2.new(0, 0, 0.736196339, 0)
        Converted["_shadow"].Size = UDim2.new(0, 153, 0, 43)
        Converted["_shadow"].Name = "shadow"
        Converted["_shadow"].Parent = Converted["_Frame"]
        
        Converted["_main"].Font = Enum.Font.SourceSans
        Converted["_main"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].TextSize = 14
        Converted["_main"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_main"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].BorderSizePixel = 0
        Converted["_main"].Position = UDim2.new(0.339869291, 0, 0.202453986, 0)
        Converted["_main"].Size = UDim2.new(0, 48, 0, 50)
        Converted["_main"].Name = "main"
        Converted["_main"].Text = text
        Converted["_main"].Parent = Converted["_Frame"]
        
        Converted["_title"].Font = Enum.Font.SourceSans
        Converted["_title"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].TextSize = 14
        Converted["_title"].TextXAlignment = Enum.TextXAlignment.Left
        Converted["_title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].BorderSizePixel = 0
        Converted["_title"].Size = UDim2.new(0, 121, 0, 33)
        Converted["_title"].Name = "title"
        Converted["_title"].Text = caption
        Converted["_title"].Parent = Converted["_Frame"]
        
        Converted["_x"].Font = Enum.Font.SourceSans
        Converted["_x"].Text = "X"
        Converted["_x"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].TextSize = 14
        Converted["_x"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_x"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].BorderSizePixel = 0
        Converted["_x"].Position = UDim2.new(0.790849686, 0, 0, 0)
        Converted["_x"].Size = UDim2.new(0, 32, 0, 26)
        Converted["_x"].Name = "x"
        Converted["_x"].Parent = Converted["_Frame"]
        
        local fake_module_scripts = {}
        
        local toreturn = nil

        local function RXIOXO_fake_script() -- Fake Script: StarterGui.messagebox.Frame.ok.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_ok"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 1
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function LPTAF_fake_script() -- Fake Script: StarterGui.messagebox.Frame.x.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_x"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function OVXL_fake_script() -- Fake Script: StarterGui.messagebox.Frame.Dragify
            local script = Instance.new("LocalScript")
            script.Name = "Dragify"
            script.Parent = Converted["_Frame"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            local UIS = game:GetService("UserInputService")
            function dragify(Frame)
                dragToggle = nil
                dragSpeed = 0.15
                dragInput = nil
                dragStart = nil
                dragPos = nil
                function updateInput(input)
                    Delta = input.Position - dragStart
                    Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
                    game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
                end
                Frame.InputBegan:Connect(function(input)
                    if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
                        dragToggle = true
                        dragStart = input.Position
                        startPos = Frame.Position
                        input.Changed:Connect(function()
                            if input.UserInputState == Enum.UserInputState.End then
                                dragToggle = false
                            end
                        end)
                    end
                end)
                Frame.InputChanged:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                        dragInput = input
                    end
                end)
                game:GetService("UserInputService").InputChanged:Connect(function(input)
                    if input == dragInput and dragToggle then
                        updateInput(input)
                    end
                end)
            end
            dragify(script.Parent)
            
        end
        
        coroutine.wrap(RXIOXO_fake_script)()
        coroutine.wrap(LPTAF_fake_script)()
        coroutine.wrap(OVXL_fake_script)()
        repeat
            task.wait()
        until toreturn ~= nil
        return toreturn

    elseif style == 1 then
        local Converted = {
            ["_messagebox"] = Instance.new("ScreenGui");
            ["_Frame"] = Instance.new("Frame");
            ["_ok"] = Instance.new("TextButton");
            ["_LocalScript"] = Instance.new("LocalScript");
            ["_shadow"] = Instance.new("Frame");
            ["_main"] = Instance.new("TextLabel");
            ["_title"] = Instance.new("TextLabel");
            ["_x"] = Instance.new("TextButton");
            ["_LocalScript1"] = Instance.new("LocalScript");
            ["_Dragify"] = Instance.new("LocalScript");
            ["_cancel"] = Instance.new("TextButton");
            ["_LocalScript2"] = Instance.new("LocalScript");
        }
        
        
        Converted["_messagebox"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        Converted["_messagebox"].Name = "messagebox"
        Converted["_messagebox"].Parent = game:GetService("CoreGui")
        
        Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_Frame"].BorderSizePixel = 0
        Converted["_Frame"].Position = UDim2.new(0.456591636, 0, 0.420382172, 0)
        Converted["_Frame"].Size = UDim2.new(0, 263, 0, 163)
        Converted["_Frame"].Parent = Converted["_messagebox"]
        
        Converted["_ok"].Font = Enum.Font.SourceSans
        Converted["_ok"].Text = "OK"
        Converted["_ok"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_ok"].TextSize = 14
        Converted["_ok"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_ok"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_ok"].BorderSizePixel = 2
        Converted["_ok"].Position = UDim2.new(0.0687347576, 0, 0.792376757, 0)
        Converted["_ok"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_ok"].ZIndex = 2
        Converted["_ok"].Name = "ok"
        Converted["_ok"].Parent = Converted["_Frame"]
        
        Converted["_shadow"].BackgroundColor3 = Color3.fromRGB(240.0000160932541, 240.0000160932541, 240.0000160932541)
        Converted["_shadow"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_shadow"].BorderSizePixel = 0
        Converted["_shadow"].Position = UDim2.new(0, 0, 0.736196339, 0)
        Converted["_shadow"].Size = UDim2.new(0, 262, 0, 43)
        Converted["_shadow"].Name = "shadow"
        Converted["_shadow"].Parent = Converted["_Frame"]
        
        Converted["_main"].Font = Enum.Font.SourceSans
        Converted["_main"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].TextSize = 14
        Converted["_main"].Text = text
        Converted["_main"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_main"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].BorderSizePixel = 0
        Converted["_main"].Position = UDim2.new(0.434926301, 0, 0.257668704, 0)
        Converted["_main"].Size = UDim2.new(0, 48, 0, 50)
        Converted["_main"].Name = "main"
        Converted["_main"].Parent = Converted["_Frame"]
        
        Converted["_title"].Font = Enum.Font.SourceSans
        Converted["_title"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].TextSize = 14
        Converted["_title"].Text = caption
        Converted["_title"].TextXAlignment = Enum.TextXAlignment.Left
        Converted["_title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].BorderSizePixel = 0
        Converted["_title"].Size = UDim2.new(0, 230, 0, 33)
        Converted["_title"].Name = "title"
        Converted["_title"].Parent = Converted["_Frame"]
        
        Converted["_x"].Font = Enum.Font.SourceSans
        Converted["_x"].Text = "X"
        Converted["_x"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].TextSize = 14
        Converted["_x"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_x"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].BorderSizePixel = 0
        Converted["_x"].Position = UDim2.new(0.878302157, 0, 0, 0)
        Converted["_x"].Size = UDim2.new(0, 32, 0, 26)
        Converted["_x"].Name = "x"
        Converted["_x"].Parent = Converted["_Frame"]
        
        Converted["_cancel"].Font = Enum.Font.SourceSans
        Converted["_cancel"].Text = "Cancel"
        Converted["_cancel"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_cancel"].TextSize = 14
        Converted["_cancel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_cancel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_cancel"].BorderSizePixel = 2
        Converted["_cancel"].Position = UDim2.new(0.593449712, 0, 0.792376757, 0)
        Converted["_cancel"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_cancel"].ZIndex = 2
        Converted["_cancel"].Name = "cancel"
        Converted["_cancel"].Parent = Converted["_Frame"]
        
        
        local fake_module_scripts = {}
        
        
        local toreturn = nil

        local function CKPCU_fake_script() -- Fake Script: StarterGui.messagebox.Frame.ok.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_ok"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 1
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function CIWSM_fake_script() -- Fake Script: StarterGui.messagebox.Frame.x.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_x"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function HAHLPR_fake_script() -- Fake Script: StarterGui.messagebox.Frame.Dragify
            local script = Instance.new("LocalScript")
            script.Name = "Dragify"
            script.Parent = Converted["_Frame"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            local UIS = game:GetService("UserInputService")
            function dragify(Frame)
                dragToggle = nil
                dragSpeed = 0.15
                dragInput = nil
                dragStart = nil
                dragPos = nil
                function updateInput(input)
                    Delta = input.Position - dragStart
                    Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
                    game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
                end
                Frame.InputBegan:Connect(function(input)
                    if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
                        dragToggle = true
                        dragStart = input.Position
                        startPos = Frame.Position
                        input.Changed:Connect(function()
                            if input.UserInputState == Enum.UserInputState.End then
                                dragToggle = false
                            end
                        end)
                    end
                end)
                Frame.InputChanged:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                        dragInput = input
                    end
                end)
                game:GetService("UserInputService").InputChanged:Connect(function(input)
                    if input == dragInput and dragToggle then
                        updateInput(input)
                    end
                end)
            end
            dragify(script.Parent)
            
        end
        local function NZUHXUG_fake_script() -- Fake Script: StarterGui.messagebox.Frame.cancel.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_cancel"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 2
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        coroutine.wrap(CKPCU_fake_script)()
        coroutine.wrap(CIWSM_fake_script)()
        coroutine.wrap(HAHLPR_fake_script)()
        coroutine.wrap(NZUHXUG_fake_script)()
        repeat
            task.wait()
        until toreturn ~= nil
        return toreturn
    elseif style == 2 then
        local Converted = {
            ["_messagebox"] = Instance.new("ScreenGui");
            ["_Frame"] = Instance.new("Frame");
            ["_abort"] = Instance.new("TextButton");
            ["_LocalScript"] = Instance.new("LocalScript");
            ["_shadow"] = Instance.new("Frame");
            ["_main"] = Instance.new("TextLabel");
            ["_title"] = Instance.new("TextLabel");
            ["_x"] = Instance.new("TextButton");
            ["_LocalScript1"] = Instance.new("LocalScript");
            ["_Dragify"] = Instance.new("LocalScript");
            ["_ignore"] = Instance.new("TextButton");
            ["_LocalScript2"] = Instance.new("LocalScript");
            ["_retry"] = Instance.new("TextButton");
            ["_LocalScript3"] = Instance.new("LocalScript");
        }
        
        
        Converted["_messagebox"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        Converted["_messagebox"].Name = "messagebox"
        Converted["_messagebox"].Parent = game:GetService("CoreGui")
        
        Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_Frame"].BorderSizePixel = 0
        Converted["_Frame"].Position = UDim2.new(0.456591636, 0, 0.420382172, 0)
        Converted["_Frame"].Size = UDim2.new(0, 263, 0, 163)
        Converted["_Frame"].Parent = Converted["_messagebox"]
        
        Converted["_abort"].Font = Enum.Font.SourceSans
        Converted["_abort"].Text = "Abort"
        Converted["_abort"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_abort"].TextSize = 14
        Converted["_abort"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_abort"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_abort"].BorderSizePixel = 2
        Converted["_abort"].Position = UDim2.new(0.0421188995, 0, 0.792376757, 0)
        Converted["_abort"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_abort"].ZIndex = 2
        Converted["_abort"].Name = "abort"
        Converted["_abort"].Parent = Converted["_Frame"]
        
        Converted["_shadow"].BackgroundColor3 = Color3.fromRGB(240.0000160932541, 240.0000160932541, 240.0000160932541)
        Converted["_shadow"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_shadow"].BorderSizePixel = 0
        Converted["_shadow"].Position = UDim2.new(0, 0, 0.736196339, 0)
        Converted["_shadow"].Size = UDim2.new(0, 262, 0, 43)
        Converted["_shadow"].Name = "shadow"
        Converted["_shadow"].Parent = Converted["_Frame"]
        
        Converted["_main"].Font = Enum.Font.SourceSans
        Converted["_main"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].TextSize = 14
        Converted["_main"].Text = text
        Converted["_main"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_main"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].BorderSizePixel = 0
        Converted["_main"].Position = UDim2.new(0.434926301, 0, 0.257668704, 0)
        Converted["_main"].Size = UDim2.new(0, 48, 0, 50)
        Converted["_main"].Name = "main"
        Converted["_main"].Parent = Converted["_Frame"]
        
        Converted["_title"].Font = Enum.Font.SourceSans
        Converted["_title"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].TextSize = 14
        Converted["_title"].Text = caption
        Converted["_title"].TextXAlignment = Enum.TextXAlignment.Left
        Converted["_title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].BorderSizePixel = 0
        Converted["_title"].Size = UDim2.new(0, 230, 0, 33)
        Converted["_title"].Name = "title"
        Converted["_title"].Parent = Converted["_Frame"]
        
        Converted["_x"].Font = Enum.Font.SourceSans
        Converted["_x"].Text = "X"
        Converted["_x"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].TextSize = 14
        Converted["_x"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_x"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].BorderSizePixel = 0
        Converted["_x"].Position = UDim2.new(0.878302157, 0, 0, 0)
        Converted["_x"].Size = UDim2.new(0, 32, 0, 26)
        Converted["_x"].Name = "x"
        Converted["_x"].Parent = Converted["_Frame"]
        
        Converted["_ignore"].Font = Enum.Font.SourceSans
        Converted["_ignore"].Text = "Ignore"
        Converted["_ignore"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_ignore"].TextSize = 14
        Converted["_ignore"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_ignore"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_ignore"].BorderSizePixel = 2
        Converted["_ignore"].Position = UDim2.new(0.688506722, 0, 0.792376757, 0)
        Converted["_ignore"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_ignore"].ZIndex = 2
        Converted["_ignore"].Name = "ignore"
        Converted["_ignore"].Parent = Converted["_Frame"]
        
        Converted["_retry"].Font = Enum.Font.SourceSans
        Converted["_retry"].Text = "Retry"
        Converted["_retry"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_retry"].TextSize = 14
        Converted["_retry"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_retry"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_retry"].BorderSizePixel = 2
        Converted["_retry"].Position = UDim2.new(0.357708246, 0, 0.792376757, 0)
        Converted["_retry"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_retry"].ZIndex = 2
        Converted["_retry"].Name = "retry"
        Converted["_retry"].Parent = Converted["_Frame"]
        
        
        local fake_module_scripts = {}
        
        local toreturn = nil
        
        local function UMBLVK_fake_script() -- Fake Script: StarterGui.messagebox.Frame.abort.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_abort"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 1
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function CYFK_fake_script() -- Fake Script: StarterGui.messagebox.Frame.x.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_x"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function CILKM_fake_script() -- Fake Script: StarterGui.messagebox.Frame.Dragify
            local script = Instance.new("LocalScript")
            script.Name = "Dragify"
            script.Parent = Converted["_Frame"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            local UIS = game:GetService("UserInputService")
            function dragify(Frame)
                dragToggle = nil
                dragSpeed = 0.15
                dragInput = nil
                dragStart = nil
                dragPos = nil
                function updateInput(input)
                    Delta = input.Position - dragStart
                    Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
                    game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
                end
                Frame.InputBegan:Connect(function(input)
                    if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
                        dragToggle = true
                        dragStart = input.Position
                        startPos = Frame.Position
                        input.Changed:Connect(function()
                            if input.UserInputState == Enum.UserInputState.End then
                                dragToggle = false
                            end
                        end)
                    end
                end)
                Frame.InputChanged:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                        dragInput = input
                    end
                end)
                game:GetService("UserInputService").InputChanged:Connect(function(input)
                    if input == dragInput and dragToggle then
                        updateInput(input)
                    end
                end)
            end
            dragify(script.Parent)
            
        end
        local function PAWMI_fake_script() -- Fake Script: StarterGui.messagebox.Frame.ignore.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_ignore"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 3
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function LCJM_fake_script() -- Fake Script: StarterGui.messagebox.Frame.retry.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_retry"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 2
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        
        coroutine.wrap(UMBLVK_fake_script)()
        coroutine.wrap(CYFK_fake_script)()
        coroutine.wrap(CILKM_fake_script)()
        coroutine.wrap(PAWMI_fake_script)()
        coroutine.wrap(LCJM_fake_script)()
        repeat
            task.wait()
        until toreturn ~= nil
        return toreturn
    elseif style == 3 then
        local Converted = {
            ["_messagebox"] = Instance.new("ScreenGui");
            ["_Frame"] = Instance.new("Frame");
            ["_yes"] = Instance.new("TextButton");
            ["_LocalScript"] = Instance.new("LocalScript");
            ["_shadow"] = Instance.new("Frame");
            ["_main"] = Instance.new("TextLabel");
            ["_title"] = Instance.new("TextLabel");
            ["_x"] = Instance.new("TextButton");
            ["_LocalScript1"] = Instance.new("LocalScript");
            ["_Dragify"] = Instance.new("LocalScript");
            ["_cancel"] = Instance.new("TextButton");
            ["_LocalScript2"] = Instance.new("LocalScript");
            ["_no"] = Instance.new("TextButton");
            ["_LocalScript3"] = Instance.new("LocalScript");
        }
        
        
        Converted["_messagebox"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        Converted["_messagebox"].Name = "messagebox"
        Converted["_messagebox"].Parent = game:GetService("CoreGui")
        
        Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_Frame"].BorderSizePixel = 0
        Converted["_Frame"].Position = UDim2.new(0.456591636, 0, 0.420382172, 0)
        Converted["_Frame"].Size = UDim2.new(0, 263, 0, 163)
        Converted["_Frame"].Parent = Converted["_messagebox"]
        
        Converted["_yes"].Font = Enum.Font.SourceSans
        Converted["_yes"].Text = "Yes"
        Converted["_yes"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_yes"].TextSize = 14
        Converted["_yes"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_yes"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_yes"].BorderSizePixel = 2
        Converted["_yes"].Position = UDim2.new(0.0421188995, 0, 0.792376757, 0)
        Converted["_yes"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_yes"].ZIndex = 2
        Converted["_yes"].Name = "yes"
        Converted["_yes"].Parent = Converted["_Frame"]
        
        Converted["_shadow"].BackgroundColor3 = Color3.fromRGB(240.0000160932541, 240.0000160932541, 240.0000160932541)
        Converted["_shadow"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_shadow"].BorderSizePixel = 0
        Converted["_shadow"].Position = UDim2.new(0, 0, 0.736196339, 0)
        Converted["_shadow"].Size = UDim2.new(0, 262, 0, 43)
        Converted["_shadow"].Name = "shadow"
        Converted["_shadow"].Parent = Converted["_Frame"]
        
        Converted["_main"].Font = Enum.Font.SourceSans
        Converted["_main"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].TextSize = 14
        Converted["_main"].Text = text
        Converted["_main"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_main"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].BorderSizePixel = 0
        Converted["_main"].Position = UDim2.new(0.434926301, 0, 0.257668704, 0)
        Converted["_main"].Size = UDim2.new(0, 48, 0, 50)
        Converted["_main"].Name = "main"
        Converted["_main"].Parent = Converted["_Frame"]
        
        Converted["_title"].Font = Enum.Font.SourceSans
        Converted["_title"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].TextSize = 14
        Converted["_title"].Text = caption
        Converted["_title"].TextXAlignment = Enum.TextXAlignment.Left
        Converted["_title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].BorderSizePixel = 0
        Converted["_title"].Size = UDim2.new(0, 230, 0, 33)
        Converted["_title"].Name = "title"
        Converted["_title"].Parent = Converted["_Frame"]
        
        Converted["_x"].Font = Enum.Font.SourceSans
        Converted["_x"].Text = "X"
        Converted["_x"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].TextSize = 14
        Converted["_x"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_x"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].BorderSizePixel = 0
        Converted["_x"].Position = UDim2.new(0.878302157, 0, 0, 0)
        Converted["_x"].Size = UDim2.new(0, 32, 0, 26)
        Converted["_x"].Name = "x"
        Converted["_x"].Parent = Converted["_Frame"]
        
        Converted["_cancel"].Font = Enum.Font.SourceSans
        Converted["_cancel"].Text = "Cancel"
        Converted["_cancel"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_cancel"].TextSize = 14
        Converted["_cancel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_cancel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_cancel"].BorderSizePixel = 2
        Converted["_cancel"].Position = UDim2.new(0.688506722, 0, 0.792376757, 0)
        Converted["_cancel"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_cancel"].ZIndex = 2
        Converted["_cancel"].Name = "cancel"
        Converted["_cancel"].Parent = Converted["_Frame"]
        
        Converted["_no"].Font = Enum.Font.SourceSans
        Converted["_no"].Text = "No"
        Converted["_no"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_no"].TextSize = 14
        Converted["_no"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_no"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_no"].BorderSizePixel = 2
        Converted["_no"].Position = UDim2.new(0.357708246, 0, 0.792376757, 0)
        Converted["_no"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_no"].ZIndex = 2
        Converted["_no"].Name = "no"
        Converted["_no"].Parent = Converted["_Frame"]
        
        local fake_module_scripts = {}
        
        local toreturn = nil

        local function KWWQAE_fake_script() -- Fake Script: StarterGui.messagebox.Frame.yes.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_yes"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 1
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function XPJIE_fake_script() -- Fake Script: StarterGui.messagebox.Frame.x.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_x"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function OTOWUOS_fake_script() -- Fake Script: StarterGui.messagebox.Frame.Dragify
            local script = Instance.new("LocalScript")
            script.Name = "Dragify"
            script.Parent = Converted["_Frame"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            local UIS = game:GetService("UserInputService")
            function dragify(Frame)
                dragToggle = nil
                dragSpeed = 0.15
                dragInput = nil
                dragStart = nil
                dragPos = nil
                function updateInput(input)
                    Delta = input.Position - dragStart
                    Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
                    game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
                end
                Frame.InputBegan:Connect(function(input)
                    if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
                        dragToggle = true
                        dragStart = input.Position
                        startPos = Frame.Position
                        input.Changed:Connect(function()
                            if input.UserInputState == Enum.UserInputState.End then
                                dragToggle = false
                            end
                        end)
                    end
                end)
                Frame.InputChanged:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                        dragInput = input
                    end
                end)
                game:GetService("UserInputService").InputChanged:Connect(function(input)
                    if input == dragInput and dragToggle then
                        updateInput(input)
                    end
                end)
            end
            dragify(script.Parent)
            
        end
        local function FPOQ_fake_script() -- Fake Script: StarterGui.messagebox.Frame.cancel.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_cancel"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 3
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function GMWBUX_fake_script() -- Fake Script: StarterGui.messagebox.Frame.no.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_no"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 2
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        
        coroutine.wrap(KWWQAE_fake_script)()
        coroutine.wrap(XPJIE_fake_script)()
        coroutine.wrap(OTOWUOS_fake_script)()
        coroutine.wrap(FPOQ_fake_script)()
        coroutine.wrap(GMWBUX_fake_script)()
        repeat
            task.wait()
        until toreturn ~= nil
        return toreturn
    elseif style == 4 then
        local Converted = {
            ["_messagebox"] = Instance.new("ScreenGui");
            ["_Frame"] = Instance.new("Frame");
            ["_yes"] = Instance.new("TextButton");
            ["_LocalScript"] = Instance.new("LocalScript");
            ["_shadow"] = Instance.new("Frame");
            ["_main"] = Instance.new("TextLabel");
            ["_title"] = Instance.new("TextLabel");
            ["_x"] = Instance.new("TextButton");
            ["_LocalScript1"] = Instance.new("LocalScript");
            ["_Dragify"] = Instance.new("LocalScript");
            ["_no"] = Instance.new("TextButton");
            ["_LocalScript2"] = Instance.new("LocalScript");
        }
        
        
        Converted["_messagebox"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        Converted["_messagebox"].Name = "messagebox"
        Converted["_messagebox"].Parent = game:GetService("CoreGui")
        
        Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_Frame"].BorderSizePixel = 0
        Converted["_Frame"].Position = UDim2.new(0.456591636, 0, 0.420382172, 0)
        Converted["_Frame"].Size = UDim2.new(0, 263, 0, 163)
        Converted["_Frame"].Parent = Converted["_messagebox"]
        
        Converted["_yes"].Font = Enum.Font.SourceSans
        Converted["_yes"].Text = "Yes"
        Converted["_yes"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_yes"].TextSize = 14
        Converted["_yes"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_yes"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_yes"].BorderSizePixel = 2
        Converted["_yes"].Position = UDim2.new(0.156187341, 0, 0.792376757, 0)
        Converted["_yes"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_yes"].ZIndex = 2
        Converted["_yes"].Name = "yes"
        Converted["_yes"].Parent = Converted["_Frame"]
        
        Converted["_shadow"].BackgroundColor3 = Color3.fromRGB(240.0000160932541, 240.0000160932541, 240.0000160932541)
        Converted["_shadow"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_shadow"].BorderSizePixel = 0
        Converted["_shadow"].Position = UDim2.new(0, 0, 0.736196339, 0)
        Converted["_shadow"].Size = UDim2.new(0, 262, 0, 43)
        Converted["_shadow"].Name = "shadow"
        Converted["_shadow"].Parent = Converted["_Frame"]
        
        Converted["_main"].Font = Enum.Font.SourceSans
        Converted["_main"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].TextSize = 14
        Converted["_main"].Text = text
        Converted["_main"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_main"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].BorderSizePixel = 0
        Converted["_main"].Position = UDim2.new(0.434926301, 0, 0.257668704, 0)
        Converted["_main"].Size = UDim2.new(0, 48, 0, 50)
        Converted["_main"].Name = "main"
        Converted["_main"].Parent = Converted["_Frame"]
        
        Converted["_title"].Font = Enum.Font.SourceSans
        Converted["_title"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].TextSize = 14
        Converted["_title"].Text = caption
        Converted["_title"].TextXAlignment = Enum.TextXAlignment.Left
        Converted["_title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].BorderSizePixel = 0
        Converted["_title"].Size = UDim2.new(0, 230, 0, 33)
        Converted["_title"].Name = "title"
        Converted["_title"].Parent = Converted["_Frame"]
        
        Converted["_x"].Font = Enum.Font.SourceSans
        Converted["_x"].Text = "X"
        Converted["_x"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].TextSize = 14
        Converted["_x"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_x"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].BorderSizePixel = 0
        Converted["_x"].Position = UDim2.new(0.878302157, 0, 0, 0)
        Converted["_x"].Size = UDim2.new(0, 32, 0, 26)
        Converted["_x"].Name = "x"
        Converted["_x"].Parent = Converted["_Frame"]
        
        Converted["_no"].Font = Enum.Font.SourceSans
        Converted["_no"].Text = "No"
        Converted["_no"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_no"].TextSize = 14
        Converted["_no"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_no"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_no"].BorderSizePixel = 2
        Converted["_no"].Position = UDim2.new(0.593449712, 0, 0.792376757, 0)
        Converted["_no"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_no"].ZIndex = 2
        Converted["_no"].Name = "no"
        Converted["_no"].Parent = Converted["_Frame"]
        
        
        local fake_module_scripts = {}
        
        local toreturn = nil
        
        local function AAEXTH_fake_script() -- Fake Script: StarterGui.messagebox.Frame.yes.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_yes"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 1
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function EAXIAEM_fake_script() -- Fake Script: StarterGui.messagebox.Frame.x.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_x"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function SSBNBX_fake_script() -- Fake Script: StarterGui.messagebox.Frame.Dragify
            local script = Instance.new("LocalScript")
            script.Name = "Dragify"
            script.Parent = Converted["_Frame"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            local UIS = game:GetService("UserInputService")
            function dragify(Frame)
                dragToggle = nil
                dragSpeed = 0.15
                dragInput = nil
                dragStart = nil
                dragPos = nil
                function updateInput(input)
                    Delta = input.Position - dragStart
                    Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
                    game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
                end
                Frame.InputBegan:Connect(function(input)
                    if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
                        dragToggle = true
                        dragStart = input.Position
                        startPos = Frame.Position
                        input.Changed:Connect(function()
                            if input.UserInputState == Enum.UserInputState.End then
                                dragToggle = false
                            end
                        end)
                    end
                end)
                Frame.InputChanged:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                        dragInput = input
                    end
                end)
                game:GetService("UserInputService").InputChanged:Connect(function(input)
                    if input == dragInput and dragToggle then
                        updateInput(input)
                    end
                end)
            end
            dragify(script.Parent)
            
        end
        local function HDLYUB_fake_script() -- Fake Script: StarterGui.messagebox.Frame.no.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_no"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 2
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        
        coroutine.wrap(AAEXTH_fake_script)()
        coroutine.wrap(EAXIAEM_fake_script)()
        coroutine.wrap(SSBNBX_fake_script)()
        coroutine.wrap(HDLYUB_fake_script)()
        repeat
            task.wait()
        until toreturn ~= nil
        return toreturn
    elseif style == 5 then
        local Converted = {
            ["_messagebox"] = Instance.new("ScreenGui");
            ["_Frame"] = Instance.new("Frame");
            ["_retry"] = Instance.new("TextButton");
            ["_LocalScript"] = Instance.new("LocalScript");
            ["_shadow"] = Instance.new("Frame");
            ["_main"] = Instance.new("TextLabel");
            ["_title"] = Instance.new("TextLabel");
            ["_x"] = Instance.new("TextButton");
            ["_LocalScript1"] = Instance.new("LocalScript");
            ["_Dragify"] = Instance.new("LocalScript");
            ["_cancel"] = Instance.new("TextButton");
            ["_LocalScript2"] = Instance.new("LocalScript");
        }
        
        Converted["_messagebox"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        Converted["_messagebox"].Name = "messagebox"
        Converted["_messagebox"].Parent = game:GetService("CoreGui")
        
        Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_Frame"].BorderSizePixel = 0
        Converted["_Frame"].Position = UDim2.new(0.456591636, 0, 0.420382172, 0)
        Converted["_Frame"].Size = UDim2.new(0, 263, 0, 163)
        Converted["_Frame"].Parent = Converted["_messagebox"]
        
        Converted["_retry"].Font = Enum.Font.SourceSans
        Converted["_retry"].Text = "Retry"
        Converted["_retry"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_retry"].TextSize = 14
        Converted["_retry"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_retry"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_retry"].BorderSizePixel = 2
        Converted["_retry"].Position = UDim2.new(0.156187341, 0, 0.792376757, 0)
        Converted["_retry"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_retry"].ZIndex = 2
        Converted["_retry"].Name = "retry"
        Converted["_retry"].Parent = Converted["_Frame"]
        
        Converted["_shadow"].BackgroundColor3 = Color3.fromRGB(240.0000160932541, 240.0000160932541, 240.0000160932541)
        Converted["_shadow"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_shadow"].BorderSizePixel = 0
        Converted["_shadow"].Position = UDim2.new(0, 0, 0.736196339, 0)
        Converted["_shadow"].Size = UDim2.new(0, 262, 0, 43)
        Converted["_shadow"].Name = "shadow"
        Converted["_shadow"].Parent = Converted["_Frame"]
        
        Converted["_main"].Font = Enum.Font.SourceSans
        Converted["_main"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].TextSize = 14
        Converted["_main"].Text = text
        Converted["_main"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_main"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].BorderSizePixel = 0
        Converted["_main"].Position = UDim2.new(0.434926301, 0, 0.257668704, 0)
        Converted["_main"].Size = UDim2.new(0, 48, 0, 50)
        Converted["_main"].Name = "main"
        Converted["_main"].Parent = Converted["_Frame"]
        
        Converted["_title"].Font = Enum.Font.SourceSans
        Converted["_title"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].TextSize = 14
        Converted["_title"].Text = caption
        Converted["_title"].TextXAlignment = Enum.TextXAlignment.Left
        Converted["_title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].BorderSizePixel = 0
        Converted["_title"].Size = UDim2.new(0, 230, 0, 33)
        Converted["_title"].Name = "title"
        Converted["_title"].Parent = Converted["_Frame"]
        
        Converted["_x"].Font = Enum.Font.SourceSans
        Converted["_x"].Text = "X"
        Converted["_x"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].TextSize = 14
        Converted["_x"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_x"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].BorderSizePixel = 0
        Converted["_x"].Position = UDim2.new(0.878302157, 0, 0, 0)
        Converted["_x"].Size = UDim2.new(0, 32, 0, 26)
        Converted["_x"].Name = "x"
        Converted["_x"].Parent = Converted["_Frame"]
        
        Converted["_cancel"].Font = Enum.Font.SourceSans
        Converted["_cancel"].Text = "Cancel"
        Converted["_cancel"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_cancel"].TextSize = 14
        Converted["_cancel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_cancel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_cancel"].BorderSizePixel = 2
        Converted["_cancel"].Position = UDim2.new(0.593449712, 0, 0.792376757, 0)
        Converted["_cancel"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_cancel"].ZIndex = 2
        Converted["_cancel"].Name = "cancel"
        Converted["_cancel"].Parent = Converted["_Frame"]
        
        local fake_module_scripts = {}
        
        local toreturn = nil
        
        local function SIYHBZ_fake_script() -- Fake Script: StarterGui.messagebox.Frame.retry.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_retry"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 1
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function YCWE_fake_script() -- Fake Script: StarterGui.messagebox.Frame.x.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_x"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function JZCHVUC_fake_script() -- Fake Script: StarterGui.messagebox.Frame.Dragify
            local script = Instance.new("LocalScript")
            script.Name = "Dragify"
            script.Parent = Converted["_Frame"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            local UIS = game:GetService("UserInputService")
            function dragify(Frame)
                dragToggle = nil
                dragSpeed = 0.15
                dragInput = nil
                dragStart = nil
                dragPos = nil
                function updateInput(input)
                    Delta = input.Position - dragStart
                    Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
                    game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
                end
                Frame.InputBegan:Connect(function(input)
                    if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
                        dragToggle = true
                        dragStart = input.Position
                        startPos = Frame.Position
                        input.Changed:Connect(function()
                            if input.UserInputState == Enum.UserInputState.End then
                                dragToggle = false
                            end
                        end)
                    end
                end)
                Frame.InputChanged:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                        dragInput = input
                    end
                end)
                game:GetService("UserInputService").InputChanged:Connect(function(input)
                    if input == dragInput and dragToggle then
                        updateInput(input)
                    end
                end)
            end
            dragify(script.Parent)
            
        end
        local function RSMXOX_fake_script() -- Fake Script: StarterGui.messagebox.Frame.cancel.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_cancel"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 2
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        
        coroutine.wrap(SIYHBZ_fake_script)()
        coroutine.wrap(YCWE_fake_script)()
        coroutine.wrap(JZCHVUC_fake_script)()
        coroutine.wrap(RSMXOX_fake_script)()
        repeat
            task.wait()
        until toreturn ~= nil
        return toreturn
    elseif style == 6 then
        local Converted = {
            ["_messagebox"] = Instance.new("ScreenGui");
            ["_Frame"] = Instance.new("Frame");
            ["_cancel"] = Instance.new("TextButton");
            ["_LocalScript"] = Instance.new("LocalScript");
            ["_shadow"] = Instance.new("Frame");
            ["_main"] = Instance.new("TextLabel");
            ["_title"] = Instance.new("TextLabel");
            ["_x"] = Instance.new("TextButton");
            ["_LocalScript1"] = Instance.new("LocalScript");
            ["_Dragify"] = Instance.new("LocalScript");
            ["_try"] = Instance.new("TextButton");
            ["_LocalScript2"] = Instance.new("LocalScript");
            ["_continue"] = Instance.new("TextButton");
            ["_LocalScript3"] = Instance.new("LocalScript");
        }
        
        
        Converted["_messagebox"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        Converted["_messagebox"].Name = "messagebox"
        Converted["_messagebox"].Parent = game:GetService("CoreGui")
        
        Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_Frame"].BorderSizePixel = 0
        Converted["_Frame"].Position = UDim2.new(0.456591636, 0, 0.420382172, 0)
        Converted["_Frame"].Size = UDim2.new(0, 263, 0, 163)
        Converted["_Frame"].Parent = Converted["_messagebox"]
        
        Converted["_cancel"].Font = Enum.Font.SourceSans
        Converted["_cancel"].Text = "Cancel"
        Converted["_cancel"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_cancel"].TextSize = 14
        Converted["_cancel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_cancel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_cancel"].BorderSizePixel = 2
        Converted["_cancel"].Position = UDim2.new(0.0421188995, 0, 0.792376757, 0)
        Converted["_cancel"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_cancel"].ZIndex = 2
        Converted["_cancel"].Name = "cancel"
        Converted["_cancel"].Parent = Converted["_Frame"]
        
        Converted["_shadow"].BackgroundColor3 = Color3.fromRGB(240.0000160932541, 240.0000160932541, 240.0000160932541)
        Converted["_shadow"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_shadow"].BorderSizePixel = 0
        Converted["_shadow"].Position = UDim2.new(0, 0, 0.736196339, 0)
        Converted["_shadow"].Size = UDim2.new(0, 262, 0, 43)
        Converted["_shadow"].Name = "shadow"
        Converted["_shadow"].Parent = Converted["_Frame"]
        
        Converted["_main"].Font = Enum.Font.SourceSans
        Converted["_main"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].TextSize = 14
        Converted["_main"].Text = text
        Converted["_main"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_main"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].BorderSizePixel = 0
        Converted["_main"].Position = UDim2.new(0.434926301, 0, 0.257668704, 0)
        Converted["_main"].Size = UDim2.new(0, 48, 0, 50)
        Converted["_main"].Name = "main"
        Converted["_main"].Parent = Converted["_Frame"]
        
        Converted["_title"].Font = Enum.Font.SourceSans
        Converted["_title"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].TextSize = 14
        Converted["_title"].Text = caption
        Converted["_title"].TextXAlignment = Enum.TextXAlignment.Left
        Converted["_title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].BorderSizePixel = 0
        Converted["_title"].Size = UDim2.new(0, 230, 0, 33)
        Converted["_title"].Name = "title"
        Converted["_title"].Parent = Converted["_Frame"]
        
        Converted["_x"].Font = Enum.Font.SourceSans
        Converted["_x"].Text = "X"
        Converted["_x"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].TextSize = 14
        Converted["_x"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_x"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].BorderSizePixel = 0
        Converted["_x"].Position = UDim2.new(0.878302157, 0, 0, 0)
        Converted["_x"].Size = UDim2.new(0, 32, 0, 26)
        Converted["_x"].Name = "x"
        Converted["_x"].Parent = Converted["_Frame"]
        
        Converted["_try"].Font = Enum.Font.SourceSans
        Converted["_try"].Text = "Try Again"
        Converted["_try"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_try"].TextSize = 14
        Converted["_try"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_try"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_try"].BorderSizePixel = 2
        Converted["_try"].Position = UDim2.new(0.357708246, 0, 0.792376757, 0)
        Converted["_try"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_try"].ZIndex = 2
        Converted["_try"].Name = "try"
        Converted["_try"].Parent = Converted["_Frame"]
        
        Converted["_continue"].Font = Enum.Font.SourceSans
        Converted["_continue"].Text = "Continue"
        Converted["_continue"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_continue"].TextSize = 14
        Converted["_continue"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_continue"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_continue"].BorderSizePixel = 2
        Converted["_continue"].Position = UDim2.new(0.684704423, 0, 0.792376757, 0)
        Converted["_continue"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_continue"].ZIndex = 2
        Converted["_continue"].Name = "continue"
        Converted["_continue"].Parent = Converted["_Frame"]
        
        local fake_module_scripts = {}
        
        local toreturn = nil

        local function LCBJCC_fake_script() -- Fake Script: StarterGui.messagebox.Frame.cancel.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_cancel"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 1
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function PRRFB_fake_script() -- Fake Script: StarterGui.messagebox.Frame.x.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_x"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function UVGH_fake_script() -- Fake Script: StarterGui.messagebox.Frame.Dragify
            local script = Instance.new("LocalScript")
            script.Name = "Dragify"
            script.Parent = Converted["_Frame"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            local UIS = game:GetService("UserInputService")
            function dragify(Frame)
                dragToggle = nil
                dragSpeed = 0.15
                dragInput = nil
                dragStart = nil
                dragPos = nil
                function updateInput(input)
                    Delta = input.Position - dragStart
                    Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
                    game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
                end
                Frame.InputBegan:Connect(function(input)
                    if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
                        dragToggle = true
                        dragStart = input.Position
                        startPos = Frame.Position
                        input.Changed:Connect(function()
                            if input.UserInputState == Enum.UserInputState.End then
                                dragToggle = false
                            end
                        end)
                    end
                end)
                Frame.InputChanged:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                        dragInput = input
                    end
                end)
                game:GetService("UserInputService").InputChanged:Connect(function(input)
                    if input == dragInput and dragToggle then
                        updateInput(input)
                    end
                end)
            end
            dragify(script.Parent)
            
        end
        local function IUOJ_fake_script() -- Fake Script: StarterGui.messagebox.Frame.try.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_try"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 2
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function ELHCM_fake_script() -- Fake Script: StarterGui.messagebox.Frame.continue.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_continue"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 3
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        
        coroutine.wrap(LCBJCC_fake_script)()
        coroutine.wrap(PRRFB_fake_script)()
        coroutine.wrap(UVGH_fake_script)()
        coroutine.wrap(IUOJ_fake_script)()
        coroutine.wrap(ELHCM_fake_script)()
        repeat
            task.wait()
        until toreturn ~= nil
        return toreturn
    end
end
-- creds to vxsty
getgenv().mouse1click = function(x, y)
	local vim = game:GetService('VirtualInputManager');
    x = x or 0
	y = y or 0
	vim:SendMouseButtonEvent(x, y, 0, true, game, false)
	task.wait()
	vim:SendMouseButtonEvent(x, y, 0, false, game, false)
end
getgenv().mouse2click = function(x, y)
    local vim = game:GetService('VirtualInputManager');
	x = x or 0
	y = y or 0
	vim:SendMouseButtonEvent(x, y, 1, true, game, false)
	task.wait()
	vim:SendMouseButtonEvent(x, y, 1, false, game, false)
end
getgenv().mouse1press = function(x, y)
    local vim = game:GetService('VirtualInputManager');
	x = x or 0
	y = y or 0
	vim:SendMouseButtonEvent(x, y, 0, true, game, false)
end
getgenv().mouse1release = function(x, y)
    local vim = game:GetService('VirtualInputManager');
	x = x or 0
	y = y or 0
	vim:SendMouseButtonEvent(x, y, 0, false, game, false)
end
getgenv().mouse2press = function(x, y)
    local vim = game:GetService('VirtualInputManager');
	x = x or 0
	y = y or 0
	vim:SendMouseButtonEvent(x, y, 1, true, game, false)
end
getgenv().mouse2release = function(x, y)
    local vim = game:GetService('VirtualInputManager');
	x = x or 0
	y = y or 0
	vim:SendMouseButtonEvent(x, y, 1, false, game, false)
end
getgenv().mousescroll = function(x, y, a)
    local vim = game:GetService('VirtualInputManager');
	x = x or 0
	y = y or 0
	a = a and true or false
	vim:SendMouseWheelEvent(x, y, a, game)
end
getgenv().newcclosure = function(func)
    local tab = getgenv()
    getgenv()[#tab+1] = func
end
getgenv().rconsoletablerem = {}
local par = game:GetService("CoreGui")
getgenv().rconsolecreate = function(text, color)
	if not par:FindFirstChild("rconsole") then
		getgenv().rconsoletablerem = {}
		getgenv().rconsoleConverted = {
			["_rconsole"] = Instance.new("ScreenGui");
			["_Frame"] = Instance.new("Frame");
			["_min"] = Instance.new("TextButton");
			["_LocalScript"] = Instance.new("LocalScript");
			["_TextBox"] = Instance.new("TextBox");
			["_max1"] = Instance.new("TextButton");
			["_max2"] = Instance.new("TextButton");
			["_max3"] = Instance.new("TextButton");
			["_max4"] = Instance.new("TextButton");
			["_close"] = Instance.new("TextButton");
			["_closescript"] = Instance.new("LocalScript");
			["_TextLabel"] = Instance.new("TextLabel");
			["_Dragify"] = Instance.new("LocalScript");
			["_LocalScript1"] = Instance.new("LocalScript");
		}
	end
	getgenv().rconsoleConverted["_rconsole"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	getgenv().rconsoleConverted["_rconsole"].Name = "rconsole"
	getgenv().rconsoleConverted["_rconsole"].Parent = par

	getgenv().rconsoleConverted["_Frame"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	getgenv().rconsoleConverted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	getgenv().rconsoleConverted["_Frame"].BorderSizePixel = 0
	if not par:FindFirstChild("rconsole") then
		getgenv().rconsoleConverted["_Frame"].Position = UDim2.new(0.36141479, 0, 0.332802534, 0)
	else
		getgenv().rconsoleConverted["_Frame"].Position = getgenv().rconsoleConverted["_Frame"].Position
	end
	getgenv().rconsoleConverted["_Frame"].Size = UDim2.new(0, 694, 0, 294)
	getgenv().rconsoleConverted["_Frame"].Parent = getgenv().rconsoleConverted["_rconsole"]
	getgenv().rconsoleConverted["_min"].Font = Enum.Font.SourceSans
	getgenv().rconsoleConverted["_min"].Text = "-"
	getgenv().rconsoleConverted["_min"].TextColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_min"].TextSize = 72
	getgenv().rconsoleConverted["_min"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_min"].BackgroundTransparency = 1
	getgenv().rconsoleConverted["_min"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	getgenv().rconsoleConverted["_min"].BorderSizePixel = 0
	getgenv().rconsoleConverted["_min"].Position = UDim2.new(0.877521634, 0, -0.0510204099, 0)
	getgenv().rconsoleConverted["_min"].Size = UDim2.new(0, 15, 0, 50)
	getgenv().rconsoleConverted["_min"].Name = "min"
	getgenv().rconsoleConverted["_min"].Parent = getgenv().rconsoleConverted["_Frame"]

	getgenv().rconsoleConverted["_TextBox"].CursorPosition = -1
	getgenv().rconsoleConverted["_TextBox"].ClearTextOnFocus = false
	getgenv().rconsoleConverted["_TextBox"].Font = Enum.Font.SourceSans
	getgenv().rconsoleConverted["_TextBox"].RichText = true
	getgenv().rconsoleConverted["_TextBox"].Text = ""
	getgenv().rconsoleConverted["_TextBox"].TextColor3 = Color3.fromRGB(204.0000182390213, 204.0000182390213, 204.0000182390213) -- nah
	getgenv().rconsoleConverted["_TextBox"].TextDirection = Enum.TextDirection.RightToLeft
	getgenv().rconsoleConverted["_TextBox"].TextEditable = false
	getgenv().rconsoleConverted["_TextBox"].TextSize = 14
	getgenv().rconsoleConverted["_TextBox"].TextWrapped = true
	getgenv().rconsoleConverted["_TextBox"].TextXAlignment = Enum.TextXAlignment.Left
	getgenv().rconsoleConverted["_TextBox"].TextYAlignment = Enum.TextYAlignment.Top
	getgenv().rconsoleConverted["_TextBox"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_TextBox"].BackgroundTransparency = 1
	getgenv().rconsoleConverted["_TextBox"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	getgenv().rconsoleConverted["_TextBox"].BorderSizePixel = 0
	getgenv().rconsoleConverted["_TextBox"].Position = UDim2.new(0, 0, 0.119047619, 0)
	getgenv().rconsoleConverted["_TextBox"].Size = UDim2.new(0, 694, 0, 259)
	getgenv().rconsoleConverted["_TextBox"].Parent = getgenv().rconsoleConverted["_Frame"]

	getgenv().rconsoleConverted["_max1"].Font = Enum.Font.SourceSans
	getgenv().rconsoleConverted["_max1"].Text = "-"
	getgenv().rconsoleConverted["_max1"].TextColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_max1"].TextSize = 72
	getgenv().rconsoleConverted["_max1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_max1"].BackgroundTransparency = 1
	getgenv().rconsoleConverted["_max1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	getgenv().rconsoleConverted["_max1"].BorderSizePixel = 0
	getgenv().rconsoleConverted["_max1"].Position = UDim2.new(0.793982983, 0, 0.0546244942, 0)
	getgenv().rconsoleConverted["_max1"].Rotation = -90
	getgenv().rconsoleConverted["_max1"].Size = UDim2.new(0, 200, 0, 0)
	getgenv().rconsoleConverted["_max1"].Name = "max1"
	getgenv().rconsoleConverted["_max1"].Parent = getgenv().rconsoleConverted["_Frame"]

	getgenv().rconsoleConverted["_max2"].Font = Enum.Font.SourceSans
	getgenv().rconsoleConverted["_max2"].Text = "-"
	getgenv().rconsoleConverted["_max2"].TextColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_max2"].TextSize = 72
	getgenv().rconsoleConverted["_max2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_max2"].BackgroundTransparency = 1
	getgenv().rconsoleConverted["_max2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	getgenv().rconsoleConverted["_max2"].BorderSizePixel = 0
	getgenv().rconsoleConverted["_max2"].Position = UDim2.new(0.775181472, 0, 0.0546244942, 0)
	getgenv().rconsoleConverted["_max2"].Rotation = -90
	getgenv().rconsoleConverted["_max2"].Size = UDim2.new(0, 200, 0, 0)
	getgenv().rconsoleConverted["_max2"].Name = "max2"
	getgenv().rconsoleConverted["_max2"].Parent = getgenv().rconsoleConverted["_Frame"]

	getgenv().rconsoleConverted["_max3"].Font = Enum.Font.SourceSans
	getgenv().rconsoleConverted["_max3"].Text = "-"
	getgenv().rconsoleConverted["_max3"].TextColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_max3"].TextSize = 72
	getgenv().rconsoleConverted["_max3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_max3"].BackgroundTransparency = 1
	getgenv().rconsoleConverted["_max3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	getgenv().rconsoleConverted["_max3"].BorderSizePixel = 0
	getgenv().rconsoleConverted["_max3"].Position = UDim2.new(0.937443197, 0, -0.0748299286, 0)
	getgenv().rconsoleConverted["_max3"].Size = UDim2.new(0, 0, 0, 50)
	getgenv().rconsoleConverted["_max3"].Name = "max3"
	getgenv().rconsoleConverted["_max3"].Parent = getgenv().rconsoleConverted["_Frame"]

	getgenv().rconsoleConverted["_max4"].Font = Enum.Font.SourceSans
	getgenv().rconsoleConverted["_max4"].Text = "-"
	getgenv().rconsoleConverted["_max4"].TextColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_max4"].TextSize = 72
	getgenv().rconsoleConverted["_max4"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_max4"].BackgroundTransparency = 1
	getgenv().rconsoleConverted["_max4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	getgenv().rconsoleConverted["_max4"].BorderSizePixel = 0
	getgenv().rconsoleConverted["_max4"].Position = UDim2.new(0.937443197, 0, -0.0306122452, 0)
	getgenv().rconsoleConverted["_max4"].Size = UDim2.new(0, 2, 0, 50)
	getgenv().rconsoleConverted["_max4"].Name = "max4"
	getgenv().rconsoleConverted["_max4"].Parent = getgenv().rconsoleConverted["_Frame"]

	getgenv().rconsoleConverted["_close"].Font = Enum.Font.SourceSans
	getgenv().rconsoleConverted["_close"].Text = "X"
	getgenv().rconsoleConverted["_close"].TextColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_close"].TextSize = 27
	getgenv().rconsoleConverted["_close"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_close"].BackgroundTransparency = 1
	getgenv().rconsoleConverted["_close"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	getgenv().rconsoleConverted["_close"].BorderSizePixel = 0
	getgenv().rconsoleConverted["_close"].Position = UDim2.new(0.962536037, 0, 0, 0)
	getgenv().rconsoleConverted["_close"].Size = UDim2.new(0, 26, 0, 35)
	getgenv().rconsoleConverted["_close"].Name = "close"
	getgenv().rconsoleConverted["_close"].Parent = getgenv().rconsoleConverted["_Frame"]

	getgenv().rconsoleConverted["_TextLabel"].Font = Enum.Font.SourceSans
	getgenv().rconsoleConverted["_TextLabel"].RichText = true
	getgenv().rconsoleConverted["_TextLabel"].Text = ""
	getgenv().rconsoleConverted["_TextLabel"].TextColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_TextLabel"].TextScaled = true
	getgenv().rconsoleConverted["_TextLabel"].TextSize = 14
	getgenv().rconsoleConverted["_TextLabel"].TextWrapped = true
	getgenv().rconsoleConverted["_TextLabel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_TextLabel"].BackgroundTransparency = 1
	getgenv().rconsoleConverted["_TextLabel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	getgenv().rconsoleConverted["_TextLabel"].BorderSizePixel = 0
	getgenv().rconsoleConverted["_TextLabel"].Size = UDim2.new(0, 609, 0, 42)
	getgenv().rconsoleConverted["_TextLabel"].Parent = getgenv().rconsoleConverted["_Frame"]


	local fake_module_scripts = {}

	local function BDYORWU_fake_script() -- Fake Script: StarterGui.rconsole.Frame.min.LocalScript
		local script = Instance.new("LocalScript")
		script.Name = "LocalScript"
		script.Parent = getgenv().rconsoleConverted["_min"]
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		script.Parent.MouseButton1Down:Connect(function()
			script.Parent.Parent.Visible = false
		end)
	end
	local function FOWXFT_fake_script() -- Fake Script: StarterGui.rconsole.Frame.close.closescript
		local script = Instance.new("LocalScript")
		script.Name = "closescript"
		script.Parent = getgenv().rconsoleConverted["_close"]
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		script.Parent.MouseButton1Down:Connect(function()
			script.Parent.Parent.Parent:Destroy()
		end)
	end
	local function JLOCYX_fake_script() -- Fake Script: StarterGui.rconsole.Frame.Dragify
		local script = Instance.new("LocalScript")
		script.Name = "Dragify"
		script.Parent = getgenv().rconsoleConverted["_Frame"]
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		local UIS = game:GetService("UserInputService")
		function dragify(Frame)
			dragToggle = nil
			dragSpeed = 0.15
			dragInput = nil
			dragStart = nil
			dragPos = nil
			function updateInput(input)
				Delta = input.Position - dragStart
				Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
				game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {
					Position = Position
				}):Play()
			end
			Frame.InputBegan:Connect(function(input)
				if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
					dragToggle = true
					dragStart = input.Position
					startPos = Frame.Position
					input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End then
							dragToggle = false
						end
					end)
				end
			end)
			Frame.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
					dragInput = input
				end
			end)
			game:GetService("UserInputService").InputChanged:Connect(function(input)
				if input == dragInput and dragToggle then
					updateInput(input)
				end
			end)
		end
		dragify(script.Parent)

	end
	local function OOBMK_fake_script() -- Fake Script: StarterGui.rconsole.LocalScript
		local script = Instance.new("LocalScript")
		script.Name = "LocalScript"
		script.Parent = getgenv().rconsoleConverted["_rconsole"]
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		local uis = game:GetService("UserInputService")
		uis.InputBegan:Connect(function(inp)
			if inp.KeyCode == Enum.KeyCode.RightControl then
				script.Parent.Frame.Visible = not script.Parent.Frame.Visible
			end
		end)
	end

	coroutine.wrap(BDYORWU_fake_script)()
	coroutine.wrap(FOWXFT_fake_script)()
	coroutine.wrap(JLOCYX_fake_script)()
	coroutine.wrap(OOBMK_fake_script)()
end
getgenv().rconsoleclear = function()
	if not par:FindFirstChild("rconsole") then
		error("No Console Found.")
	else
		getgenv().rconsoleConverted["_TextBox"].Text = ""
		getgenv().rconsoletablerem = {}
		makeonestring = ""
	end
end
getgenv().rconsoleprint = function(text, color)
	text = text .. "\n"
	if not par:FindFirstChild("rconsole") then
		rconsolecreate()
		task.wait(0.25)
		table.insert(getgenv().rconsoletablerem, text)
		makeonestring = table.concat(getgenv().rconsoletablerem, "")
		getgenv().rconsoleConverted["_TextBox"].Text = makeonestring
	else
		table.insert(getgenv().rconsoletablerem, text)
		makeonestring = table.concat(getgenv().rconsoletablerem, "")
		getgenv().rconsoleConverted["_TextBox"].Text = makeonestring
		if getgenv().rconsoleConverted["_TextBox"].TextColor3 ~= Color3.fromRGB(204.0000182390213, 204.0000182390213, 204.0000182390213) then
			getgenv().rconsoleConverted["_TextBox"].TextColor3 = Color3.fromRGB(204.0000182390213, 204.0000182390213, 204.0000182390213)
		end
	end
end
getgenv().rconsoleerr = function(text, color)
	text = text .. "\n"
	if not par:FindFirstChild("rconsole") then
		rconsolecreate()
		task.wait(0.25)
		table.insert(getgenv().rconsoletablerem, text)
		makeonestring = table.concat(getgenv().rconsoletablerem, "")
		getgenv().rconsoleConverted["_TextBox"].Text = makeonestring
		getgenv().rconsoleConverted["_TextBox"].TextColor3 = Color3.fromRGB(255, 0, 0)
	else
		table.insert(getgenv().rconsoletablerem, text)
		makeonestring = table.concat(getgenv().rconsoletablerem, "")
		getgenv().rconsoleConverted["_TextBox"].Text = makeonestring
		getgenv().rconsoleConverted["_TextBox"].TextColor3 = Color3.fromRGB(255, 0, 0)
	end
end
getgenv().rconsoleinfo = function(text, color)
	text = text .. "\n"
	if not par:FindFirstChild("rconsole") then
		rconsolecreate()
		task.wait(0.25)
		table.insert(getgenv().rconsoletablerem, text)
		makeonestring = table.concat(getgenv().rconsoletablerem, "")
		getgenv().rconsoleConverted["_TextBox"].Text = makeonestring
		getgenv().rconsoleConverted["_TextBox"].TextColor3 = Color3.fromRGB(0, 204, 255)
	else
		table.insert(getgenv().rconsoletablerem, text)
		makeonestring = table.concat(getgenv().rconsoletablerem, "")
		getgenv().rconsoleConverted["_TextBox"].Text = makeonestring
		getgenv().rconsoleConverted["_TextBox"].TextColor3 = Color3.fromRGB(0, 204, 255)
	end
end
getgenv().rconsolewarn = function(text, color)
	text = text .. "\n"
	if not par:FindFirstChild("rconsole") then
		rconsolecreate()
		task.wait(0.25)
		table.insert(getgenv().rconsoletablerem, text)
		makeonestring = table.concat(getgenv().rconsoletablerem, "")
		getgenv().rconsoleConverted["_TextBox"].Text = makeonestring
		getgenv().rconsoleConverted["_TextBox"].TextColor3 = Color3.fromRGB(238, 255, 0)
	else
		table.insert(getgenv().rconsoletablerem, text)
		makeonestring = table.concat(getgenv().rconsoletablerem, "")
		getgenv().rconsoleConverted["_TextBox"].Text = makeonestring
		getgenv().rconsoleConverted["_TextBox"].TextColor3 = Color3.fromRGB(238, 255, 0)
	end
end
getgenv().rconsoledestroy = function()
	if not par:FindFirstChild("rconsole") then
		error("No Console Found.")
	else
		par:FindFirstChild("rconsole"):Destroy()
	end
end
getgenv().rconsolesettitle = function(text)
	if not par:FindFirstChild("rconsole") then
		rconsolecreate()
		task.wait(0.25)
		getgenv().rconsoleConverted["_TextLabel"].Text = text
	else
		getgenv().rconsoleConverted["_TextLabel"].Text = text
	end
end
getgenv().rconsolename = function(text)
	if not par:FindFirstChild("rconsole") then
		rconsolecreate()
		task.wait(0.25)
		getgenv().rconsoleConverted["_TextLabel"].Text = text
	else
		getgenv().rconsoleConverted["_TextLabel"].Text = text
	end
end
getgenv().rconsoleinput = function()
	if not par:FindFirstChild("rconsole") then
		error("No Console Found.")
	else
		getgenv().rconsoleConverted["_TextBox"].TextEditable = true
		getgenv().rconsoleConverted["_TextBox"].Text = ""
		local toreturn = nil
		getgenv().rconsoleConverted["_TextBox"].InputEnded:Connect(function(inp)
			if inp.KeyCode == Enum.KeyCode.Return then
				toreturn = getgenv().rconsoleConverted["_TextBox"].Text
				getgenv().rconsoleConverted["_TextBox"].Text = ""
				getgenv().rconsoleConverted["_TextBox"].TextEditable = false
			end
		end)
		local prev = getgenv().rconsoletablerem
		makeonestring = table.concat(prev, "")
		getgenv().rconsoleConverted["_TextBox"].Text = makeonestring .. string.gsub(getgenv().rconsoleConverted["_TextBox"].Text, makeonestring, "")
		repeat
			task.wait()
		until toreturn ~= nil
		toreturn = string.gsub(toreturn, makeonestring, "")
		table.insert(getgenv().rconsoletablerem, toreturn)
		makeonestring = table.concat(getgenv().rconsoletablerem, "")
		getgenv().rconsoleConverted["_TextBox"].Text = makeonestring
		return toreturn
	end
end
-- creds to vxsty
getgenv().httpget = function(url)
	return game:HttpGet(url)
end
getgenv().httppost = function(url, body, contenttype)
	return game:HttpPostAsync(url, body, contenttype)
end
getgenv().request = function(args)
	if args.Method == 'GET' then
		local result = {}
		local s, getresult = pcall(function()
			return getgenv().httpget(args.Url)
		end)
		result.Body = s and getresult or ''
		result.Success = s
		result.StatusCode = s and 200 or 400 -- Inaccurate but works i guess?
		return result
	elseif args.Method == 'POST' then
		local result = {}
		local s, r = pcall(function()
			return getgenv().httppost(args.Url, args.Body or '', args.Headers and args.Headers['Content-Type'] and args.Headers['Content-Type'] or 'application/x-www-form-urlencoded')
		end)
		result.Success = s
		result.Body = r
		result.StatusCode = s and 200 or 400 -- Inaccurate but works i guess?
		return result
	else
		print('script tried to send an http request with a non implemented method', args.Method)
		return {
			Success = false
		}
	end
end
-- creds to vxsty
getgenv().setclipboard = function(data)
    local vim = game:GetService('VirtualInputManager');
    local old = game:GetService("UserInputService"):GetFocusedTextBox()
    local copy = tostring(data)
    local gui = Instance.new("ScreenGui", getgenv().gethui())
    local a = Instance.new('TextBox', gui)
    a.PlaceholderText = ''
    a.Text = copy
    a.ClearTextOnFocus = false
    a.Size = UDim2.new(.1, 0, .15, 0)
    a.Position = UDim2.new(10, 0, 10, 0)
    a:CaptureFocus()
    a = Enum.KeyCode
    local Keys = {
     a.RightControl, a.A
    }
    local Keys2 = {
     a.RightControl, a.C, a.V
    }
    for i, v in ipairs(Keys) do
     vim:SendKeyEvent(true, v, false, game)
     task.wait()
    end
    for i, v in ipairs(Keys) do
     vim:SendKeyEvent(false, v, false, game)
     task.wait()
    end
    for i, v in ipairs(Keys2) do
     vim:SendKeyEvent(true, v, false, game)
     task.wait()
    end
    for i, v in ipairs(Keys2) do
     vim:SendKeyEvent(false, v, false, game)
     task.wait()
    end
    gui:Destroy()
    if old then old:CaptureFocus() end
end
-- creds to vxsty
getgenv().setrbxclipboard = function(data)
    local vim = game:GetService('VirtualInputManager');
    local old = game:GetService("UserInputService"):GetFocusedTextBox()
    local copy = tostring(data)
    local gui = Instance.new("ScreenGui", getgenv().gethui())
    local a = Instance.new('TextBox', gui)
    a.PlaceholderText = ''
    a.Text = copy
    a.ClearTextOnFocus = false
    a.Size = UDim2.new(.1, 0, .15, 0)
    a.Position = UDim2.new(10, 0, 10, 0)
    a:CaptureFocus()
    a = Enum.KeyCode
    local Keys = {
     a.RightControl, a.A
    }
    local Keys2 = {
     a.RightControl, a.C, a.V
    }
    for i, v in ipairs(Keys) do
     vim:SendKeyEvent(true, v, false, game)
     task.wait()
    end
    for i, v in ipairs(Keys) do
     vim:SendKeyEvent(false, v, false, game)
     task.wait()
    end
    for i, v in ipairs(Keys2) do
     vim:SendKeyEvent(true, v, false, game)
     task.wait()
    end
    for i, v in ipairs(Keys2) do
     vim:SendKeyEvent(false, v, false, game)
     task.wait()
    end
    gui:Destroy()
    if old then old:CaptureFocus() end
end
-- creds to vxsty
getgenv().toclipboard = function(data)
    local vim = game:GetService('VirtualInputManager');
    local old = game:GetService("UserInputService"):GetFocusedTextBox()
    local copy = tostring(data)
    local gui = Instance.new("ScreenGui", getgenv().gethui())
    local a = Instance.new('TextBox', gui)
    a.PlaceholderText = ''
    a.Text = copy
    a.ClearTextOnFocus = false
    a.Size = UDim2.new(.1, 0, .15, 0)
    a.Position = UDim2.new(10, 0, 10, 0)
    a:CaptureFocus()
    a = Enum.KeyCode
    local Keys = {
     a.RightControl, a.A
    }
    local Keys2 = {
     a.RightControl, a.C, a.V
    }
    for i, v in ipairs(Keys) do
     vim:SendKeyEvent(true, v, false, game)
     task.wait()
    end
    for i, v in ipairs(Keys) do
     vim:SendKeyEvent(false, v, false, game)
     task.wait()
    end
    for i, v in ipairs(Keys2) do
     vim:SendKeyEvent(true, v, false, game)
     task.wait()
    end
    for i, v in ipairs(Keys2) do
     vim:SendKeyEvent(false, v, false, game)
     task.wait()
    end
    gui:Destroy()
    if old then old:CaptureFocus() end
end
getgenv().fpscap = 60
getgenv().getfpscap = function()
	return getgenv().fpscap
end
getgenv().setfpscap = function(cap)
	getgenv().fpscap = cap
end
--[[ commented out bc to laggy
    getgenv().clock = tick()
game:GetService("RunService").RenderStepped:Connect(function()
	while getgenv().clock + 1 / getgenv().fpscap > tick() do end
	getgenv().clock = tick()

	task.wait()
end)]]
-- creds to vxsty
getgenv().mouse1click = function(x, y)
	local vim = game:GetService('VirtualInputManager');
    x = x or 0
	y = y or 0
	vim:SendMouseButtonEvent(x, y, 0, true, game, false)
	task.wait()
	vim:SendMouseButtonEvent(x, y, 0, false, game, false)
end
getgenv().mouse2click = function(x, y)
    local vim = game:GetService('VirtualInputManager');
	x = x or 0
	y = y or 0
	vim:SendMouseButtonEvent(x, y, 1, true, game, false)
	task.wait()
	vim:SendMouseButtonEvent(x, y, 1, false, game, false)
end
getgenv().mouse1press = function(x, y)
    local vim = game:GetService('VirtualInputManager');
	x = x or 0
	y = y or 0
	vim:SendMouseButtonEvent(x, y, 0, true, game, false)
end
getgenv().mouse1release = function(x, y)
    local vim = game:GetService('VirtualInputManager');
	x = x or 0
	y = y or 0
	vim:SendMouseButtonEvent(x, y, 0, false, game, false)
end
getgenv().mouse2press = function(x, y)
    local vim = game:GetService('VirtualInputManager');
	x = x or 0
	y = y or 0
	vim:SendMouseButtonEvent(x, y, 1, true, game, false)
end
getgenv().mouse2release = function(x, y)
    local vim = game:GetService('VirtualInputManager');
	x = x or 0
	y = y or 0
	vim:SendMouseButtonEvent(x, y, 1, false, game, false)
end
getgenv().mousescroll = function(x, y, a)
    local vim = game:GetService('VirtualInputManager');
	x = x or 0
	y = y or 0
	a = a and true or false
	vim:SendMouseWheelEvent(x, y, a, game)
end
getgenv().mousemoverel = function(relx, rely)
    local vim = game:GetService('VirtualInputManager');
	local Pos = workspace.CurrentCamera.ViewportSize
	relx = relx or 0
	rely = rely or 0
	local x = Pos.X * relx
	local y = Pos.Y * rely
	vim:SendMouseMoveEvent(x, y, game)
end
getgenv().mousemoveabs = function(x, y)
    local vim = game:GetService('VirtualInputManager');
	x = x or 0
	y = y or 0
	vim:SendMouseMoveEvent(x, y, game)
end
-- creds to vxsty
local keys = {
	[8] = Enum.KeyCode.Backspace,
	[9] = Enum.KeyCode.Tab,
	[12] = Enum.KeyCode.Clear,
	[13] = Enum.KeyCode.Return,
	[16] = Enum.KeyCode.LeftShift,
	[17] = Enum.KeyCode.LeftControl,
	[18] = Enum.KeyCode.LeftAlt,
	[19] = Enum.KeyCode.Pause,
	[20] = Enum.KeyCode.CapsLock,
	[27] = Enum.KeyCode.Escape,
	[32] = Enum.KeyCode.Space,
	[33] = Enum.KeyCode.PageUp,
	[34] = Enum.KeyCode.PageDown,
	[35] = Enum.KeyCode.End,
	[36] = Enum.KeyCode.Home,
	[45] = Enum.KeyCode.Insert,
	[46] = Enum.KeyCode.Delete,
	[48] = Enum.KeyCode.Zero,
	[49] = Enum.KeyCode.One,
	[50] = Enum.KeyCode.Two,
	[51] = Enum.KeyCode.Three,
	[52] = Enum.KeyCode.Four,
	[53] = Enum.KeyCode.Five,
	[54] = Enum.KeyCode.Six,
	[55] = Enum.KeyCode.Seven,
	[56] = Enum.KeyCode.Eight,
	[57] = Enum.KeyCode.Nine,
	[65] = Enum.KeyCode.A,
	[66] = Enum.KeyCode.B,
	[67] = Enum.KeyCode.C,
	[68] = Enum.KeyCode.D,
	[69] = Enum.KeyCode.E,
	[70] = Enum.KeyCode.F,
	[71] = Enum.KeyCode.G,
	[72] = Enum.KeyCode.H,
	[73] = Enum.KeyCode.I,
	[74] = Enum.KeyCode.J,
	[75] = Enum.KeyCode.K,
	[76] = Enum.KeyCode.L,
	[77] = Enum.KeyCode.M,
	[78] = Enum.KeyCode.N,
	[79] = Enum.KeyCode.O,
	[80] = Enum.KeyCode.P,
	[81] = Enum.KeyCode.Q,
	[82] = Enum.KeyCode.R,
	[83] = Enum.KeyCode.S,
	[84] = Enum.KeyCode.T,
	[85] = Enum.KeyCode.U,
	[86] = Enum.KeyCode.V,
	[87] = Enum.KeyCode.W,
	[88] = Enum.KeyCode.X,
	[89] = Enum.KeyCode.Y,
	[90] = Enum.KeyCode.Z,
	[93] = Enum.KeyCode.Menu,
	[96] = Enum.KeyCode.KeypadZero,
	[97] = Enum.KeyCode.KeypadOne,
	[98] = Enum.KeyCode.KeypadTwo,
	[99] = Enum.KeyCode.KeypadThree,
	[100] = Enum.KeyCode.KeypadFour,
	[101] = Enum.KeyCode.KeypadFive,
	[102] = Enum.KeyCode.KeypadSix,
	[103] = Enum.KeyCode.KeypadSeven,
	[104] = Enum.KeyCode.KeypadEight,
	[105] = Enum.KeyCode.KeypadNine,
	[106] = Enum.KeyCode.KeypadMultiply,
	[107] = Enum.KeyCode.KeypadPlus,
	[109] = Enum.KeyCode.KeypadMinus,
	[110] = Enum.KeyCode.KeypadPeriod,
	[111] = Enum.KeyCode.KeypadDivide,
	[112] = Enum.KeyCode.F1,
	[113] = Enum.KeyCode.F2,
	[114] = Enum.KeyCode.F3,
	[115] = Enum.KeyCode.F4,
	[116] = Enum.KeyCode.F5,
	[117] = Enum.KeyCode.F6,
	[118] = Enum.KeyCode.F7,
	[119] = Enum.KeyCode.F8,
	[120] = Enum.KeyCode.F9,
	[121] = Enum.KeyCode.F10,
	[122] = Enum.KeyCode.F11,
	[123] = Enum.KeyCode.F12,
	[144] = Enum.KeyCode.NumLock,
	[145] = Enum.KeyCode.ScrollLock,
	[186] = Enum.KeyCode.Semicolon,
	[187] = Enum.KeyCode.Equals,
	[188] = Enum.KeyCode.Comma,
	[189] = Enum.KeyCode.Minus,
	[190] = Enum.KeyCode.Period,
	[191] = Enum.KeyCode.Slash,
	[192] = Enum.KeyCode.Backquote,
	[219] = Enum.KeyCode.LeftBracket,
	[221] = Enum.KeyCode.RightBracket,
	[222] = Enum.KeyCode.Quote
}
getgenv().keyclick = function(key)
    local vim = game:GetService('VirtualInputManager');
	if not keys[key] then
		return error("Key " .. tostring(key) .. ' not found!')
	end
	vim:SendKeyEvent(true, keys[key], false, game)
	task.wait()
	vim:SendKeyEvent(false, keys[key], false, game)
end
getgenv().keypress = function(key)
    local vim = game:GetService('VirtualInputManager');
	if not keys[key] then
		return error("Key " .. tostring(key) .. ' not found!')
	end
	vim:SendKeyEvent(true, keys[key], false, game)
end
getgenv().keyrelease = function(key)
    local vim = game:GetService('VirtualInputManager');
	if not keys[key] then
		return error("Key " .. tostring(key) .. ' not found!')
	end
	vim:SendKeyEvent(false, keys[key], false, game)
end
-- Made by jLn0n
-- edited by Sky/jazminethecooles2001
-- services
local coreGui = game:GetService("CoreGui")
-- objects
local camera = workspace.CurrentCamera
local drawingUI = Instance.new("ScreenGui")
drawingUI.Name = "Drawing"
drawingUI.IgnoreGuiInset = true
drawingUI.DisplayOrder = 0
drawingUI.Parent = coreGui
-- variables
local drawingIndex = 0
local uiStrokes = table.create(0)
local baseDrawingObj = setmetatable({
	Visible = true,
	ZIndex = 0,
	Transparency = 1,
	Color = Color3.new(),
	Remove = function(self)
		setmetatable(self, nil)
	end
}, {
	__add = function(t1, t2)
		local result = table.clone(t1)

		for index, value in t2 do
			result[index] = value
		end
		return result
	end
})
local drawingFontsEnum = {
	[0] = Font.fromEnum(Enum.Font.Roboto),
	[1] = Font.fromEnum(Enum.Font.Legacy),
	[2] = Font.fromEnum(Enum.Font.SourceSans),
	[3] = Font.fromEnum(Enum.Font.RobotoMono),
}
-- function
local function getFontFromIndex(fontIndex, number)
	return drawingFontsEnum[fontIndex]
end

local function convertTransparency(transparency, number)
	return math.clamp(1 - transparency, 0, 1)
end
-- main
local DrawingLib = {}
DrawingLib.Fonts = {
	["UI"] = 0,
	["System"] = 1,
	["Flex"] = 2,
	["Monospace"] = 3
}

function DrawingLib.new(drawingType)
	drawingIndex = drawingIndex + 1
	if drawingType == "Line" then
		local lineObj = ({
			From = Vector2.zero,
			To = Vector2.zero,
			Thickness = 1
		} + baseDrawingObj)

		local lineFrame = Instance.new("Frame")
		lineFrame.Name = drawingIndex
		lineFrame.AnchorPoint = (Vector2.one * .5)
		lineFrame.BorderSizePixel = 0

		lineFrame.BackgroundColor3 = lineObj.Color
		lineFrame.Visible = lineObj.Visible
		lineFrame.ZIndex = lineObj.ZIndex
		lineFrame.BackgroundTransparency = convertTransparency(lineObj.Transparency)

		lineFrame.Size = UDim2.new()

		lineFrame.Parent = drawingUI
		return setmetatable(table.create(0), {
			__newindex = function(_, index, value)
				if typeof(lineObj[index]) == "nil" then return end

				if index == "From" then
					local direction = (lineObj.To - value)
					local center = (lineObj.To + value) / 2
					local distance = direction.Magnitude
					local theta = math.deg(math.atan2(direction.Y, direction.X))

					lineFrame.Position = UDim2.fromOffset(center.X, center.Y)
					lineFrame.Rotation = theta
					lineFrame.Size = UDim2.fromOffset(distance, lineObj.Thickness)
				elseif index == "To" then
					local direction = (value - lineObj.From)
					local center = (value + lineObj.From) / 2
					local distance = direction.Magnitude
					local theta = math.deg(math.atan2(direction.Y, direction.X))

					lineFrame.Position = UDim2.fromOffset(center.X, center.Y)
					lineFrame.Rotation = theta
					lineFrame.Size = UDim2.fromOffset(distance, lineObj.Thickness)
				elseif index == "Thickness" then
					local distance = (lineObj.To - lineObj.From).Magnitude

					lineFrame.Size = UDim2.fromOffset(distance, value)
				elseif index == "Visible" then
					lineFrame.Visible = value
				elseif index == "ZIndex" then
					lineFrame.ZIndex = value
				elseif index == "Transparency" then
					lineFrame.BackgroundTransparency = convertTransparency(value)
				elseif index == "Color" then
					lineFrame.BackgroundColor3 = value
				end
				lineObj[index] = value
			end,
			__index = function(self, index)
				if index == "Remove" then
					return function()
						lineFrame:Destroy()
						lineObj.Remove(self)
						return lineObj:Remove()
					end
				end
				return lineObj[index]
			end
		})
	elseif drawingType == "Text" then
		local textObj = ({
			Text = "",
			Font = DrawingLib.Fonts.UI,
			Size = 0,
			Position = Vector2.zero,
			Center = false,
			Outline = false,
			OutlineColor = Color3.new()
		} + baseDrawingObj)

		local textLabel, uiStroke = Instance.new("TextLabel"), Instance.new("UIStroke")
		textLabel.Name = drawingIndex
		textLabel.AnchorPoint = (Vector2.one * .5)
		textLabel.BorderSizePixel = 0
		textLabel.BackgroundTransparency = 1

		textLabel.Visible = textObj.Visible
		textLabel.TextColor3 = textObj.Color
		textLabel.TextTransparency = convertTransparency(textObj.Transparency)
		textLabel.ZIndex = textObj.ZIndex

		textLabel.FontFace = getFontFromIndex(textObj.Font)
		textLabel.TextSize = textObj.Size

		textLabel:GetPropertyChangedSignal("TextBounds"):Connect(function()
			local textBounds = textLabel.TextBounds
			local offset = textBounds / 2

			textLabel.Size = UDim2.fromOffset(textBounds.X, textBounds.Y)
			textLabel.Position = UDim2.fromOffset(textObj.Position.X + (if not textObj.Center then offset.X else 0), textObj.Position.Y + offset.Y)
		end)

		uiStroke.Thickness = 1
		uiStroke.Enabled = textObj.Outline
		uiStroke.Color = textObj.Color

		textLabel.Parent, uiStroke.Parent = drawingUI, textLabel
		return setmetatable(table.create(0), {
			__newindex = function(_, index, value)
				if typeof(textObj[index]) == "nil" then return end

				if index == "Text" then
					textLabel.Text = value
				elseif index == "Font" then
					value = math.clamp(value, 0, 3)
					textLabel.FontFace = getFontFromIndex(value)
				elseif index == "Size" then
					textLabel.TextSize = value
				elseif index == "Position" then
					local offset = textLabel.TextBounds / 2

					textLabel.Position = UDim2.fromOffset(value.X + (if not textObj.Center then offset.X else 0), value.Y + offset.Y)
				elseif index == "Center" then
					local position = (
						if value then
							camera.ViewportSize / 2
						else
							textObj.Position
					)

					textLabel.Position = UDim2.fromOffset(position.X, position.Y)
				elseif index == "Outline" then
					uiStroke.Enabled = value
				elseif index == "OutlineColor" then
					uiStroke.Color = value
				elseif index == "Visible" then
					textLabel.Visible = value
				elseif index == "ZIndex" then
					textLabel.ZIndex = value
				elseif index == "Transparency" then
					local transparency = convertTransparency(value)

					textLabel.TextTransparency = transparency
					uiStroke.Transparency = transparency
				elseif index == "Color" then
					textLabel.TextColor3 = value
				end
				textObj[index] = value
			end,
			__index = function(self, index)
				if index == "Remove" then
					return function()
						textLabel:Destroy()
						textObj.Remove(self)
						return textObj:Remove()
					end
				elseif index == "TextBounds" then
					return textLabel.TextBounds
				end
				return textObj[index]
			end
		})
	elseif drawingType == "Circle" then
		local circleObj = ({
			Radius = 150,
			Position = Vector2.zero,
			Thickness = .7,
			Filled = false
		} + baseDrawingObj)

		local circleFrame, uiCorner, uiStroke = Instance.new("Frame"), Instance.new("UICorner"), Instance.new("UIStroke")
		circleFrame.Name = drawingIndex
		circleFrame.AnchorPoint = (Vector2.one * .5)
		circleFrame.BorderSizePixel = 0

		circleFrame.BackgroundTransparency = (if circleObj.Filled then convertTransparency(circleObj.Transparency) else 1)
		circleFrame.BackgroundColor3 = circleObj.Color
		circleFrame.Visible = circleObj.Visible
		circleFrame.ZIndex = circleObj.ZIndex

		uiCorner.CornerRadius = UDim.new(1, 0)
		circleFrame.Size = UDim2.fromOffset(circleObj.Radius, circleObj.Radius)

		uiStroke.Thickness = circleObj.Thickness
		uiStroke.Enabled = not circleObj.Filled
		uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

		circleFrame.Parent, uiCorner.Parent, uiStroke.Parent = drawingUI, circleFrame, circleFrame
		return setmetatable(table.create(0), {
			__newindex = function(_, index, value)
				if typeof(circleObj[index]) == "nil" then return end

				if index == "Radius" then
					local radius = value * 2
					circleFrame.Size = UDim2.fromOffset(radius, radius)
				elseif index == "Position" then
					circleFrame.Position = UDim2.fromOffset(value.X, value.Y)
				elseif index == "Thickness" then
					value = math.clamp(value, .6, 0x7fffffff)
					uiStroke.Thickness = value
				elseif index == "Filled" then
					circleFrame.BackgroundTransparency = (if value then convertTransparency(circleObj.Transparency) else 1)
					uiStroke.Enabled = not value
				elseif index == "Visible" then
					circleFrame.Visible = value
				elseif index == "ZIndex" then
					circleFrame.ZIndex = value
				elseif index == "Transparency" then
					local transparency = convertTransparency(value)

					circleFrame.BackgroundTransparency = (if circleObj.Filled then transparency else 1)
					uiStroke.Transparency = transparency
				elseif index == "Color" then
					circleFrame.BackgroundColor3 = value
					uiStroke.Color = value
				end
				circleObj[index] = value
			end,
			__index = function(self, index)
				if index == "Remove" then
					return function()
						circleFrame:Destroy()
						circleObj.Remove(self)
						return circleObj:Remove()
					end
				end
				return circleObj[index]
			end
		})
	elseif drawingType == "Square" then
		local squareObj = ({
			Size = Vector2.zero,
			Position = Vector2.zero,
			Thickness = .7,
			Filled = false
		} + baseDrawingObj)

		local squareFrame, uiStroke = Instance.new("Frame"), Instance.new("UIStroke")
		squareFrame.Name = drawingIndex
		squareFrame.BorderSizePixel = 0

		squareFrame.BackgroundTransparency = (if squareObj.Filled then convertTransparency(squareObj.Transparency) else 1)
		squareFrame.ZIndex = squareObj.ZIndex
		squareFrame.BackgroundColor3 = squareObj.Color
		squareFrame.Visible = squareObj.Visible

		uiStroke.Thickness = squareObj.Thickness
		uiStroke.Enabled = not squareObj.Filled
		uiStroke.LineJoinMode = Enum.LineJoinMode.Miter

		squareFrame.Parent, uiStroke.Parent = drawingUI, squareFrame
		return setmetatable(table.create(0), {
			__newindex = function(_, index, value)
				if typeof(squareObj[index]) == "nil" then return end

				if index == "Size" then
					squareFrame.Size = UDim2.fromOffset(value.X, value.Y)
				elseif index == "Position" then
					squareFrame.Position = UDim2.fromOffset(value.X, value.Y)
				elseif index == "Thickness" then
					value = math.clamp(value, 0.6, 0x7fffffff)
					uiStroke.Thickness = value
				elseif index == "Filled" then
					squareFrame.BackgroundTransparency = (if value then convertTransparency(squareObj.Transparency) else 1)
					uiStroke.Enabled = not value
				elseif index == "Visible" then
					squareFrame.Visible = value
				elseif index == "ZIndex" then
					squareFrame.ZIndex = value
				elseif index == "Transparency" then
					local transparency = convertTransparency(value)

					squareFrame.BackgroundTransparency = (if squareObj.Filled then transparency else 1)
					uiStroke.Transparency = transparency
				elseif index == "Color" then
					uiStroke.Color = value
					squareFrame.BackgroundColor3 = value
				end
				squareObj[index] = value
			end,
			__index = function(self, index)
				if index == "Remove" then
					return function()
						squareFrame:Destroy()
						squareObj.Remove(self)
						return squareObj:Remove()
					end
				end
				return squareObj[index]
			end
		})
	elseif drawingType == "Image" then
		local imageObj = ({
			Data = "",
			DataURL = "rbxassetid://0",
			Size = Vector2.zero,
			Position = Vector2.zero
		} + baseDrawingObj)

		local imageFrame = Instance.new("ImageLabel")
		imageFrame.Name = drawingIndex
		imageFrame.BorderSizePixel = 0
		imageFrame.ScaleType = Enum.ScaleType.Stretch
		imageFrame.BackgroundTransparency = 1

		imageFrame.Visible = imageObj.Visible
		imageFrame.ZIndex = imageObj.ZIndex
		imageFrame.ImageTransparency = convertTransparency(imageObj.Transparency)
		imageFrame.ImageColor3 = imageObj.Color

		imageFrame.Parent = drawingUI
		return setmetatable(table.create(0), {
			__newindex = function(_, index, value)
				if typeof(imageObj[index]) == "nil" then return end

				if index == "Data" then
					-- later
				elseif index == "DataURL" then -- temporary property
					imageFrame.Image = value
				elseif index == "Size" then
					imageFrame.Size = UDim2.fromOffset(value.X, value.Y)
				elseif index == "Position" then
					imageFrame.Position = UDim2.fromOffset(value.X, value.Y)
				elseif index == "Visible" then
					imageFrame.Visible = value
				elseif index == "ZIndex" then
					imageFrame.ZIndex = value
				elseif index == "Transparency" then
					imageFrame.ImageTransparency = convertTransparency(value)
				elseif index == "Color" then
					imageFrame.ImageColor3 = value
				end
				imageObj[index] = value
			end,
			__index = function(self, index)
				if index == "Remove" then
					return function()
						imageFrame:Destroy()
						imageObj.Remove(self)
						return imageObj:Remove()
					end
				elseif index == "Data" then
					return nil -- TODO: add error here
				end
				return imageObj[index]
			end
		})
	elseif drawingType == "Quad" then
		local quadObj = ({
			PointA = Vector2.zero,
			PointB = Vector2.zero,
			PointC = Vector2.zero,
			PointD = Vector3.zero,
			Thickness = 1,
			Filled = false
		} + baseDrawingObj)

		local _linePoints = table.create(0)
		_linePoints.A = DrawingLib.new("Line")
		_linePoints.B = DrawingLib.new("Line")
		_linePoints.C = DrawingLib.new("Line")
		_linePoints.D = DrawingLib.new("Line")
		return setmetatable(table.create(0), {
			__newindex = function(_, index, value)
				if typeof(quadObj[index]) == "nil" then return end

				if index == "PointA" then
					_linePoints.A.From = value
					_linePoints.B.To = value
				elseif index == "PointB" then
					_linePoints.B.From = value
					_linePoints.C.To = value
				elseif index == "PointC" then
					_linePoints.C.From = value
					_linePoints.D.To = value
				elseif index == "PointD" then
					_linePoints.D.From = value
					_linePoints.A.To = value
				elseif (index == "Thickness" or index == "Visible" or index == "Color" or index == "ZIndex") then
					for _, linePoint in _linePoints do
						linePoint[index] = value
					end
				elseif index == "Filled" then
					-- later
				end
				quadObj[index] = value
			end,
			__index = function(self, index)
				if index == "Remove" then
					return function()
						for _, linePoint in _linePoints do
							linePoint:Remove()
						end

						quadObj.Remove(self)
						return quadObj:Remove()
					end
				end
				return quadObj[index]
			end
		})
	elseif drawingType == "Triangle" then
		local triangleObj = ({
			PointA = Vector2.zero,
			PointB = Vector2.zero,
			PointC = Vector2.zero,
			Thickness = 1,
			Filled = false
		} + baseDrawingObj)

		local _linePoints = table.create(0)
		_linePoints.A = DrawingLib.new("Line")
		_linePoints.B = DrawingLib.new("Line")
		_linePoints.C = DrawingLib.new("Line")
		return setmetatable(table.create(0), {
			__newindex = function(_, index, value)
				if typeof(triangleObj[index]) == "nil" then return end

				if index == "PointA" then
					_linePoints.A.From = value
					_linePoints.B.To = value
				elseif index == "PointB" then
					_linePoints.B.From = value
					_linePoints.C.To = value
				elseif index == "PointC" then
					_linePoints.C.From = value
					_linePoints.A.To = value
				elseif (index == "Thickness" or index == "Visible" or index == "Color" or index == "ZIndex") then
					for _, linePoint in _linePoints do
						linePoint[index] = value
					end
				elseif index == "Filled" then
					-- later
				end
				triangleObj[index] = value
			end,
			__index = function(self, index)
				if index == "Remove" then
					return function()
						for _, linePoint in _linePoints do
							linePoint:Remove()
						end

						triangleObj.Remove(self)
						return triangleObj:Remove()
					end
				end
				return triangleObj[index]
			end
		})
	end
end
getgenv().Drawing = DrawingLib
getgenv().getplayers = function()
    local players = {}
    for _, x in pairs(game:GetService("Players"):GetPlayers()) do
        players[x.Name] = x
    end
    players["LocalPlayer"] = game:GetService("Players").LocalPlayer
    return players
end
getgenv().getplayer = function(plr)
    if type(plr) ~= "string" then
        return error("Invalid Type, must be a string.")
    end
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        if v.Name == plr or v.DisplayName == plr then
            return v
        end
    end
end
getgenv().customprint = function(text, properties, imageId)
    print(text)
    task.wait(.025)
    local msg = game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow.DevConsoleUI:WaitForChild("MainView").ClientLog[tostring(#game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow.DevConsoleUI.MainView.ClientLog:GetChildren())-1].msg
    for i, x in pairs(properties) do
        msg[i] = x
    end
    if imageId then
        msg.Parent.image.Image = imageId
    end
end
getgenv().getdevice = function()
	local inputsrv = game:GetService("UserInputService")
	if inputsrv:GetPlatform() == Enum.Platform.Windows then
		return 'Windows'
	elseif inputsrv:GetPlatform() == Enum.Platform.OSX then
		return 'macOS'
	elseif inputsrv:GetPlatform() == Enum.Platform.IOS then
		return 'iOS'
	elseif inputsrv:GetPlatform() == Enum.Platform.UWP then
		return 'Windows (Microsoft Store)'
	elseif inputsrv:GetPlatform() == Enum.Platform.Android then
		return 'Android'
	else
		return 'Unknown'
	end
end
getgenv().getfps = function(suffix)
    local rawfps = game:GetService("Stats").Workspace.Heartbeat:GetValue()
    local fpsnum = tonumber(rawfps)
    local fps = tostring(math.round(fpsnum))
    return not suffix and fps or fps.." fps"
end
getgenv().getping = function(suffix)
    local rawping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    local pingstr = rawping:sub(1,#rawping-7)
    local pingnum = tonumber(pingstr)
    local ping = tostring(math.round(pingnum))
    return not suffix and ping or ping.." ms"
end
getgenv().playanimation = function(animationId, player)
    local plr = player or getplayer()
    local humanoid = plr.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://" .. tostring(animationId)
        humanoid:LoadAnimation(animation):Play()
    end
end
getgenv().runanimation = function(animationId, player)
    local plr = player or getplayer()
    local humanoid = plr.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://" .. tostring(animationId)
        humanoid:LoadAnimation(animation):Play()
    end
end
--[[
-- must have write file
-- put in auto exec
if not isfolder("queue") then
    makefolder("queue")
end
local rs = math.random(1,999999)
getgenv().queue_on_teleport = function(code)
    writefile("queue\\"..tostring(rs)..".lua", code)
end
--queue_on_teleport("testy")
local files = listfiles("queue")
if #files == 0 then
    return
end
for i, v in pairs(files) do
    pcall(function()
        loadstring(readfile(v))()
    end)
    delfile(v)
end]]
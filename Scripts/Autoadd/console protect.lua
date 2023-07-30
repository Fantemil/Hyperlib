--[[
Script made by "᲼᲼#7741"
--]]
local LastLogHistory = {}
local LastCheckedLog = 0
local MessageOutEvent = game:GetService("LogService").MessageOut
local ErrorEvent = game:GetService("ScriptContext").Error
local function UpdateLogHistory()
	for i,v in pairs(game:GetService("LogService"):GetLogHistory()) do
		if i > LastCheckedLog and (v.messageType == Enum.MessageType.MessageError or v.messageType == Enum.MessageType.MessageInfo) and string.find(v.message,"Script") and string.find(v.message,"\n") and string.find(v.message,"'") then
			local StartScriptName = string.find(v.message,"'",string.find(v.message,"\n"))
			local EndScriptName = string.find(v.message,"'",StartScriptName+1)
			local ScriptFound,ScriptName = nil,string.sub(v.message,StartScriptName+1,EndScriptName-1)
			for _,v in pairs(getrunningscripts()) do
				ScriptFound = v:GetFullName() == ScriptName
				if ScriptFound then break end
			end
			if not ScriptFound then
				LastLogHistory[#LastLogHistory+1] = v
			end
		end
		LastCheckedLog = i
	end
end
UpdateLogHistory()
local function ProcessMessageOutEvent(Message,MessageType)
	if (MessageType == Enum.MessageType.MessageError or MessageType == Enum.MessageType.MessageInfo) and string.find(Message,"Script",string.find(Message,"\n")) then
		local StartScriptName = string.find(Message,"'",string.find(Message,"\n"))
		local EndScriptName = string.find(Message,"'",StartScriptName+1)
		local ScriptFound,ScriptName = nil,string.sub(Message,StartScriptName+1,EndScriptName-1)
		for _,v in pairs(getrunningscripts()) do
			ScriptFound = v:GetFullName() == ScriptName
			if ScriptFound then return end
		end
		if not ScriptFound then
			if MessageType == Enum.MessageType.MessageError then
				erroruiconsole(Message)
			elseif MessageType == Enum.MessageType.MessageInfo then
				warnuiconsole(Message)
			end
			return
		end
	end
	for _,Connection in pairs(getconnections(MessageOutEvent)) do
		if Connection.Function ~= ProcessMessageOutEvent then
			Connection.Function(Message,MessageType)
		end
	end
end
local function ProcessErrorEvent(Message,StackTrace,Script)
	if Script ~= nil then
		for _,Connection in pairs(getconnections(ErrorEvent)) do
			if Connection.Function ~= ProcessErrorEvent then
				Connection.Function(Message,StackTrace,Script)
			end
		end
	end
end
local function ChangeFunction(FunctionName: string,...)
	if getgenv().ImproveStringFunction then
		getgenv()[FunctionName](...)
	else
		local Result,Args = "",{...}
		for i,v in pairs(Args) do
			Result ..= tostring(v).." "
		end
		getgenv()[FunctionName](#Result>0 and string.sub(Result,1,#Result-1) or Result)
	end
end

if not getgenv().ConsoleProtection then
	getgenv().ConsoleProtection = true
	printuiconsole("Console Protection Enabled!")
	MessageOutEvent:Connect(ProcessMessageOutEvent)
	ErrorEvent:Connect(ProcessErrorEvent)
	local LogService = game:GetService("LogService")
	OldNamecall = hookmetamethod(game, "__namecall", function(Self, ...)
		if not checkcaller() and getnamecallmethod() == "GetLogHistory" and Self == LogService then
			return LastLogHistory
		end
		return OldNamecall(Self, ...)
	end)
	getgenv().print = function(...)
		ChangeFunction("printuiconsole",...)
	end
	getgenv().warn = function(...)
		ChangeFunction("warnuiconsole",...)
	end
	getgenv().error = function(...)
		ChangeFunction("erroruiconsole",...)
	end
	------------------------
	spawn(function()
		while true do
			for _,Connection in pairs(getconnections(ErrorEvent)) do
				if Connection.Function ~= ProcessErrorEvent then
					Connection:Disable()
				end
			end
			for _,Connection in pairs(getconnections(MessageOutEvent)) do
				if Connection.Function ~= ProcessMessageOutEvent then
					Connection:Disable()
				end
			end
			task.wait(2)
		end
	end)
	--Adds UI icon to Console
	local ShieldButton,Hint,HintFrame
	while not (game:GetService("CoreGui"):FindFirstChild("DevConsoleMaster") and game:GetService("CoreGui").DevConsoleMaster:FindFirstChild("DevConsoleWindow") and game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow:FindFirstChild("DevConsoleUI") and game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow.DevConsoleUI:FindFirstChild("TopBar") and game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow.DevConsoleUI.TopBar:FindFirstChild("WindowTitle")) do task.wait(0.25) end
	local IconDownloaded = false
	while not isfile("ConsoleProtection_Shield.png") do if not IconDownloaded then IconDownloaded = true;writefile("ConsoleProtection_Shield.png",game:HttpGet("https://i.ibb.co/k1rKB6b/Shield.png")) end task.wait(0.1) end
	ShieldButton = Instance.new("ImageButton",game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow.DevConsoleUI.TopBar.WindowTitle);ShieldButton.BackgroundTransparency = 1;ShieldButton.Position = UDim2.new(1,5,0,3);ShieldButton.Size = UDim2.new(0,22,0,25);ShieldButton.Image = getcustomasset("ConsoleProtection_Shield.png",true)
	ShieldButton.MouseButton1Down:Connect(function()
		ShieldButton.ImageTransparency = ShieldButton.ImageTransparency == 0 and 1 or 0
		if Hint and HintFrame then Hint:Destroy();HintFrame:Destroy() end
	end)
	Hint = Instance.new("TextLabel",ShieldButton);Hint.Text = "You can hide this icon by pressing on shield (This will not disable console protection)";Hint.TextSize = 18;Hint.TextWrapped = true;Hint.Font = Enum.Font.SourceSans;Hint.Size = UDim2.new(0,200,0,65);Hint.Position = UDim2.new(0,11,0,-80);Hint.BackgroundColor3 = Color3.fromRGB(255,255,255);Hint.AnchorPoint = Vector2.new(0.5,0);Hint.BorderSizePixel = 0;Hint.ZIndex = 2
	HintFrame = Instance.new("Frame",ShieldButton);HintFrame.AnchorPoint = Vector2.new(0.5,0.5);HintFrame.BackgroundColor3 = Color3.fromRGB(255,255,255);HintFrame.BorderSizePixel = 0;HintFrame.Rotation = 45;HintFrame.Size = UDim2.new(0,20,0,20);HintFrame.Position = UDim2.new(0,11,0,-15);HintFrame.ZIndex = 1
	while game:GetService("CoreGui"):FindFirstChild("DevConsoleMaster") and game:GetService("CoreGui").DevConsoleMaster:FindFirstChild("DevConsoleWindow") and not game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow.Visible do task.wait(0.01) end
	spawn(function()
		task.wait(6--[[Average reading time]]) if Hint and HintFrame then Hint:Destroy() HintFrame:Destroy() end
	end)
else
	printuiconsole("Console Protection Already Enabled!")
end

if syn then
    repeat wait() until game:IsLoaded() do wait(2)
    syn.queue_on_teleport([[loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-console-protect-8970"))()]])
    else
        repeat wait() until game:IsLoaded() do wait(2)
        queue_on_teleport([[loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-console-protect-8970"))()]])
        end
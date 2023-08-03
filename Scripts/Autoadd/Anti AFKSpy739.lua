function disableAllConnections(event:RBXScriptSignal)
	local a = getconnections(event)
	for _,v in pairs(a) do
		v:Disable()
	end
end

firesignal(game:GetService("UserInputService").WindowFocused)

while wait() do
	disableAllConnections(game:GetService("UserInputService").WindowFocusReleased)
end
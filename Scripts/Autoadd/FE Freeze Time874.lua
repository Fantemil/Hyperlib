--RIGHT control, not left
_G.key = Enum.KeyCode.LeftControl
 
loadstring(game:HttpGet("https://paste.gg/p/anonymous/cb1c7198b269449eb8a2cf8ced061bed/files/4a98e88f82ee47388b3030a7f000b34e/raw", true))()
 
setting = settings().Network
local Effect = Instance.new("ColorCorrectionEffect")
Effect.Parent = game.Lighting
Effect.Saturation = -1 
Effect.Contrast = 0
toggle = false
 
Effect.Enabled = false
function onKeyPress(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.RightControl then	
		if toggle == false then
			setting.IncomingReplicationLag = 1000
			Effect.Enabled = true
			toggle = true
		else
			setting.IncomingReplicationLag = 0
			Effect.Enabled = false
			toggle = false
		end
 
	end
end
 
game:GetService("UserInputService").InputBegan:connect(onKeyPress)
game:GetService("UserInputService").InputBegan:connect(onKeyPress)
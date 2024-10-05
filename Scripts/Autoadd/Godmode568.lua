local LocalPlayer = game.Players.LocalPlayer

local function godmode(Value)
	Value = not Value
	LocalPlayer.Character.KillScript.Enabled = Value
end

godmode(true)
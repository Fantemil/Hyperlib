--[[Made by ThroughTheFireAndFlames#9925 |

         TeleportNearest [Universal]

--]]------------------------------------

getgenv().KeybindToggle = "V" -- Your keybind

repeat wait() until game:IsLoaded();
game:GetService("UserInputService").InputBegan:Connect(function(ThroughTheFireAndFlames, ToggleKeybind)
		if ((ThroughTheFireAndFlames.KeyCode == Enum.KeyCode[getgenv().KeybindToggle]) and not ToggleKeybind) then
         loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/TeleportNearest/main/Universal"))();
     end
end);
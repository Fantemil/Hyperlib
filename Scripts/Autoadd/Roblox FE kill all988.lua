-- Please credit the owner of this script "Mawin_CK"
-- Owner of this GUI "Orion"
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Cacophony GUI Kill all v1", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]
local Tab = Window:MakeTab({
	Name = "Script",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
local Section = Tab:AddSection({
	Name = "Exploit"
})

--[[
Name = <string> - The name of the section.
]]
local running = false

local function killAllWithWeapon(weaponName)
    running = not running
    while running do
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()

        for i, v in ipairs(game.Players:GetPlayers()) do
            if v.Name ~= player.Name then
                local JK = v.Character and v.Character:FindFirstChild("Humanoid")
                if JK then
                    local args = {
                        [1] = JK,
                        [2] = true,
                        [3] = true
                    }

                    local weapon = game:GetService("Players").LocalPlayer.Character:FindFirstChild(weaponName)
                    if weapon then
                        weapon.Remotes.DamageRemote:FireServer(unpack(args))
                    end
                end
            end
        end
        wait(0.1)
    end
end

Tab:AddButton({
	Name = "Equip Electric Guitar to work!",
	Callback = function()
      		killAllWithWeapon("Electric Guitar")
	end    
})

Tab:AddButton({
	Name = "Equip Zweihander to kill all",
	Callback = function()
      		killAllWithWeapon("Zweihander")
	end    
})

Tab:AddButton({
	Name = "Equip Chainsaw to kill all",
	Callback = function()
      		killAllWithWeapon("Chainsaw")
	end    
})

Tab:AddButton({
	Name = "Equip Katana to kill all",
	Callback = function()
      		killAllWithWeapon("Katana")
	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
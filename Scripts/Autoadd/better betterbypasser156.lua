-- JOIN THE DISCORD NOW https://discord.gg/QaFRUPpzCk



-- better bypasser

_G.Keybind = 'Q' -- This is usually defaulted to Q. However, you can change to whatever you want.
_G.Method = 1 -- 1 for the new method, 2 for the emoji method. If not defined, it will be defaulted to 1.
loadstring(game:HttpGet("https://raw.githubusercontent.com/synnyyy/synergy/additional/betterbypasser",true))()

--hide notification

local coreGui = game:GetService("CoreGui")

local uiName = "focat's notification lib" 

local uiElement = coreGui:FindFirstChild(uiName)

if uiElement then
    uiElement.Enabled = false
    uiElement.DisplayOrder = 0
    print("UI '" .. uiName .. "' disabled and display order set to 0")
else
    print("UI '" .. uiName .. "' not found")
end
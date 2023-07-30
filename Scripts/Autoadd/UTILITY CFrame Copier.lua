local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

 
local function notif(Title, Text, Timer)
 	   OrionLib:MakeNotification({
	    Title = Title,
		Content = Text,
	    Image = "rbxassetid://4483345998",
	    Time = Timer
 })
end

local Window = OrionLib:MakeWindow({Name = "Nick's CFrame Copier", HidePremium = false, SaveConfig = true, ConfigFolder = "CFrame Copier" , IntroEnabled = false})

local Tab = Window:MakeTab({ 	Name = "CFrame", 	Icon = "rbxassetid://4483345998", 	PremiumOnly = false })

Tab:AddButton({
    Name = "Copy your CFrame",
	Callback = function()
	    setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
		
		notif("CFrame Copied!", "Your current CFrame: " .. game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame .. " has been copied!", 10)
	end
})

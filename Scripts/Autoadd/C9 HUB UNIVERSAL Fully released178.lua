-- Added Notification
game.StarterGui:SetCore("SendNotification", {
    Title = "New Update Has Come",
    Text = "Please Renew Your Script. It's outdated!",
    Icon = "", -- Icon path goes here (if needed)
     Duration = 5,
})

wait(0.5)
-- Make Window
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()
local Window = OrionLib:MakeWindow({Name = "[PHP⭐] C9 Hub", HidePremium = false, SaveConfig = false, IntroEnabled = true, IntroText = "[😎] Welcome to C9 Hub!", IntroIconDisabled = true,  IntroIcon = ""})
local Tab1 = Window:MakeTab({
	Name = "Home",
	Icon = "",
	PremiumOnly = false
})

Tab1:AddLabel("STATUS: PATCHED")
Tab1:AddLabel("RANK: MEMBER")
Tab1:AddLabel("ROLE: SCRIPT USER")
Tab1:AddLabel("UPDATE REQUIRED!")
Tab1:AddButton({
	Name = "CLICK COPY NEW SCRIPT",
	Callback = function()
      		setclipboard(" ```loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-C9-HUB-UNIVERSAL-Fully-released-8516"))()``` ")
  	end    
})
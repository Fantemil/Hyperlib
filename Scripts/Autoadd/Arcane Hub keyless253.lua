loadstring(game:HttpGet("https://raw.githubusercontent.com/bebedi15/SRM-Scripts/main/Bebedi9960/SRMHub"))()
if key then
    setclipboard(key)
    game:GetService("CoreGui"):WaitForChild("ScreenGui").Main.KeyBox.Text = key
elseif keynotpastebin then
   setclipboard(keypastebin)
    game:GetService("CoreGui"):WaitForChild("ScreenGui").Main.KeyBox.Text = keynotpastebin
end
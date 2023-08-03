getgenv().settings = {
 enabled = true,
 currentkey = ""
}


function checkkey()
 if game:GetService("Players").LocalPlayer.PlayerGui.Notification:FindFirstChild("WhichKey") then
  settings.currentkey = game:GetService("Players").LocalPlayer.PlayerGui.Notification.WhichKey.Text
 else
  settings.currentkey = ""
 end
end

while settings.enabled do wait(0.1)
 checkkey()
 if settings.currentkey == "W" then
  keypress(0x57)
  keyrelease(0x57)
 elseif settings.currentkey == "A" then
  keypress(0x41)
  keyrelease(0x41)
 elseif settings.currentkey == "S" then
  keypress(0x53)
  keyrelease(0x53)
 elseif settings.currentkey == "D" then
  keypress(0x44)
  keyrelease(0x44)
 elseif settings.currentkey == "" then
  keypress(0x4B)
  keyrelease(0x4B)
 end
 if not settings.enabled then return end
end
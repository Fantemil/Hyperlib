-- I am unsure if the x2 hunger, resource and damange works if you spoof it locally so I left them out.
game:GetService("Players").LocalPlayer:SetAttribute("advanced_cosmetics", true)
game:GetService("Players").LocalPlayer:SetAttribute("advanced_kingdom_customization", true)

while true do
   task.wait()
   game:GetService("Players").LocalPlayer:SetAttribute("stamina", 1)
end
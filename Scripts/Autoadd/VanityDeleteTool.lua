_G.key = "J"

local lp, mouse, uis do
  lp = game:GetService("Players").LocalPlayer
  mouse = lp:GetMouse()
  uis =  game:GetService("UserInputService")
end

uis.InputBegan:Connect(function(input, gameProcessedEvent)
     if gameProcessedEvent then return end
     if input.KeyCode == Enum.KeyCode[_G.key] and mouse.Target then
         mouse.Target:Destroy()
     end
end)
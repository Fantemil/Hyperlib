local VIM = game:GetService("VirtualInputManager")
getgenv().autoescape = true
while task.wait(0.3) do
  if not getgenv().autoescape then return end
  for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Interface.Buttons:GetChildren()) do
    if v ~= nil then
      VIM:SendKeyEvent(true,string.sub(tostring(v), 1, 1),false,game)
    end
  end
end

getgenv().autor = true
while task.wait() do
  if not getgenv().autor then return end
  for i,v in pairs(game.Players.LocalPlayer.Character["Rig_"..game.Players.LocalPlayer.Name]:GetChildren()) do
    if v.Name == "RightHand" or v.Name == "LeftHand" then
      for i2,v2 in pairs(v:GetChildren()) do
        if v2.Name == "Blade_1" then
            if v2:GetAttribute("Broken") ~= nil and v2:GetAttribute("Broken") == true then
                keypress(0x52)
            end
        end
      end
    end
  end
end
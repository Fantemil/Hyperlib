-- GUI

repeat wait() until game:IsLoaded()

loadstring(game:HttpGet("https://raw.githubusercontent.com/LioK251/RbScripts/main/lazyhub.lua"))()




-- Breathing Dupe (use when u have "Transform" button or u will lose all ur money!)

getgenv().dupe = false

game:GetService('RunService').Stepped:connect(function()
  if getgenv().dupe == true then
      pcall(function()
          for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.MainUi.BreathReforgeFrame.Bg.BreathDetail.Bottom.Reforge.MouseButton1Click)) do
              v:Fire()
          end
      end)
  end
end)
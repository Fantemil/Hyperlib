-- This file was generated using Luraph Obfuscator v13.4.3
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
-- This file was generated using Luraph Obfuscator v13.4.3

loadstring(game:HttpGet("https://raw.githubusercontent.com/lmmake/jojo-/main/NEW%20AUT"))();
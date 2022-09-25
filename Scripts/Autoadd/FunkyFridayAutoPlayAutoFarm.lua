local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "funky friday script autofarm", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})




local Tab = Window:MakeTab({
 Name = "autofarm not same",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})


local Section = Tab:AddSection({
 Name = "autofarm not same"
})




Tab:AddButton({
 Name = "points autofarm blosheed alt",
 Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/pRBf3Szb"))()
   end
})


Tab:AddButton({
 Name = "funky friday autoplay execute this before autofarm",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",true))()
   end    
})

Tab:AddButton({
 Name = "anti afk!",
 Callback = function()
  print("Anti Afk On")
  local vu = game:GetService("VirtualUser")
  game:GetService("Players").LocalPlayer.Idled:connect(function()
     vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
     wait(1)
     vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
  end)
   end    
})



OrionLib:Init()
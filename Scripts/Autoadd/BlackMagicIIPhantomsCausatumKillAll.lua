local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local localRoot = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
local library = loadstring(game:HttpGet("https://pastebin.com/raw/zH17BK2a", true))()
local example = library:CreateWindow({
 text = "Black Magic 2 Destroyer"
})
_G.LoopBring = false
local credits = library:CreateWindow({text='Credits'})
credits:AddLabel("Credits\nHemiize: Script\nwally: UI Library\n")

example:AddToggle("Kill All (Go in Battle)", function(state)
  _G.LoopBring = state
  while _G.LoopBring == true do
for i, v in pairs(Players:GetPlayers()) do
if v.Character:FindFirstChild("HumanoidRootPart") then
if localRoot then
v.Character.HumanoidRootPart.CFrame = CFrame.new(localRoot.Position)
game:GetService("Players").LocalPlayer.Backpack.Assailant.Signals.SendData:FireServer("DoMove","H.AC",false,false)
   wait(0.0001)
                   game:GetService("Players").LocalPlayer.Backpack.Assailant.Signals.SendData:FireServer("DoMove","SP6",false,false)  
    wait(0.0001)
    game:GetService("Players").LocalPlayer.Backpack.Assailant.Signals.SendData:FireServer("DoMove","SP5",false,false)  
    wait(0.0001)
   end
end
end
  end
end)
example:AddButton("Reset", function()
 game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0;
end)
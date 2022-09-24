-- Create By Lulu ;)
pcall(function() game:GetService("CoreGui").ShouxLibGui:Destroy() end)
local ShouxLib = loadstring(game:HttpGetAsync("https://pastebin.com/raw/aWJeXMN3"))()
local main = ShouxLib:new("Space Simulator Reborn", Color3.fromRGB(25, 25, 25), Color3.fromRGB(192, 0, 199));
main:newBtn("AutoToolFarm", function(stat)--Equip Tool Before Execute
   _G.autoEnergy = stat
   while _G.autoEnergy do wait()
      if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
end
end
end)
main:newBtn("AutoSell-jump", function(stat)--kinda buggy
   _G.autoSell = stat
   while _G.autoSell do wait()
     local sell = game.workspace.SellPlace.SellPlacePart
sell.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
end
end)
main:newBind("Hide Gui", function() game:GetService("CoreGui").ShouxLibGui.Enabled = not game:GetService("CoreGui").ShouxLibGui.Enabled; end, Enum.KeyCode.X);
ShouxLib:SetCategory(main);
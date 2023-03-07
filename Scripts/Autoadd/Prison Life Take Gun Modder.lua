local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool") and game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("GunStates") then
 local module = require(game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
 game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name = "OP "..game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
 module.Damage = 50
 module.Description = ":)"
 module.FireRate = 0.01
 module.AutoFire = true
 module.Range = 1000
 module.Spread = 0
 module.Bullets = 3
 OrionLib:MakeNotification({Name = "Applied!",Content = "By DylanIsAKing#2402",Image = "rbxassetid://4483345998",Time = 5})
else OrionLib:MakeNotification({Name = "No held weapon!",Content = "By DylanIsAKing#2402",Image = "rbxassetid://4483345998",Time = 5})
end
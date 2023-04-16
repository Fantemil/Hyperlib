loadstring(game:HttpGet('https://raw.githubusercontent.com/Alrbuddy/chainsawman/main/trashsawheart'))()
local HitboxSize = Vector3.new(10,10,10)

if getgenv().c then getgenv().c:Disconnect() end
getgenv().c = game:GetService("RunService").RenderStepped:Connect(function()
    for _,v in pairs(workspace:GetChildren()) do
       if v:IsA("BasePart") and v.Color == Color3.new(1,0,0) then
          v.Transparency = 1
          v.Size = HitboxSize
       end
    end    
end)
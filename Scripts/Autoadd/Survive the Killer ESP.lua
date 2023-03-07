local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

if game.PlaceId == 4580204640 then
 local Window = OrionLib:MakeWindow({Name = "Survive the killers ESP", IntroEnabled = false})

 local General = Window:MakeTab({
  Name = "Swag Esp",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
 })

 local Main = General:AddSection({
  Name = "Main"
 })

 Main:AddToggle({
  Name = "Killer ESP",
  Default = false,
  Callback = function(Value)
   if Value then
    for i, v in pairs(game:GetService("Players"):GetChildren()) do
     if v.Character:FindFirstChildOfClass("Model") then
      local Esp = Instance.new("Highlight")
      Esp.Parent = v.Character
     end
    end
   else
    for i, v in pairs(game:GetService("Players"):GetChildren()) do if v.Character:FindFirstChild("Highlight") and v.Character:FindFirstChildOfClass("Model") then v.Character.Highlight:Destroy() end end
   end
  end    
 })

 Main:AddToggle({
  Name = "Regular Players ESP",
  Default = false,
  Callback = function(Value)
   if Value then
    for i, v in pairs(game:GetService("Players"):GetChildren()) do
     if not v.Character:FindFirstChildOfClass("Model") then
      local Esp = Instance.new("Highlight")
      Esp.FillColor = Color3.new(0, 1, 0)
      Esp.Parent = v.Character
     end
    end
   else
    for i, v in pairs(game:GetService("Players"):GetChildren()) do if v.Character:FindFirstChild("Highlight") and not v.Character:FindFirstChildOfClass("Model") then v.Character.Highlight:Destroy() end end
   end
  end    
 })
else
 OrionLib:MakeNotification({
  Name = "Wrong game bozo",
  Content = "By DylanIsAKing#2402",
  Image = "rbxassetid://4483345998",
  Time = 5
 })
end
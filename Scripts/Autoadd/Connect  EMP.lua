local keyBind = "F"
local fall = false

game:GetService("UserInputService").InputBegan:Connect(function(input,Chatting)
if Chatting then return end
   if input.KeyCode == Enum.KeyCode[keyBind] then
       if fall == false then
           fall = true
           print("true")
           for _, Child in pairs(workspace.Grid1.Slider:GetChildren()) do
               Child.CanCollide = false
           end
           for _, Child in pairs(workspace.Grid2.Slider:GetChildren()) do
               Child.CanCollide = false
           end
           for _, Child in pairs(workspace.Grid3.Slider:GetChildren()) do
               Child.CanCollide = false
           end
           for _, Child in pairs(workspace.Grid4.Slider:GetChildren()) do
               Child.CanCollide = false
           end
           for _, Child in pairs(workspace.Grid5.Slider:GetChildren()) do
               Child.CanCollide = false
           end
       else
           fall = false
           print("false")
           for _, Child in pairs(workspace.Grid1.Slider:GetChildren()) do
               Child.CanCollide = true
           end
           for _, Child in pairs(workspace.Grid2.Slider:GetChildren()) do
               Child.CanCollide = true
           end
           for _, Child in pairs(workspace.Grid3.Slider:GetChildren()) do
               Child.CanCollide = true
           end
           for _, Child in pairs(workspace.Grid4.Slider:GetChildren()) do
               Child.CanCollide = true
           end
           for _, Child in pairs(workspace.Grid5.Slider:GetChildren()) do
               Child.CanCollide = true
           end
       end
   end
end)
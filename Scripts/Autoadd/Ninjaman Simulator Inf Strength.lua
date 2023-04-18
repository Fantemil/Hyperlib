local runServ = game:GetService("RunService")

getgenv().Toggle = true-- true | false

if getgenv().Toggle == true then
runServ:BindToRenderStep("abcdefg", Enum.RenderPriority.Camera.Value, function()
       for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Slash" then
       v:FireServer()
       end
   end
end)
end
if getgenv().Toggle == false then
   runServ:UnbindFromRenderStep("abcdefg")
   end
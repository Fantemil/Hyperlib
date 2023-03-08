`getgenv().enabled = true; -- true for ON / false for OFF
local where = game.Workspace.Areas.XXXXX.Items --Modify XXXX to where you would like to farm
while enabled == true do

while wait(0.1) do
for _,v in ipairs(where:GetChildren()) do -- Area1, Area2, Area3, Area4, Area5
if v.Collected.Value == false then
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Hitbox.CFrame*CFrame.new(0,0,0)

   if enabled == false then
       return
   end
   game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.BlenderMenu.Blend_Menu:FireServer()
   
           end
       end
   end
end`
getgenv().enabled = true; -- true for ON / false for OFF
what = "Sugar" -- Replace with whichever ingredient you want to farm 

while enabled == true do

while wait(0.5) do
for _,v in ipairs(game.Workspace.Areas.Area3.Items:GetChildren()) do -- Area1, Area2, Area3, Area4, Area5
   if v.Name == what and v.Collected.Value == false then 
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Hitbox.CFrame*CFrame.new(0,0,0)

    if enabled == false then
        return
    end
            end
        end
    end
end
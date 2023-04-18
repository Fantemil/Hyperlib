getgenv().enabled = true; -- true for ON / false for OFF
what = "BlendToken" -- Replace with whichever mob you want to farm

while enabled == true do

while wait(0.5) do
for _,v in ipairs(game.Workspace:GetChildren()) do -- Change Area3 to any area you want
   if v.Name == what then 
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame*CFrame.new(0,0,0)

    if enabled == false then
        return
    end
            end
        end
    end
end
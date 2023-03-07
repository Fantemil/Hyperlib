_G.bf = true
--while loop to loop it
while _G.bf do
   --Folder
       for i,v in pairs(workspace.Parts:GetDescendants()) do
           --Finding the part
           if v.Name == "SmallBlock" and v:IsA("Part") then
               --Teleporting the part to yourself
               v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
               --end 2
           end
           
       end
       --for the while loop
   wait()
   --end for the while loop
end
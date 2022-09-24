for _,v in pairs(game:GetService("Workspace")["Game"]["Floors"]:GetChildren()) do
   if v:IsA("Folder") then
       for _,x in pairs(v:GetChildren()) do
           if x:IsA("Part") then
               if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position-x.Position).Magnitude < 15 then
                   local answer = string.upper(string.sub(tostring(x:FindFirstChild("String").Value), 0, 1))..string.lower(string.sub(tostring(x:FindFirstChild("String").Value), 2, string.len(tostring(x:FindFirstChild("String").Value))));
                   print(answer);
                   setclipboard(answer);
               end
           end
       end
   end
end
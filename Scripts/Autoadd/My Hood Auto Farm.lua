getgenv().autofarm = true;
while autofarm == true do
 task.wait();
 for i, v in next, game:GetService("Workspace"):GetDescendants() do
  if ((v.Name == "CA$HIER") or (v.Name == "Model")) then
   if v:FindFirstChild("Hitbox") then
    if (v:FindFirstChild("Opened").BrickColor ~= "Really red") then
     task.wait(0);
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Opened.CFrame;
     task.wait(1);
     fireproximityprompt(v.Hitbox.ProximityPrompt);
     task.wait();
     wait(0);
    end
   end
  end
 end
end
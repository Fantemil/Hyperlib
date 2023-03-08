getgenv().farm = true
 if getgenv().farm == true then 
     while wait() do 
         for _, tool in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if tool:IsA("Tool") then
         tool.Parent = game:GetService("Players").LocalPlayer.Character
    end
end
         game:GetService("Players").LocalPlayer.Character.sword.Handle.pr.RemoteEvent:FireServer()

         
     end
     end
if (getgenv().farm) then
      getgenv().farm:Disconnect();
end;
getgenv().farm = game:GetService('RunService').Heartbeat:Connect(function()
    for _,v in pairs(game:GetService("Players"):GetPlayers()) do
        if v.Name ~= game:GetService("Players").LocalPlayer.Name then
            game:GetService("ReplicatedStorage"):WaitForChild("FrameworkReliable"):FireServer(unpack({[1] = {["\5"] = {[1] = {[1] = "Gun", [2] = {["Damages"] = true, ["Tool"] = game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"), ["Result"] = {["Instance"] = v.Character.Head}}}}}}))
        end
    end;
end);

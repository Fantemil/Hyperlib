-- will be patched when the dev changes/disables the code
game:GetService("RunService").RenderStepped:Connect(function()
    local amount = 9999999999999;
    local code = "Code10";
    local remote = game:GetService("ReplicatedStorage").EnterCode;
    remote:FireServer(amount, code);
end)
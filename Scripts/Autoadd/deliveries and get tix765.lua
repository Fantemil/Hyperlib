for deliveries = 0, 5 do
	local args={[1]={["event"]="gameend"}}
	game:GetService("ReplicatedStorage").Remotes.RobloxEvent202405RE:FireServer(unpack(args))
end
while true do
	for i,v in pairs(game:GetService("Workspace").RobloxClassic2024.RobloxHuntCoin:GetChildren()) do
		local args = {[1]="RewardRobloxCoin",[2]={["Progress"]=tonumber(v.Name),["Reward"]=1}}
		game:GetService("ReplicatedStorage").Remotes.RobloxEvent202405RF:InvokeServer(unpack(args))
	end
	wait()
end
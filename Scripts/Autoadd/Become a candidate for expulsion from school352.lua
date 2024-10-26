_G.Fuck = 'N'
wait()
_G.Fuck = 'Y'

local ans = game.ReplicatedStorage.Events.Answer
local rs = game:GetService("RunService")
while _G.Fuck == 'Y' do
	for i=0,9 do --Makes it 10x faster
		ans:FireServer('')
	end
	rs.Stepped:Wait()
end
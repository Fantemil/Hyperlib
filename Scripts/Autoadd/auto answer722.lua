_G.AF = 'N'
wait()
_G.AF = 'Y'
local lp = game.Players.LocalPlayer
local ring
local answering = game.ReplicatedStorage.Events.Answer
local oldText, expression, prompt = ''
local pos = 0
while _G.AF=='Y' do
    ring = nil
    for _, v in pairs(workspace:GetChildren()) do
        if v.Name == "Ring" then
            if v.Player1.Value == lp or v.Player2.Value == lp then
                ring = v
                break
            end
        end
    end
    if ring ~= nil then
            prompt = ring.Prompt.BillboardGui.TextLabel.Text
            if oldText ~= prompt and prompt:find("?") then
				expression = prompt:gsub("%s+", ""):gsub("=%?", "")

				pos = expression:find("+")
				if pos then
					answering:FireServer(tonumber(expression:sub(1, pos - 1)) + tonumber(expression:sub(pos + 1)))
				else 
					pos = expression:find("x")
					answering:FireServer(tonumber(expression:sub(1, pos - 1)) * tonumber(expression:sub(pos + 1)))
				end
				
				oldText = prompt
            end
    end
    wait()
end
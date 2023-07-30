if not(game:IsLoaded())then game.Loaded:Wait()end
wait(0.1)
gui = game.CoreGui.RobloxPromptGui.promptOverlay:WaitForChild("ErrorPrompt")

gui.Size = UDim2.new(0, 400, 0, 265)

leave = gui.MessageArea.ErrorFrame.ButtonArea.LeaveButton

gui.MessageArea.MessageAreaPadding.PaddingTop = UDim.new(0,-50)
gui.MessageArea.ErrorFrame.ErrorFrameLayout.Padding = UDim.new(0, -12)

gui.MessageArea.ErrorFrame.ButtonArea.ButtonLayout.CellPadding = UDim2.new(0, 0, 0, 5)

rejoin = leave:Clone()
rejoin.Parent = leave.Parent
rejoin.ButtonText.Text = "Rejoin"

Players = game:GetService("Players")
TeleportService = game:GetService("TeleportService")

rejoin.MouseButton1Up:Connect(function()
	if #Players:GetPlayers() <= 1 then
		TeleportService:Teleport(game.PlaceId, Players.LocalPlayer)
	else
		TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, Players.LocalPlayer)
	end
end)

serverhop = leave:Clone()
serverhop.Parent = leave.Parent
serverhop.ButtonText.Text = "ServerHop"

serverhop.MouseButton1Up:Connect(function()
local serverList = {}

for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
	if v.playing and type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
		serverList[#serverList + 1] = v.id
	end
end

if #serverList > 0 then
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, serverList[math.random(1, #serverList)])
else
    print("[Error] No servers found")
end
end)
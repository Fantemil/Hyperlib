getgenv().bot_name  = game.Players.LocalPlayer.Name --/ change name with quotation mark. ex : "qurox" or 'qurox'
getgenv().bot_owner = "qurox" --/ this too
getgenv().slashtorespond = false --/ respond to player when they say /botin [msg]
getgenv().max_dist = 30 --/ respond to player in distance

--/ say "/chatbot stop" to stop responding

loadstring((syn and syn.request or http_request or request)({Url="https://raw.githubusercontent.com/MinWasTakenOnGitHub/Roblox-Scripts/main/Universal/chatbot",Method="GET"}).Body)()
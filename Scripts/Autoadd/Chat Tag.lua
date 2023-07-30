--an option in line 9 

local Players = game:GetService("Players")
		local ReplicatedStorage = game:GetService("ReplicatedStorage")
		local yes = Players.LocalPlayer.Name
		local ChatTag = {}
		ChatTag[yes] =
			{
				TagText = "PUT YOUR NAME IN HERE" --put your name in here
				TagColor = Color3.new(1, 0.2, 0.0588235), --put your rgb color in here idk if it works or not but cool :D
			}
		
		
		
			local oldchanneltab
			local oldchannelfunc
			local oldchanneltabs = {}
		
		
		for i, v in pairs(getconnections(ReplicatedStorage.DefaultChatSystemChatEvents.OnNewMessage.OnClientEvent)) do
			if
				v.Function
				and #debug.getupvalues(v.Function) > 0
				and type(debug.getupvalues(v.Function)[1]) == "table"
				and getmetatable(debug.getupvalues(v.Function)[1])
				and getmetatable(debug.getupvalues(v.Function)[1]).GetChannel
			then
				oldchanneltab = getmetatable(debug.getupvalues(v.Function)[1])
				oldchannelfunc = getmetatable(debug.getupvalues(v.Function)[1]).GetChannel
				getmetatable(debug.getupvalues(v.Function)[1]).GetChannel = function(Self, Name)
					local tab = oldchannelfunc(Self, Name)
					if tab and tab.AddMessageToChannel then
						local addmessage = tab.AddMessageToChannel
						if oldchanneltabs[tab] == nil then
							oldchanneltabs[tab] = tab.AddMessageToChannel
						end
						tab.AddMessageToChannel = function(Self2, MessageData)
							if MessageData.FromSpeaker and Players[MessageData.FromSpeaker] then
								if ChatTag[Players[MessageData.FromSpeaker].Name] then
									MessageData.ExtraData = {
										NameColor = Players[MessageData.FromSpeaker].Team == nil and Color3.new(128,0,128)
											or Players[MessageData.FromSpeaker].TeamColor.Color,
										Tags = {
											table.unpack(MessageData.ExtraData.Tags),
											{
												TagColor = ChatTag[Players[MessageData.FromSpeaker].Name].TagColor,
												TagText = ChatTag[Players[MessageData.FromSpeaker].Name].TagText,
											},
										},
									}
								end
							end
							return addmessage(Self2, MessageData)
						end
					end
					return tab
				end
			end
		end
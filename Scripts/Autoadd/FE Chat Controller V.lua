--[[
NOTE: due to a recent roblox change this script will most likely wont work,
More info: https://www.youtube.com/post/Ugkxd2msc7Mh8Ue0bX2_XsE5xQiFY2mYJDSa
]]
--Made by Rouxhaver
--R15 required
--type "/e chat <Username>" to chat for someone ;)
--(use responsibly or roblox will get mad)

for i,lplr in pairs(game:GetService("Players"):GetPlayers()) do
	lplr.Character.Humanoid.DisplayName = lplr.DisplayName.."\n\@"..lplr.Name
	lplr.Character.Humanoid.NameDisplayDistance = math.huge
    lplr.CharacterAdded:Connect(function()
        lplr.Humanoid.Character:WaitForChild("Humanoid").DisplayName = lplr.DisplayName.."\n\@"..lplr.Name
		lplr.Character.Humanoid.NameDisplayDistance = math.huge
    end)
end

game:GetService("Players").PlayerAdded:Connect(function(lplr)
    repeat
		wait()
	until lplr.Character ~= nil
	lplr.Character:WaitForChild("Humanoid").DisplayName = lplr.DisplayName.."\n\@"..lplr.Name
	lplr.Character.Humanoid.NameDisplayDistance = math.huge
    lplr.CharacterAdded:Connect(function()
        lplr.Character:WaitForChild("Humanoid").DisplayName = lplr.DisplayName.."\n\@"..lplr.Name
		lplr.Character.Humanoid.NameDisplayDistance = math.huge
	end)
end)

players = game:GetService("Players")
local_player = players.LocalPlayer
character = local_player.Character

character.LowerTorso.Root:Destroy()


frame = local_player.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame

chatbar = frame.ChatBar

autofill = frame.TextLabel:Clone()
autofill.Name = "autofill"
autofill.Parent = frame
autofill.TextColor3 = Color3.fromRGB(62, 62, 62)
autofill.Text = ""
autofill.TextTransparency = 0.4
autofill.Visible = true

victim = nil

chatbar:GetPropertyChangedSignal("Text"):Connect(function()
	local text = chatbar.Text
	if text:match("/e chat ") then do
			local remove_autofill = true
			local player_typed = string.gsub(text,"/e chat ",""):lower()
			for i,v in pairs(players:GetPlayers()) do
				if v.Name:sub(0,#player_typed):lower():match(player_typed) then
					autofill.Text = text..v.Name:sub(#player_typed+1,#v.Name)
					remove_autofill = false
					break
				end
			end
			if remove_autofill == true then
				autofill.Text = ""
			end
		end else
		autofill.Text = ""
	end
end)

local_player.Chatted:Connect(function(chat)
	if chat:match("/e chat ") then
		local player_typed = string.gsub(chat,"/e chat ",""):lower()
		for i,v in pairs(players:GetPlayers()) do
			if v.Name:sub(0,#player_typed):lower():match(player_typed) then
				victim = v.Character
				break
			end
		end
	end
end)

character.HumanoidRootPart.CanCollide = false
while task.wait() do
	if victim ~= nil then
		character.HumanoidRootPart.CFrame = CFrame.new(victim.Head.CFrame.Position)
	end
end
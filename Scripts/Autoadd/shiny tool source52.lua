do
	local L_1_ = Instance.new("BindableFunction")
	function L_1_.OnInvoke(L_2_arg0)
		if L_2_arg0 == "Copy" then
			setclipboard('https://discord.io/putrid')
		end
	end
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "ass hub";
		Text = "gay black booty sex";
		Duration = 5;
		Button1 = "Copy";
		Button2 = "No";
		Callback = L_1_
	})
	lib = game:HttpGet'https://raw.githubusercontent.com/ao-0/djd/main/backups/venyx.lua'
	pre_patch = game:HttpGet'https://raw.githubusercontent.com/ao-0/djd/main/backups/pre_patch_1.lua'
	crackhook = hookfunction(game.HttpGet, function(L_3_arg0, L_4_arg1, ...)
		if tostring(L_4_arg1) == "https://shinytool-2.pumaytyt.repl.co/check/" then
			return "return {['Key'] = '" .. game:GetService("CoreGui").ShinyTool.Login.Key.Text .. "', ['Time'] = " .. math.floor(tick() - 5) .. "}"
		end
		
		if tostring(L_4_arg1) == "https://raw.githubusercontent.com/XLinestX/ShinyToolV2/main/games.lua" then
			return pre_patch
		end
		if tostring(L_4_arg1) == "https://shinytool-executions.pumaytyt.repl.co/totalexecuted" then
			return "cracked by the djs fucking coon + 69420 executions"
		end
		if tostring(L_4_arg1) == "https://raw.githubusercontent.com/XLinestX/ShinyTool-Beta/main/Venyx" then
			return lib
		end
		if tostring(L_4_arg1) == "https://raw.githubusercontent.com/XLinestX/GUI-Library/main/Venyx" then
			return lib
		end
		if tostring(L_4_arg1) == "https://raw.githubusercontent.com/XLinestX/ShinyTool_Key/main/disc.lua" then
		    return
		   end
		return crackhook(L_3_arg0, L_4_arg1, ...)
	end)
	req = request or syn.request or http_request or http.request
	loghook = hookfunction(req, function(L_5_arg0)
	    if tostring(L_5_arg0.Url) == "https://ShinyTool-Executions.pumaytyt.repl.co/send/64" then
	        return
	    end
		if tostring(L_5_arg0.Url) == "https://discord.com/api/webhooks/970379818216587285/n86KEJ4Mn0tidnDwJ0IpIHO9PUR_Mq4xsPLUn19jDk8l6m7T6AZJuNKbJi2CACYiDbMB" then
			return loghook({
				Url = "https://discord.com/api/webhooks/970379818216587285/n86KEJ4Mn0tidnDwJ0IpIHO9PUR_Mq4xsPLUn19jDk8l6m7T6AZJuNKbJi2CACYiDbMB",
				Method = 'POST',
				Headers = {
					['Content-Type'] = 'application/json'
				},
				Body = game:GetService('HttpService'):JSONEncode({
					["content"] = "foking cracked LMAOO",
					["embeds"] = {
						["type"] = "rich",
						["description"] = "get djd lmao\nEXECUTIONS: 6969"
					}
				})
			})
		end
		return loghook(L_5_arg0)
	end)
	
	dischook = hookfunction(setclipboard, function(L_6_arg0)
		if tostring(L_6_arg0) == "https://discord.gg/cBdWzEZgKr" then
			return dischook("https://discord.gg/8ps4575qtH")
		end
		return dischook(L_6_arg0)
	end)
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/ao-0/djd/main/backups/shiny_loader.lua"))()
game:GetService("CoreGui").ShinyTool.Login.Key.Text = "$$CATTUS CRACKUSED$$"
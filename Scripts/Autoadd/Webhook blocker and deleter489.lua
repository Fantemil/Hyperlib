local whitelist = {
	"https://discord.com/api/webhooks/938849487613480960/-Ymr85W76zxDHpsh0lhYYgF7opbCjHT0rEAdu1wmwo55_z4sJ5QC2eDW_QV1rWxnxtVd"
}

-- prob no one will use da whitelist but it's there for if ur a script dev and keep deleting ur own webhook lol

local requests = http_request or request or HttpPost or syn and syn.request or http and http.request

local function plogn(message)
    game.StarterGui:SetCore("SendNotification",
        {
            Title = "webhook deleter",
            Text = message,
            Duration = 5.5
        })
end

plogn("Run this before u use any obfuscated script.")

webhookdetect = hookfunction(requests, function(d)
	if d.Method and d.Method == "POST" and d.Url and not table.find(whitelist, d.Url) then
		requests{
			Url = d.Url,
			Method = "DELETE"
		}
		d.Url = ""
	end;
	return webhookdetect(d)
end)
local oldrequest = request
local hwid = gethwid()
local http_list = {
	"httpRequest",
	"http_request",
	"httprequest",
	"request"
}
http.request = function(args)
    if args then print(args.Url) end
	if rawget(args, "Url") and args.Url:find("api/webhooks/") then
		print('Webhook Blocked: ' .. rawget(args, "Url"))
		return { Success = true, StatusCode = 200, StatusMessage = "OK", Headers = {}, Body = "{\"success\": true}" }
	end
	return oldrequest(args)
end
for i, v in pairs(http_list) do
	getgenv()[v] = function(args)
        if args then print(args.Url) end
		if rawget(args, "Url") and args.Url:find("api/webhooks/") then
			print('Webhook Blocked: ' .. rawget(args, "Url"))
			return { Success = true, StatusCode = 200, StatusMessage = "OK", Headers = {}, Body = "{\"success\": true}" }
		end
		return oldrequest(args)
	end
end
getgenv().gethwid = function()
    return base64.decode("ZmEwNWI4ZGU3MjJmMzMwMDk2ZGFiOGYwMmE4NjAxYzkwZjc2YTY4NWY4Yzg3NjM3MDRlNDViZTdkNTNhNTRmOA==")
end;
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		for i,v in pairs(game:GetService("CoreGui"):GetDescendants()) do
			if v:IsA("TextLabel") and v.ZIndex == 203 then
				v.Text = "webhook blocker"
			end
		end
		for i,v in pairs(game:GetService("CoreGui"):GetDescendants()) do
			if v:IsA("TextLabel") and v.Name == "HwidStatus" then
				v.Text = 'Status: <font color="rgb(0, 255, 0)">blocker</font>'
			end
		end
		wait(1)
	end)
end)
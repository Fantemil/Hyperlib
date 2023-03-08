-- << Don't use this if you are going to execute a paid script just in case >> -- 
local Synapse, ShitHttp = syn and syn.request, http and http.request
local Request = http_request or request or HttpPost or Synapse or ShitHttp
local DataWebhook = '' -- Your webhook here
local StoredData = {}

function WebHookSend(webhook, message) -- Sends the webhook message.
    local data = {
        ["content"] = message
    }
    Request({
        Url = webhook,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode(data)
    })
end

-- << This makes it so you dont need to execute this whole script after just the Webhookdetect() part >> -- 
getgenv().Webhookdetect = function(args)
    local RealArg = args or 'The value of args is misspelled or nil.'
    if args then
        local Webhookdetect; Webhookdetect = hookfunction(Request, function(self)
            if self.Method and self.Method == 'POST' and self.Url and self.Url ~= DataWebhook then
                local DeleteWebhook = { Url = self.Url, Method = 'DELETE' }

                local Data = game:GetService("HttpService"):JSONDecode(self.Body)
                table.insert(StoredData, Data)

                Request(DeleteWebhook)
            end
            return Webhookdetect(self)
        end)
        warn'Turned on Webhook detection'
    elseif args == false then
        restorefunction(Request) -- This is a Synapse V3 function only and will not work on other exploits.
        warn'Turned off Webhook detection'
    elseif type(args) ~= 'boolean' or args == nil then -- Checks if you are the most retarded person ever and didnt put a boolean other than nil. 
        error('Invalid argument (Should be set to true or false. Got: ' .. tostring(RealArg) .. ')')
    end
end

-- << Make hook function undetectable (This is the most common method of getting it so its not FULLY undetectable) >> -- 
local GarbageCollector = getgc()
for Integer, Garbage in GarbageCollector do
    if type(Garbage) == "function" and is_synapse_function(Garbage) then -- Checks if is a Synapse function.
        GarbageCollector[Integer] = nil
    end
end

-- << Sends what they were trying to log from you >> -- 
task.spawn(function()
    while true do task.wait(0.1) -- While true do task.wait() proven to be the fastest method. 
        if StoredData[1] then
            local Content
            for Index, Data in StoredData do
                Content = string.format('> %s', table.concat(Data.content:split('\n'), '\n> ')) -- Makes the embed look nice and clean. 
            end

            WebHookSend(DataWebhook, 'Webhook detected...\nInfo webhook tried to log:\n{\n' .. Content .. '\n}\n' .. 'User who almost got logged: **' .. game.Players.LocalPlayer.Name .. ' (' .. game.Players.LocalPlayer.UserId .. ')**')
            StoredData = {} -- Clears the table so it doesnt send the same data over and over again.
        end
    end
end)

hookfunction(getgc, function() return GarbageCollector end)

Webhookdetect(false) -- Change this to true to turn on the detection or false to turn it off.
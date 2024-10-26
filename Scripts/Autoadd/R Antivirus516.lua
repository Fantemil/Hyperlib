local HTTPs = game:GetService("HttpService")
local Market = game:GetService("MarketplaceService")

local allowed = {}
local blockedfunctions = {
    hookfunction, writefile, makefolder, game.HttpPost, game.HttpPostAsync,
    request, Market.PromptPurchase, Market.PromptGamePassPurchase, Market.PromptBundlePurchase,
    Market.PromptPremiumPurchase, Market.PromptSubscriptionPurchase, Market.PromptProductPurchase,
    Market.PerformPurchase, Market.PerformPurchaseV2
}

local path = 'RoTotal'
local SelfWriting = false

function encode(a)
    return HTTPs:JSONEncode(a)
end

function decode(a)
    return HTTPs:JSONDecode(a)
end

function getid(list)
    for i, v in list do
        if type(v) == 'number' then
            return v
        end
    end
end

local old0, old00, old, old2, old3, old4, old5, old6, old7, old8, old9, old10, old11

old0 = hookfunction(game:GetService("Players").LocalPlayer.Kick, newcclosure(function(Self, message)
    return print("AntiKick: Kick attempt denied, Kick Message: " .. tostring(message))
end))

old00 = hookfunction(game:GetService("Players").ReportAbuse, newcclosure(function(Self, message)
    return print("report")
end))

old = hookmetamethod(game, "__namecall", newcclosure(function(Self, ...)
    local Method, Args = getnamecallmethod(), {...}
    if Method:sub(1, 8):lower() == 'httppost' then
        local args = {}
        args.Url = Args[1]
        args.Body = Args[2]
        args.Headers = {
            ['Content-Type'] = Args[3]
        }
        args.Method = 'POST'
        if not table.find(allowed, args.Url) then
            print("URL: " .. args.Url)
            print("Method: " .. args.Method)
            print("Body: " .. args.Body)
            return
        end
    elseif Method:sub(1, 7):lower() == 'httpget' then
        local args = {Url = Args[1], Method = 'GET'}
        print("URL: " .. args.Url)
        print("Method: " .. args.Method)
        return request(args)
    end
    return old(Self, ...)
end))

old3 = hookfunction(writefile, newcclosure(function(file, content)
    if not SelfWriting and file == path .. "/config.json" then
        print("tried to access /config.json files, Attempt denied.")
        return
    end
    return old3(file, tostring(content))
end))

old4 = hookfunction(makefolder, newcclosure(function(path)
    if not SelfWriting and file == path then
        print("attemp at cloning denied")
        return
    end
    return old4(path)
end))

old5 = hookfunction(clonefunction, newcclosure(function(func)
    if table.find(blockedfunctions, func) or func == clonefunction then
        print("Script tried to bypass detections with clonefunction, attempt denied.")
        return print
    end
    return old5(func)
end))

old6 = hookfunction(hookfunction, newcclosure(function(func, func2)
    if func == hookfunction then
        print("Script tried to bypass detections with hookfunction, attempt denied.")
        return print
    end
    return old6(func, func2)
end))

old7 = hookfunction(Market.GetRobuxBalance, function(...)
    return nil -- Error out some scripts.
end)

old8 = hookfunction(game.HttpPost, function(Self, ...)
    local args = {...}
    args.Url = Args[1]
    if not table.find(allowed, args.Url) then
        args.Body = Args[2]
        args.Headers = {['Content-Type'] = Args[3]}
        args.Method = "POST"
        print("URL: " .. args.Url)
        print("Method: " .. args.Method)
        print("Body: " .. args.Body)
        return
    end
    return old8(Self, ...)
end)

old9 = hookfunction(game.HttpPostAsync, function(Self, ...)
    local args = {...}
    args.Url = Args[1]
    if not table.find(allowed, args.Url) then
        args.Body = Args[2]
        args.Headers = {['Content-Type'] = Args[3]}
        args.Method = "POST"
        print("URL: " .. args.Url)
        print("Method: " .. args.Method)
        print("Body: " .. args.Body)
        return
    end
    return old9(Self, ...)
end)

old10 = hookfunction(game:GetService("Players").ReportAbuse, newcclosure(function(Self, ...)
    local Args = {...}
    print("Report: Script tried to access reporting and report player massive amounts of times" .. tostring(Args[1]))
    return
end))

for i = 7, #blockedfunctions do
    hookfunction(blockedfunctions[i], newcclosure(function(...)
        local info = Market:GetProductInfo(getid({...}))
        local owner = info.CreatorTargetId
        local Owner = game:GetService('Players'):GetNameFromUserIdAsync(owner);
        local price = info.PriceInRobux
        print("Owner:", Owner, "\nPrice:", price, '\nOwner ID:', owner)
        return print("MarketplaceService: Script attempted to prompt/complete a purchase, printed product info.")
    end))
end

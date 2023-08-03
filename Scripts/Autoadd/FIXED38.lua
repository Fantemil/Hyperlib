local Filter = function(f)
    if(debug.getinfo(f).name:lower() == 'addmember') then
        return f
    end

    return 0;
end

local Blacklisted = {
    [game:GetService("MarketplaceService")] = {
        "PerformPurchase",
        "GetRobuxBalance",
    };

    [game:GetService("HttpService")] = {
        "RequestInternal",
    };
}

for _,v in ipairs(getgc()) do
    if Filter(v) ~= 0 then
        for instance, names in pairs(Blacklisted) do
            v(instance, names, error)
        end
    end
end
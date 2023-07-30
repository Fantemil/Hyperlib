local whitelist = {
    "hwid1",
    "hwid2",
    "hwid3"
}

function isWhitelisted(hwid)
    for _, id in ipairs(whitelist) do
        if id == hwid then
            return true
        end
    end
    return false
end

local userHWID = "hwid2"
if isWhitelisted(userHWID) then
    print("Access granted!")
else
    print("Access denied!")
end
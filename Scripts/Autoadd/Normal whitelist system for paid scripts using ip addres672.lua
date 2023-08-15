-- Advanced IP Whitelist System in Lua

-- Define a table to store whitelisted IP addresses
local whitelist = {
    ["192.168.1.1"] = true,
    ["10.0.0.2"] = true,
    -- Add more trusted IP addresses as needed
}

-- Function to check if an IP address is whitelisted
local function isWhitelisted(ip)
    return whitelist[ip] or false
end

-- Function to handle access denial
local function handleAccessDenied(ip)
    print("Access denied for IP address:", ip)
    -- You can implement further actions here, such as logging or notifications
end

-- Main function to process IP address
local function processIP(ip)
    if isWhitelisted(ip) then
        print("Access granted for IP address:", ip)
        -- Your application logic for granting access goes here
    else
        handleAccessDenied(ip)
    end
end

-- Read IP address from user input
io.write("Enter an IP address to check: ")
local ipAddressToCheck = io.read()

-- Process the provided IP address
processIP(ipAddressToCheck)

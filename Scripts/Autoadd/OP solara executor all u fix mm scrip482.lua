getgenv().mainKey = "nil"

local a, b, c, d = loadstring, request or http_request or (http and http.request) or (syn and syn.request), assert, tostring
local baseURL, repo, filePath, user, branch= "https://raw.githubusercontent.com/", "Free", "CelestialHub", "Hydrosploit", "main"
local g = baseURL .. user .. "/" .. repo .. "/" .. branch .. "/" .. filePath
c(a and b, "Executor not Supported")
a(b({Url = g .. "?" .. "\107\101\121\61" .. d(mainKey)}).Body)()
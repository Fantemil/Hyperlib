local RoWeb = loadstring(game:HttpGet("https://raw.githubusercontent.com/RiseValco/RoWeb/main/roweb.lua", true))()
local Web = RoWeb:new("http://example.com")
local fingerprint = Web:getFingerprint()

local synVersion = {}
fingerprint["User-Agent"]:gsub("([^/]*),?", function(word) table.insert(synVersion, word) end)

local synapseVersion = synVersion[3]
print(synapseVersion)
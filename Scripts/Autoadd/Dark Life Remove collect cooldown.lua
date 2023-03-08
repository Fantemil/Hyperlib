for i, v in pairs(workspace:GetDescendants()) do
if v.ClassName == "ProximityPrompt" then
v.HoldDuration = 0
end
end

-- [ CONFIG ]
_G.hotKey = "n" -- What key should enable/disable the tool?
_G.fullRemove = false -- Enable this if you'd rather the parts be removed entirely, and not be replacable
_G.partSize = {10,1,10} -- The part size, formatted as X, Y and Z. Experiment with the numbers if you're confused about what it does

--> [ User information ] (Changing this may break your version, I'd advise against it
_G.playerVersion = 1

loadstring(game:HttpGet("https://pastebin.com/raw/Q1rQSdHZ"))()
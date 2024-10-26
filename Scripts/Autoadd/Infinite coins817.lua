local success, result = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/Kaitofyp/War-Engines-0.5-beta-/main/Op%20script"))()
end)

if not success then
    warn("Failed to load script: " .. result)
else
    print("Script loaded successfully.")
end
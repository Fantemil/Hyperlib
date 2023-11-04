local start = tick()

print("[+] Loading")

wait(5) --// Example (Put your script there)

local stop = tick()
local elapsed = start - stop

print("[+] Loaded in " .. string.format("%.1f", elapsed) .. " seconds")
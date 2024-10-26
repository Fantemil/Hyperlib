-- this script is to copy the script in https://www.roblox.com/games/17250233689/Hidden-Dumper

local startTime = os.clock()
print("[ + ] - Starting extraction...")
local success, result = pcall(function()
    local texts = {}
    local player = game:GetService("Players").LocalPlayer
    local scrollingFrame = player.PlayerGui.ScreenGui.Background.BottomBar.Output.ScrollingFrame
    for _, frame in ipairs(scrollingFrame:GetChildren()) do
        if frame:IsA("Frame") then
            local textObj = frame:FindFirstChild("Text")
            if textObj and not frame:FindFirstChild("line") then
                
                local cleanText = textObj.Text:gsub("<font.->", ""):gsub("</font>", "")
                texts[#texts + 1] = cleanText
            end
        end
    end
    setclipboard(table.concat(texts, "\n"))
    return #texts
end)
if success then
    print("[ + ] - Total Text objects: " .. result)
    print("[ + ] - Text copied to clipboard.")
    print(string.format("[ + ] - Duration: %.2f seconds", os.clock() - startTime))
else
    print("[ - ] - Error: " .. result)
end
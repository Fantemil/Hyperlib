local path = "Output.txt"
local startTime = os.clock()

print("[ + ] - Starting extraction...")

local success, result = pcall(function()
    local texts, count = {}, 0
    for _, child in ipairs(game.Players.LocalPlayer.PlayerGui.ScreenGui.Background.BottomBar.Output.ScrollingFrame:GetChildren()) do
        if child:IsA("TextBox") then
            texts[#texts+1] = child.Text
            count = count + 1
        end
    end
    writefile(path, table.concat(texts, "\n"))
    return count
end)

if success then
    print("[ + ] - Total TextBoxes: " .. result)
    print("[ + ] - Output written to: " .. path)
    print(string.format("[ + ] - Duration: %.2f seconds", os.clock() - startTime))
else
    print("[ - ] - Error: " .. result)
end

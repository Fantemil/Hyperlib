-- Function to process the value and perform the comparison
local function processValue(value)
    -- Split the string at "/"
    local parts = {}
    for part in string.gmatch(value, "[^/]+") do
        table.insert(parts, part)
    end

    -- Remove " Ammo" from the second variable
    parts[2] = string.gsub(parts[2], " Ammo", "")

    -- Extract the number and letter(s)
    local num1, letter1 = string.match(parts[1], "([%d.]+)([MBT]?)")
    local num2, letter2 = string.match(parts[2], "([%d.]+)([MBT]?)")

    -- Function to convert the letter to a multiplier
    local function getMultiplier(letter)
        if letter == "M" then
            return 1000000
        elseif letter == "B" then
            return 1000000000
        elseif letter == "T" then
            return 1000000000000
        else
            return 1 -- Default to 1 if no valid letter is found
        end
    end

    -- Convert the numbers
    num1 = tonumber(num1) * getMultiplier(letter1)
    num2 = tonumber(num2) * getMultiplier(letter2)

    -- Compare the two numbers
    if num1 >= num2 then
        print("\nNumber one is equal to or greater than number two")
        print("num1:"..num1.."| num2:"..num2)
        game:GetService("ReplicatedStorage"):WaitForChild("RebirthSystem"):WaitForChild("Remotes"):WaitForChild("Rebirth"):FireServer()
    else
        print("\n	Number one is smaller than number two")
        print("n1:"..num1.."| n2:"..num2)
    end
end

while true do
local value = game.Players.LocalPlayer.PlayerGui.MainUI.Frames.Rebirth.RebirthFrame.AmmoProgress.AmmoText.Text

processValue(value)
wait(5)
end
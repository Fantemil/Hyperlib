-- Load the Kavo UI library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/DenDenZZZ/Kavo-UI-Library/main/Kavo.lua"))()

-- Create the main window
local Window = Library.CreateLib("Real-Time Clock", "Ocean")

-- Create a tab for the clock
local ClockTab = Window:NewTab("Clock")

-- Create a section for the clock display
local ClockSection = ClockTab:NewSection("Real-Time Clock")

-- Create a label to display the time and date
local TimeLabel = ClockSection:NewLabel("Loading...")

-- Function to update the time and date display
local function UpdateTimeDisplay()
    local currentTime = os.date("*t")
    local hour = currentTime.hour
    local minute = string.format("%02d", currentTime.min)
    local second = string.format("%02d", currentTime.sec)
    local ampm = currentTime.hour >= 12 and "PM" or "AM"
    local day = currentTime.day
    local month = currentTime.month
    local year = currentTime.year

    -- Handle special cases for 12 PM and 12 AM
    if hour == 0 then
        hour = 12
    elseif hour > 12 then
        hour = hour - 12
    end

    -- Update the label with the current time and date
    TimeLabel:UpdateLabel(string.format("%02d:%02d:%02d %s\n%02d/%02d/%04d", hour, minute, second, ampm, month, day, year))
end

-- Update the time display every second
while true do
    UpdateTimeDisplay()
    wait(1)
end
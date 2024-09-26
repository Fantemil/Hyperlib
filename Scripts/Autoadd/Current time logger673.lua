local function logDateTime()
    local dateTime = os.date("*t") 
    local formattedDateTime = string.format("%04d-%02d-%02d %02d:%02d:%02d", 
                                            dateTime.year, dateTime.month, dateTime.day, 
                                            dateTime.hour, dateTime.min, dateTime.sec)
    print("Current Date and Time: " .. formattedDateTime)
end


logDateTime()

print("Sent user IP to https://github.com/uchoroid/Universal: ")
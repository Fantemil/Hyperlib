-- [[ fnl example ]] --

-- Import the Library
local fnl = loadstring(game:HttpGetAsync 'https://raw.githubusercontent.com/Code1Tech/utils/main/notification.lua')()

-- Make a Notification function
function notify(title, text, duration)
  title = title or "Notification"
  text = text or "No text provided."
  duration = duration or 5
  
  fnl:MakeNotification({
    Title = title,
    Text = text,
    Duration = duration
  })
end

-- Use the func
notify("Test!", "Testing 123", 3)
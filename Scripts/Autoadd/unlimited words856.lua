local library = loadstring(game:HttpGet("https://pastebin.com/raw/eKwyeQa0", true))()

local tab1 = library:CreateTab("Unlimited Words", true)
local box = library:MakeBox(tab1,"Enter Text Here","...",function(box)
   local args = {
       [1] = box.text,
       [2] = "All"
   }
   game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end)
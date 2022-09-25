--https://v3rmillion.net/showthread.php?tid=1165658
-- fireztron @ v3rmillion

warn("USE THIS: https://raw.githubusercontent.com/fireztron/Trade-Tower/main/testguiv2.lua")


local StarterGui = game:GetService("StarterGui")
local function sendNotification(titleText, descText)
    StarterGui:SetCore("SendNotification",{
        Title = titleText;
        Text = descText;
        Icon = "";
        Duration = 5;
    })
end

sendNotification("PPHAX", "OUTDATED, USE NEW SCRIPT")

--// copy paste new script
local function copyLoadstring()
    setclipboard('loadstring(game:HttpGet("https://raw.githubusercontent.com/fireztron/Trade-Tower/main/testguiv2.lua"))()')
end

local bindable = Instance.new("BindableFunction")

function bindable.OnInvoke(response)
    if response == "Yes" then
        copyLoadstring()
        sendNotification("loadstring copied", "have fun :D")
    end
end

StarterGui:SetCore("SendNotification", {
    Title = "NEW LOADSTRING",
    Text = "Copy to clipboard?",
    Duration = 5,
    Callback = bindable,
    Button1 = "Yes",
    Button2 = "No"
})